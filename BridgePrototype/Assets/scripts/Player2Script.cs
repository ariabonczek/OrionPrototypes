using UnityEngine;
using System.Collections;

public class Player2Script : MonoBehaviour {
	
	public float speed;
	public float jumpheight;
	public float throwSpeed;
	public GameObject rockPrefab;
	public GameObject largeRockPrefab;

	private GameObject p1;
	private GameObject rock;
	private Vector3 respawnPosition;
	private float countdown;
	private bool hasRock;
	private bool climbing;
	private bool actionButton;
	private bool actionButtonPrev;
	private bool countRun;
	private bool launching = false;
	private bool airborne = false;
	private bool stepmode = false;
	private bool crouching = false;
	
	public bool Stepmode
	{
		get { return stepmode; }
	}

	public Vector3 RespawnPosition
	{
		set { respawnPosition = value; }
		get { return respawnPosition; }
	}

	// Use this for initialization
	void Start () {
		p1 = Camera.allCameras[0].GetComponent<CameraScript>().player1.gameObject;
		countRun = false;
		countdown = 50;
		hasRock = false;
		actionButton = false;
		actionButtonPrev = false;
		climbing = false;
	}
	
	// Update is called once per frame
	void Update () {
		if (climbing)
		{
			if (Input.GetKey(KeyCode.Keypad8))
				this.transform.Translate (Vector3.up * speed * Time.deltaTime);
			if (Input.GetKey(KeyCode.Keypad5))
			{
				this.transform.Translate (-Vector3.up * speed * Time.deltaTime);
			}
			this.transform.Translate (Vector3.up * -(Input.GetAxis("P2LeftStickY") * speed * Time.deltaTime));
		}
		else if(launching)
		{
			Launch ();
		}
		else
		{
			if (Input.GetKey (KeyCode.Keypad7))
			{
				this.transform.Rotate(new Vector3(0, -1, 0));
			}
			if (Input.GetKey (KeyCode.Keypad9))
			{
				this.transform.Rotate(new Vector3(0, 1, 0));
			}
			if (Input.GetKey(KeyCode.Keypad4))
				this.transform.Translate (Vector3.left * speed * Time.deltaTime);
			if (Input.GetKey(KeyCode.Keypad6))
				this.transform.Translate (Vector3.right * speed * Time.deltaTime);
			if (Input.GetKey(KeyCode.Keypad8))
				this.transform.Translate (Vector3.forward * speed * Time.deltaTime);
			if (Input.GetKey(KeyCode.Keypad5))
				this.transform.Translate (Vector3.back * speed * Time.deltaTime);
			if (Input.GetKey (KeyCode.Keypad1) || Input.GetButton("P2X"))
				actionButton = true;
			else
			{
				actionButton = false;
			}
			this.transform.Translate (Vector3.left * -(Input.GetAxis("P2LeftStickX") * speed * Time.deltaTime));
			this.transform.Translate (Vector3.forward * -(Input.GetAxis("P2LeftStickY") * speed * Time.deltaTime));

			if ((Input.GetKey (KeyCode.Keypad3) || Input.GetButton("P2X")) && airborne == false)
			{
				Jump();
			}
		}

		if (Input.GetKey (KeyCode.KeypadDivide)|| Input.GetButton("P2O"))
			actionButton = true;
		else
		{
			actionButton = false;
		}
		
		if (actionButton && !actionButtonPrev && hasRock) {
			Destroy(rock);
			Instantiate(rockPrefab,new Vector3(transform.position.x+transform.forward.x, .9f, transform.position.z+transform.forward.z),Quaternion.identity);
			hasRock=false;
			countRun=true;
		}
		
		if (countRun) {
			countdown--;
			if(countdown<0){
				countRun=false;
				countdown=50;
			}
		}
		actionButtonPrev = actionButton;

	}

	void Launch()
	{
		float time = speed * Time.deltaTime;
		GetComponent<Rigidbody> ().useGravity = false;
		transform.position = Vector3.Lerp (transform.position, new Vector3(transform.position.x, (transform.position.y + 3f), transform.position.z), time);
	}

	void Jump()
	{
		Rigidbody rig = GetComponent<Rigidbody>();
		rig.velocity += jumpheight * transform.up;
		airborne = true;
	}

	void Respawn(string message)
	{
		transform.position = respawnPosition;
	}

	void OnCollisionEnter(Collision col)
	{
		/*if (col.gameObject.tag == "Rock"&&hasRock==false)
		{
			col.gameObject.GetComponent<Renderer>().enabled=false;
			col.gameObject.GetComponent<Collider>().enabled=false;
			rock= col.gameObject;
			hasRock=true;
		}
		if (col.gameObject.tag == "Rope"&&hasRope==false)
		{
			DestroyImmediate(col.gameObject);
			hasRope=true;
		}*/

		if (col.gameObject.tag == "Ground")
		{
			airborne = false;
		}

		if (col.gameObject.tag == "Player" && p1.GetComponent<Player1Script>().Stepmode && actionButton)
        {
			launching = true;
        }
    }

	void OnCollisionStay(Collision col)
	{
		if (col.gameObject.name == "ladder" && actionButton)
		{
			climbing = true;
			transform.SetParent(col.gameObject.transform);
			GetComponent<Rigidbody>().useGravity = false;
		}
		else if(col.gameObject.tag == "Ground" && actionButton)
		{
			climbing = false;
			transform.parent = null;
			GetComponent<Rigidbody>().useGravity = true;
		}
	}
	
	void OnTriggerStay(Collider col)
	{
		if (col.gameObject.tag == "smallRock" && !hasRock && actionButton && !countRun)
		{
			Destroy(col.gameObject);
			rock = Instantiate(rockPrefab);
			rock.transform.position= transform.position+ (transform.forward)+(transform.up*1.5f);
			rock.transform.parent = transform;
			hasRock=true;
			rock.gameObject.GetComponent<Rigidbody> ().isKinematic = true;
		}

		if (col.gameObject.name == "top" && climbing)
		{
			climbing = false;
			GetComponent<Rigidbody>().useGravity = true;
			transform.parent = null;
		}

		if (col.gameObject.name.Contains("lTop") && launching)
		{
			launching = false;
			GetComponent<Rigidbody>().useGravity = true;
		}

		if(col.gameObject.name.Contains("Control Panel") && actionButton)
		{
			GameObject.Find(col.gameObject.name).SendMessage("ActivatePanel", "move");
		}

		if(col.gameObject.name.Contains("platform move") && actionButton && actionButtonPrev == false)
		{
			crouching = !crouching;
			
			if (crouching)
			{
				transform.parent = col.gameObject.transform;
			}
			else
			{
				transform.parent = null;
			}
		}

		/*if (col.gameObject.tag == "largeRock" && !hasRock && actionButton && !countRun)
		{
			largeRockPrefab.GetComponent<LargeRock>().PlayerTwo = true;
			
			if (largeRockPrefab.GetComponent<LargeRock>().PlayerTwo && largeRockPrefab.GetComponent<LargeRock>().PlayerOne)
			{
				Destroy(col.gameObject);
				rock = Instantiate(largeRockPrefab);
				rock.transform.position = Camera.allCameras[0].GetComponent<CameraScript>().Median + (transform.up*1.5f);
				rock.transform.parent = transform;
				hasRock=true;
			// 	rock.gameObject.GetComponent<Rigidbody> ().isKinematic = true;
			}
		}*/
		/*if (col.gameObject.tag == "Rope" && actionButton) {
			if(!col.gameObject.GetComponent<Rigidbody> ().isKinematic)
			{
				Destroy(col.gameObject);
				hasRope=true;
			} 
			col.gameObject.GetComponent<Rigidbody>().isKinematic=false;
		}
		if (col.gameObject.tag == "RopeRockStatue")
		{
			col.gameObject.transform.root.gameObject.transform.position = new Vector3(21.57066f, 1.42f , 18.97f);
			col.gameObject.transform.root.gameObject.transform.Rotate(new Vector3(90, 0 , 0));
			col.gameObject.GetComponent<BoxCollider>().enabled = false;
			Destroy(col.gameObject);
		}*/
	}
	
	/*void ThrowRock(){
		if (hasRope && hasRock) {
			ropeRock.transform.GetChild(0).transform.position=this.transform.position+this.transform.forward*3+new Vector3(0,.5f,0);
			ropeRock.transform.GetChild(0).GetComponent<Rigidbody>().velocity= new Vector3(0,0,0);
			ropeRock.transform.GetChild(0).GetComponent<Rigidbody>().AddForce((this.transform.up + this.transform.forward) * throwSpeed);
			hasRope = false;
			hasRock = false;
		}
	}*/
}
