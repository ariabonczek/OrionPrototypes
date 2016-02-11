using UnityEngine;
using System.Collections;

public class ControlRock : MonoBehaviour {

	public bool player1First;
	public bool playerOneIn;
	public bool playerTwoIn;
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
	
	// Update is called once per frame
	void Update () {
		if (playerOneIn && player1First) {
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
			Debug.Log("Should1");
		} else if (!player1First) {
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
			Debug.Log("Should2");
		}


		if (playerTwoIn && !player1First) {
			if (Input.GetAxis("P1LeftStickY") >.1f){
				this.transform.position += this.transform.forward *-.1f;
			} else if(Input.GetAxis("P1LeftStickY") <-.1f){
				this.transform.position += this.transform.forward *.1f;
			}
		}else if( player1First){
			if (Input.GetAxis("P1LeftStickY") >.1f){
				this.transform.position += this.transform.forward *-.1f;
			} else if(Input.GetAxis("P1LeftStickY") <-.1f){
				this.transform.position += this.transform.forward *.1f;
			}
		}
	}
}
