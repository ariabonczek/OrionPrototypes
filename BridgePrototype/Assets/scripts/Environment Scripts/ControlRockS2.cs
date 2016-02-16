using UnityEngine;
using System.Collections;

public class ControlRockS2 : MonoBehaviour {

	public bool justEntered;
	public GameObject player1;
	public GameObject player2;
	public GameObject respawn;
	public float jumpHeight;
	private Ray ray;
	public GameObject myCamera;
	
	private float cameraAngleDiff;
	
	Vector3 movementVec;
	
	// Use this for initialization
	void Start () {
		movementVec = new Vector3 (0, 0, 0);
		justEntered = false;
		myCamera = GameObject.FindGameObjectWithTag ("MainCamera");
	}
	
	void FixedUpdate(){
		GetComponent<Rigidbody>().AddForce(0,-6.5f,0);
	}
	
	public void DestroySelf(Vector3 loc1, Vector3 loc2){
		Renderer[] rens = GetComponentsInChildren<Renderer> ();
		Collider[] cols = GetComponents<Collider>();
		player1.transform.position = loc1;
		player2.transform.position = loc2;
		player1.transform.GetChild(0).GetComponent<Renderer>().enabled = true;
		player1.transform.GetComponent<Collider>().enabled = true;
		player1.transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
		player2.transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
		player2.transform.GetChild(0).GetComponent<Renderer>().enabled = true;
		player2.transform.GetComponent<Collider>().enabled = true;
		
		myCamera.GetComponent<CameraScript> ().player1 = player1;
		myCamera.GetComponent<CameraScript> ().player2 = player2;
		
		foreach (Renderer r in rens) {
			r.enabled = false;
		}
		
		foreach (Collider c in cols) {
			c.enabled = false;
		}

		Destroy (this);
		
	}
	
	// Update is called once per frame
	void Update () {
		if (justEntered == true) {
			justEntered = false;
		} else {
			if (player1 && Input.GetButtonDown (player1.GetComponent<Player1Script> ().mySButton)) {
				player1.transform.position = transform.position + (transform.right * 1) + (transform.forward *1.5f);
				player1.transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				player1.transform.GetChild (0).GetComponent<Renderer> ().enabled = true;
				player1.transform.GetComponent<Collider> ().enabled = true;

				if(myCamera.GetComponent<CameraScript> ().player1 == this.gameObject){
					myCamera.GetComponent<CameraScript> ().player1 = player1;
				}else {
					myCamera.GetComponent<CameraScript> ().player2 = player1;
				}

				if (player2) {
					player1 = player1;
					player2 = null;
				} else {
					player1 = null;
				}
			}

			if (player2 && Input.GetButtonDown (player2.GetComponent<Player1Script> ().mySButton)) {
				player2.transform.position = transform.position + (transform.right * -1) + (transform.forward *1.5f);
				player2.transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				player2.transform.GetChild (0).GetComponent<Renderer> ().enabled = true;
				player2.transform.GetComponent<Collider> ().enabled = true;

				if(myCamera.GetComponent<CameraScript> ().player1 == this.gameObject){
					myCamera.GetComponent<CameraScript> ().player1 = player2;
				}else {
					myCamera.GetComponent<CameraScript> ().player2 = player2;
				}

				player2 = null;
			}
		}

		if (player1) {
			cameraAngleDiff = Vector3.Angle (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			Vector3 cross = Vector3.Cross (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			if (cross.y < 0) {
				cameraAngleDiff = -cameraAngleDiff;
			}
			
			if (Input.GetAxis(player1.GetComponent<Player1Script>().myLeftStick + "Y") >.1f){
				transform.RotateAround(transform.GetChild(0).position, Vector3.up, Input.GetAxis(player1.GetComponent<Player1Script>().myLeftStick + "Y") *200 * Time.deltaTime);
			} else if(Input.GetAxis(player1.GetComponent<Player1Script>().myLeftStick + "Y") <-.1){
				transform.RotateAround(transform.GetChild(0).position, Vector3.up, Input.GetAxis(player1.GetComponent<Player1Script>().myLeftStick + "Y") *  200 *Time.deltaTime);
			}
		}
		
		ray = new Ray(transform.position, -transform.up);
		
		
		if (player2) {
			if (Input.GetAxis(player2.GetComponent<Player1Script>().myLeftStick + "Y") >.1f){
				transform.RotateAround(transform.GetChild(1).position, Vector3.up, -Input.GetAxis(player2.GetComponent<Player1Script>().myLeftStick + "Y") * 200 * Time.deltaTime);
			} else if(Input.GetAxis(player2.GetComponent<Player1Script>().myLeftStick + "Y") <-.1){
				transform.RotateAround(transform.GetChild(1).position, Vector3.up, -Input.GetAxis(player2.GetComponent<Player1Script>().myLeftStick + "Y") * 200 * Time.deltaTime);
			}
		}
	}

	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == "Harmful") {
			transform.position = respawn.transform.position;
		}
	}
}
