using UnityEngine;
using System.Collections;

public class ControlRock : MonoBehaviour {

	public bool player1First;
	public bool playerOneIn;
	public bool playerTwoIn;
	public float jumpHeight;
	private Ray ray;
	public GameObject myCamera;

	private float cameraAngleDiff;

	Vector3 movementVec;

	// Use this for initialization
	void Start () {
		playerOneIn = false;
		playerTwoIn = false;
		movementVec = new Vector3 (0, 0, 0);
		player1First = true;
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

	}
	
	// Update is called once per frame
	void Update () {
		if (playerOneIn && player1First) {
			if(Input.GetButtonDown("P1S")){
				if(playerTwoIn){
					playerTwoIn = false;
					player1First = false;
				} else {
					playerOneIn = false;
				}
				GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
				players[1].transform.position = transform.position + new Vector3(3,0,0);
				players [1].transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				players[1].transform.GetChild(0).GetComponent<Renderer>().enabled = true;
				players[1].transform.GetComponent<Collider>().enabled = true;
				
				myCamera.GetComponent<CameraScript> ().player1 = players [1];
			}
			cameraAngleDiff = Vector3.Angle (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			Vector3 cross = Vector3.Cross (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			if (cross.y < 0) {
				cameraAngleDiff = -cameraAngleDiff;
			}

			movementVec.x = (Vector3.left * -(Input.GetAxis ("P1LeftStickX") * Time.deltaTime)).x;
			movementVec.z = (Vector3.forward * -(Input.GetAxis ("P1LeftStickY") * Time.deltaTime)).z;
		
			movementVec = Quaternion.AngleAxis (cameraAngleDiff, Vector3.up) * movementVec;

			if(Input.GetAxis("P1LeftStickX")>.1f  || Input.GetAxis("P1LeftStickY") >.1f || Input.GetAxis("P1LeftStickX")<-.1f  || Input.GetAxis("P1LeftStickY")<-.1f){
				this.transform.forward = movementVec;}
		} else if (playerOneIn && !player1First) {
			if(Input.GetButtonDown("P2S")){
				if(playerTwoIn){
					playerTwoIn = false;
					player1First = true;
				} else {
					playerOneIn = false;
				}
				GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
				players[0].transform.position = transform.position + new Vector3(3,0,0);
				players [0].transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				players[0].transform.GetChild(0).GetComponent<Renderer>().enabled = true;
				players[0].transform.GetComponent<Collider>().enabled = true;
				
				myCamera.GetComponent<CameraScript> ().player2 = players [0];
			}
			cameraAngleDiff = Vector3.Angle (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			Vector3 cross = Vector3.Cross (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			if (cross.y < 0) {
				cameraAngleDiff = -cameraAngleDiff;
			}
			
			movementVec.x = (Vector3.left * -(Input.GetAxis ("P2LeftStickX") * Time.deltaTime)).x;
			movementVec.z = (Vector3.forward * -(Input.GetAxis ("P2LeftStickY") * Time.deltaTime)).z;
			
			movementVec = Quaternion.AngleAxis (cameraAngleDiff, Vector3.up) * movementVec;
			
			if(Input.GetAxis("P2LeftStickX")>.1f  || Input.GetAxis("P2LeftStickY") >.1f || Input.GetAxis("P2LeftStickX")<-.1f  || Input.GetAxis("P2LeftStickY")<-.1f){
				this.transform.forward = movementVec;}
		}

		ray = new Ray(transform.position, -transform.up);


		if (playerTwoIn && !player1First) {
			if(Input.GetButtonDown("P1S")){
				playerTwoIn = false;

				GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
				players[1].transform.position = transform.position + new Vector3(3,0,0);
				players [1].transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				players[1].transform.GetChild(0).GetComponent<Renderer>().enabled = true;
				players[1].transform.GetComponent<Collider>().enabled = true;
				
				myCamera.GetComponent<CameraScript> ().player1 = players [1];
			}

			if (Input.GetAxis("P1R2") >-1){
				this.transform.position += this.transform.forward *(Input.GetAxis("P1R2")+1)*.1f;
			} else if(Input.GetAxis("P1L2") >-1){
				this.transform.position -= this.transform.forward *(Input.GetAxis("P1L2")+1)*.1f;
			}
			if(Physics.Raycast(ray, 1f)){
				if(Input.GetButton("P1X")){
					GetComponent<Rigidbody>().velocity += jumpHeight * transform.up;
				}
			}
		}else if(playerTwoIn && player1First){
			if(Input.GetButtonDown("P2S")){
				playerTwoIn = false;

				GameObject[] players = GameObject.FindGameObjectsWithTag ("Player");
				players[0].transform.position = transform.position + new Vector3(3,0,0);
				players [0].transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				players[0].transform.GetChild(0).GetComponent<Renderer>().enabled = true;
				players[0].transform.GetComponent<Collider>().enabled = true;
				
				myCamera.GetComponent<CameraScript> ().player2 = players [0];
			}
			if (Input.GetAxis("P2R2") >-1f || Input.GetKey(KeyCode.W)){
						this.transform.position += this.transform.forward *(Input.GetAxis("P2R2")+1)*.1f;
			} else if(Input.GetAxis("P2L2") >-1 || Input.GetKey(KeyCode.S)){
						this.transform.position -= this.transform.forward *(Input.GetAxis("P2L2")+1)*.1f;
			}
			if(Physics.Raycast(ray, 1f)){
				if(Input.GetButton("P2X") || Input.GetKey(KeyCode.Space)){
				GetComponent<Rigidbody>().velocity += jumpHeight * transform.up;
				}
			}
		}
	}
}
