using UnityEngine;
using System.Collections;

public class SwitchScript : MonoBehaviour {

	public bool justEntered;
	public GameObject player1;
	public GameObject myCamera;
	public GameObject target;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (justEntered == true) {
			justEntered = false;
		}else {
			if (player1 && Input.GetButtonDown (player1.GetComponent<Player1Script> ().mySButton)) {
				player1.transform.position = transform.position - transform.forward;
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

		if(player1 && Input.GetButtonDown (player1.GetComponent<Player1Script> ().myXButton){
			Debug.Log("Lol");
		}
	}
}
