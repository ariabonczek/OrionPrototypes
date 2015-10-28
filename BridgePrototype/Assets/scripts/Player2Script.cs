using UnityEngine;
using System.Collections;

public class Player2Script : MonoBehaviour {
	
	public float speed;
	public float throwSpeed;
	private GameObject rock;
	private GameObject ropeRock;
	public GameObject rrs;
	public GameObject rockPrefab;
	public GameObject largeRockPrefab;
	private bool hasRock;
	private bool hasRopeRock;
	private bool actionButton;
	private bool actionButtonPrev;
	private float countdown;
	private bool countRun;

	// Use this for initialization
	void Start () {
		countRun = false;
		countdown = 50;
		hasRock = false;
		actionButton = false;
		actionButtonPrev = false;
	}
	
	// Update is called once per frame
	void Update () {
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
		if (Input.GetKey (KeyCode.Keypad2))
			ThrowRock ();

		if (Input.GetKey (KeyCode.KeypadDivide))
			actionButton = true;
		else
		{
			actionButton = false;
			// GetComponent<LargeRock>().player2 = false;
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

	void OnCollisionEnter(Collision col)
	{
		if (col.gameObject.tag == "Rock"&&hasRock==false)
		{
			col.gameObject.GetComponent<Renderer>().enabled=false;
			col.gameObject.GetComponent<Collider>().enabled=false;
			rock= col.gameObject;
			hasRock=true;
		}
		if (col.gameObject.tag == "RopeRock"&&hasRock==false)
		{
			ropeRock = col.gameObject;
			ropeRock.transform.position= new Vector3(1000,0.0f,0);
			hasRopeRock=true;
		}
	}

	void OnTriggerEnter(Collider col)
	{
		if (col.gameObject.tag == "Statue" && hasRopeRock == true)
		{
			hasRopeRock = false;
			Destroy(col.gameObject);
			Instantiate(rrs);
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
		}
		if (col.gameObject.tag == "largeRock" && !hasRock && actionButton && !countRun)
		{
			largeRockPrefab.GetComponent<LargeRock>().PlayerTwo = true;

			if (largeRockPrefab.GetComponent<LargeRock>().PlayerTwo && largeRockPrefab.GetComponent<LargeRock>().PlayerOne)
			{
				Destroy(col.gameObject);
				rock = Instantiate(largeRockPrefab);
				rock.transform.position = Camera.allCameras[0].GetComponent<CameraScript>().Median +(transform.up*1.5f);
				rock.transform.parent = transform;
				hasRock=true;
			}
		}
	}

	void ThrowRock(){
		if (hasRock) {
			rock.transform.position=this.transform.position+this.transform.forward*3+new Vector3(0,.5f,0);
			rock.gameObject.GetComponent<Renderer>().enabled=true;
			rock.gameObject.GetComponent<Collider>().enabled=true;
			rock.GetComponent<Rigidbody>().velocity= new Vector3(0,0,0);
			rock.GetComponent<Rigidbody>().AddForce((this.transform.up + this.transform.forward) * throwSpeed);
			hasRock=false;
		}
	}
}
