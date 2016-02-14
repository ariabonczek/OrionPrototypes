using UnityEngine;
using System.Collections;

public class ControlRockS2 : MonoBehaviour {

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
			
			if (Input.GetAxis("P1LeftStickY") >.1f){
				transform.RotateAround(transform.GetChild(0).position, Vector3.up, Input.GetAxis("P1LeftStickY") *200 * Time.deltaTime);
			} else if(Input.GetAxis("P1LeftStickY") <-.1){
				transform.RotateAround(transform.GetChild(0).position, Vector3.up, Input.GetAxis("P1LeftStickY") *  200 *Time.deltaTime);
			}
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
			
			if (Input.GetAxis("P2LeftStickY") >.1f){
				transform.RotateAround(transform.GetChild(1).position, Vector3.up, Input.GetAxis("P2LeftStickY") * -200 * Time.deltaTime);
			} else if(Input.GetAxis("P2LeftStickY") <-.1){
				transform.RotateAround(transform.GetChild(1).position, Vector3.up, Input.GetAxis("P2LeftStickY") * -200 * Time.deltaTime);
			}
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
			if (Input.GetAxis("P1LeftStickY") >.1f){
				transform.RotateAround(transform.GetChild(0).position, Vector3.up, Input.GetAxis("P1LeftStickY") * 200 * Time.deltaTime);
			} else if(Input.GetAxis("P1LeftStickY") <-.1){
				transform.RotateAround(transform.GetChild(0).position, Vector3.up, Input.GetAxis("P1LeftStickY") * 200 * Time.deltaTime);
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
			if (Input.GetAxis("P2LeftStickY") >.1f){
				transform.RotateAround(transform.GetChild(1).position, Vector3.up, Input.GetAxis("P2LeftStickY") * -200 * Time.deltaTime);
			} else if(Input.GetAxis("P2LeftStickY") <-.1){
				transform.RotateAround(transform.GetChild(1).position, Vector3.up, Input.GetAxis("P2LeftStickY") * -200 * Time.deltaTime);
			}
		}
	}
}
