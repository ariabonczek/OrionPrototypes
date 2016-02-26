using UnityEngine;
using System.Collections;

public class ScrewScript : MonoBehaviour {

	public bool justEntered;
	public GameObject player;
	public GameObject myCamera;
	private Vector2 analogStickPos;
	private Vector2 prevAnalogStickPos;
	private float angleDiff;
	private float bottomY;

	// Use this for initialization
	void Start () {
		myCamera = GameObject.FindGameObjectWithTag ("MainCamera");
		prevAnalogStickPos = new Vector2 (0, 0);
		bottomY = transform.GetChild(0).position.y;
	}
	
	// Update is called once per frame
	void Update () {
		if (justEntered == true) {
			justEntered = false;
		} else {
			if (player && Input.GetButtonDown (player.GetComponent<Player1Script> ().mySButton)) {
				player.transform.position = transform.position + (transform.right * 1) + (transform.forward *1.5f);
				player.transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				player.transform.GetComponent<Rigidbody> ().useGravity = true;
				player.transform.GetChild (0).GetComponent<Renderer> ().enabled = true;
				player.transform.GetComponent<Collider> ().enabled = true;

				if(myCamera.GetComponent<CameraScript> ().player1 == this.gameObject){
					myCamera.GetComponent<CameraScript> ().player1 = player;
				}else {
					myCamera.GetComponent<CameraScript> ().player2 = player;
				}

				player = null;
			}

			if(player){
				analogStickPos = new Vector2(Input.GetAxis(player.GetComponent<Player1Script>().myLeftStick + "X"),Input.GetAxis(player.GetComponent<Player1Script>().myLeftStick + "Y"));
				angleDiff = 0;
				if(Mathf.Abs(prevAnalogStickPos.magnitude)>.95f && Mathf.Abs(analogStickPos.magnitude)>.95f){
					if(Vector3.Cross(new Vector3(prevAnalogStickPos.x,prevAnalogStickPos.y),new Vector3(analogStickPos.x,analogStickPos.y)).z<0){
						angleDiff = Vector2.Angle(prevAnalogStickPos,analogStickPos);
					}
				}

				transform.GetChild(0).Rotate(new Vector3(0,-(angleDiff),0));
				transform.GetChild(0).position += new Vector3(0,(angleDiff*.001f),0);
			}
			prevAnalogStickPos = analogStickPos;

			if(transform.GetChild(0).position.y>bottomY && angleDiff==0){
				transform.GetChild(0).Rotate(new Vector3(0,5f,0));
				transform.GetChild(0).position -= new Vector3(0,.005f,0);
			}
		}
	}
}
