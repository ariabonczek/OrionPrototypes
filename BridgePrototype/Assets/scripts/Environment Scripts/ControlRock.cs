using UnityEngine;
using System.Collections;

public class ControlRock : MonoBehaviour {

	public bool justEntered;
	public GameObject player1;
	public GameObject player2;
	public float jumpHeight;
	public float speed;
	private Ray ray;
	public GameObject myCamera;

	private float cameraAngleDiff;

	Vector3 movementVec;

	// Use this for initialization
	void Start () {
	}

	void FixedUpdate(){
		GetComponent<Rigidbody>().AddForce(0,-6.5f,0);
	}

	public void DestroySelf(Vector3 loc1, Vector3 loc2){
		GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
		Renderer[] rens = GetComponentsInChildren<Renderer> ();
		Collider[] cols = GetComponents<Collider>();
		players[0].transform.position = loc1;
		players[1].transform.position = loc2;
		players[0].transform.GetChild(0).GetComponent<Renderer>().enabled = true;
		players[0].transform.GetComponent<Collider>().enabled = true;
		players [0].transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
		players [1].transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
		players[1].transform.GetChild(0).GetComponent<Renderer>().enabled = true;
		players[1].transform.GetComponent<Collider>().enabled = true;

		myCamera.GetComponent<CameraScript> ().player1 = players [1];
		myCamera.GetComponent<CameraScript> ().player2 = players [0];

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
				
				myCamera.GetComponent<CameraScript> ().player1 = player1;
				
				player1 = null;
			}
			
			if (player2 && Input.GetButtonDown (player2.GetComponent<Player1Script> ().mySButton)) {
				player2.transform.position = transform.position + (transform.right * -1) + (transform.forward *1.5f);
				player2.transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				player2.transform.GetChild (0).GetComponent<Renderer> ().enabled = true;
				player2.transform.GetComponent<Collider> ().enabled = true;
				
				myCamera.GetComponent<CameraScript> ().player2 = player2;
				
				player2 = null;
			}
		}

		if (player1) {
			cameraAngleDiff = Vector3.Angle (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			Vector3 cross = Vector3.Cross (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			if (cross.y < 0) {
				cameraAngleDiff = -cameraAngleDiff;
			}

			movementVec.x = (Vector3.left * -(Input.GetAxis (player1.GetComponent<Player1Script> ().myLeftStick + "X") * Time.deltaTime)).x;
			movementVec.z = (Vector3.forward * -(Input.GetAxis (player1.GetComponent<Player1Script> ().myLeftStick + "Y") * Time.deltaTime)).z;
		
			movementVec = Quaternion.AngleAxis (cameraAngleDiff, Vector3.up) * movementVec;

			if(Input.GetAxis(player1.GetComponent<Player1Script> ().myLeftStick + "X")>.1f  ||
			   Input.GetAxis(player1.GetComponent<Player1Script> ().myLeftStick + "Y")>.1f  || 
			   Input.GetAxis(player1.GetComponent<Player1Script> ().myLeftStick + "X")<-.1f ||
			   Input.GetAxis(player1.GetComponent<Player1Script> ().myLeftStick + "Y")<-.1f)
			{
					this.transform.forward = movementVec;
			}
		}

		ray = new Ray (transform.position, -transform.up);

		if (player2) {

			if (Input.GetAxis(player2.GetComponent<Player1Script> ().myR2Trigger) >-1){
				this.transform.position += this.transform.forward *(Input.GetAxis(player2.GetComponent<Player1Script> ().myR2Trigger)+1)*.1f * speed;
			} else if(Input.GetAxis(player2.GetComponent<Player1Script> ().myL2Trigger) >-1){
				this.transform.position -= this.transform.forward *(Input.GetAxis(player2.GetComponent<Player1Script> ().myL2Trigger)+1)*.1f * speed;
			}
			if(Physics.Raycast(ray, 1f)){
				if(Input.GetButton(player2.GetComponent<Player1Script> ().myXButton)){
					GetComponent<Rigidbody>().velocity += jumpHeight * transform.up;
				}
			}
		}
	}
}
