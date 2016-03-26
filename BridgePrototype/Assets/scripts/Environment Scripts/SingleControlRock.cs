using UnityEngine;
using System.Collections;

public class SingleControlRock : MonoBehaviour {

	public bool justEntered;
	public GameObject player1;
	public float jumpHeight;
	private float speed;
	private Ray ray;
	private RaycastHit hit;
	public GameObject myCamera;
	
	private float cameraAngleDiff;
	
	Vector3 movementVec;
	
	// Use this for initialization
	void Start () {
		movementVec = new Vector3 (0, 0, 0);
		justEntered = false;
		speed = 3;
		myCamera = GameObject.FindGameObjectWithTag ("MainCamera");
	}
	
	void FixedUpdate(){
		GetComponent<Rigidbody>().AddForce(0,-6.5f,0);
	}
	
	// Update is called once per frame
	void Update () {
		if (justEntered == true) {
			justEntered = false;
		} else {
			if (player1 && Input.GetButtonDown (player1.GetComponent<Player1Script> ().mySButton) && Physics.Raycast(ray, out hit, .7f)) {
				player1.transform.position = transform.position + transform.up;
				player1.transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				player1.transform.GetChild (0).GetComponent<Renderer> ().enabled = true;
				player1.transform.GetComponent<Collider> ().enabled = true;
				
				if(myCamera.GetComponent<CameraScript> ().player1 == this.gameObject){
					myCamera.GetComponent<CameraScript> ().player1 = player1;
				}else {
					myCamera.GetComponent<CameraScript> ().player2 = player1;
				}

				player1 =null;
			}
		}
		
		if (player1) {
			cameraAngleDiff = Vector3.Angle (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			Vector3 cross = Vector3.Cross (new Vector3 (0, 0, 1), new Vector3 (myCamera.transform.forward.x, 0, myCamera.transform.forward.z));
			
			if (cross.y < 0) {
				cameraAngleDiff = -cameraAngleDiff;
			}
			movementVec.x = (Vector3.left * -(Input.GetAxis (player1.GetComponent<Player1Script>().myLeftStick + "X")* Time.deltaTime)).x;
			movementVec.z = (Vector3.forward * -(Input.GetAxis (player1.GetComponent<Player1Script>().myLeftStick + "Y")* Time.deltaTime)).z;
			
			movementVec = Quaternion.AngleAxis(cameraAngleDiff, Vector3.up) * movementVec;

			movementVec *= speed;
			
			this.transform.Translate(movementVec);
		}

		if(Physics.Raycast(ray, out hit, .7f)){
			if(player1 && Input.GetButton(player1.GetComponent<Player1Script>().myXButton) || Input.GetKey(KeyCode.Space)){
				if(!hit.collider.isTrigger){
					GetComponent<Rigidbody>().velocity += jumpHeight * transform.up;
				}
			}
		}
		
		ray = new Ray(transform.position, -transform.up);
	}
}
