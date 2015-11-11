using UnityEngine;
using System.Collections;

public class Player1Script : MonoBehaviour {

	public float speed;
	public float jumpheight;
	public float throwSpeed;
	public GameObject rockPrefab;
	public GameObject largeRockPrefab;

	private GameObject p2;
	private GameObject rock;
	private bool hasRock;
	private bool climbing;
	private bool actionButton;
	private bool actionButtonPrev;
	private float countdown;
	private bool countRun;
	private bool airborne = false;
	private bool stepmode = false;
	private bool topmode = false;
	private bool topstack = false;

	public bool Stepmode
	{
		get { return stepmode; }
	}

	public bool Topmode
	{
		get { return topmode; }
	}

	public bool TopStack
	{
		set { topstack = value; }
		get { return topstack; }
	}

	// Use this for initialization
	void Start () {
		p2 = Camera.allCameras[0].GetComponent<CameraScript>().player2.gameObject;
		countRun = false;
		countdown = 50;
		hasRock = false;
		actionButton = false;
		actionButtonPrev = false;
		climbing = false;
	}
	
	// Update is called once per frame
	void Update () {

		if (Input.GetKey (KeyCode.A)) {
			this.transform.Translate (Vector3.left * speed * Time.deltaTime);
		}
		if (Input.GetKey (KeyCode.Q))
		{
			this.transform.Rotate(new Vector3(0, -1, 0));
		}
		if (Input.GetKey (KeyCode.E))
		{
			this.transform.Rotate(new Vector3(0, 1, 0));
		}
		if (Input.GetKey(KeyCode.D))
			this.transform.Translate (Vector3.right * speed * Time.deltaTime);
		if (Input.GetKey(KeyCode.W))
		{
			this.transform.Translate (Vector3.forward * speed * Time.deltaTime);
		}
		if (Input.GetKey (KeyCode.S))
			this.transform.Translate (Vector3.back * speed * Time.deltaTime);
		/*if (Input.GetKey (KeyCode.X))
			ThrowRock ();*/
		if (Input.GetKey (KeyCode.Z))
			actionButton = true;
		else
		{
			actionButton = false;
			// GetComponent<LargeRock>().player1 = false;
		}

		if (Input.GetKey (KeyCode.X) && airborne == false)
		{
			Jump();
		}

		// remove stepping on each other for now
		/*
		if (Input.GetKey (KeyCode.X))
		{
			stepmode = true;
		}
		else
		{
			stepmode = false;
		}

		if (Input.GetKey (KeyCode.C))
		{
			topmode = true;
		}
		else
		{
			topmode = false;
		}*/

		if (actionButton && !actionButtonPrev && hasRock) {
			Destroy(rock);
			Instantiate(rockPrefab,new Vector3(transform.position.x+transform.forward.x, .9f, transform.position.z+transform.forward.z),Quaternion.identity);
			hasRock=false;
			countRun=true;
		}

		if (climbing)
		{
			Climb();
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

	void Jump()
	{
		Rigidbody rig = GetComponent<Rigidbody>();
		rig.velocity += jumpheight * transform.up;
		airborne = true;
	}

	void Climb()
	{
		float time = speed * Time.deltaTime;
		transform.position = Vector3.Lerp (transform.position, GameObject.Find ("top").transform.position, time);
		//transform.position = Vector3.MoveTowards(GameObject.Find ("bottom").transform.position, GameObject.Find ("top").transform.position, time);
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
	}

	void OnCollisionStay(Collision col)
	{
		if (col.gameObject.tag == "Player2")
		{
			if (p2.GetComponent<Player2Script>().Stepmode && topmode)
			{
				topstack = true;
				transform.position = p2.transform.position + new Vector3(0, p2.GetComponent<CapsuleCollider>().height, 0);
			}
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

		if (col.gameObject.name == "bottom" && actionButton)
		{
			climbing = true;
		}

		if (col.gameObject.name == "top" && climbing)
		{
			//transform.Translate (Vector3.forward * speed * Time.deltaTime);
			climbing = false;
		}

		/*if (col.gameObject.tag == "largeRock" && !hasRock && actionButton && !countRun)
		{
			largeRockPrefab.GetComponent<LargeRock>().PlayerOne = true;

			if (largeRockPrefab.GetComponent<LargeRock>().PlayerTwo && largeRockPrefab.GetComponent<LargeRock>().PlayerOne)
			{
				hasRock=true;
				transform.position = Camera.allCameras[0].GetComponent<CameraScript>().Median + Camera.allCameras[0].GetComponent<CameraScript>().Median;
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
