using UnityEngine;
using System.Collections;

public class Player2Script : MonoBehaviour {
	
	public float speed;
	public float throwSpeed;
	private GameObject rock;
	private GameObject ropeRock;
	public GameObject rrs;
	private bool hasRock;
	private bool hasRopeRock;

	// Use this for initialization
	void Start () {
		hasRock = false;
		hasRopeRock = false;

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
