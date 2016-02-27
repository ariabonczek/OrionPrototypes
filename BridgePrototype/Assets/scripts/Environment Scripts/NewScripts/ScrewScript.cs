using UnityEngine;
using System.Collections;

public class ScrewScript : MonoBehaviour {

	public bool justEntered;
	public GameObject player;
	public GameObject myCamera;
	public GameObject topLimit;
	public float risingSpeed;
	public float descendingSpeed;
	public float hoverTime;
	public bool canGoDown;
	private Vector2 analogStickPos;
	private Vector2 prevAnalogStickPos;
	private float angleDiff;
	private float bottomY;
	private float currentHoverValue;

	// Use this for initialization
	void Start () {
		myCamera = GameObject.FindGameObjectWithTag ("MainCamera");
		prevAnalogStickPos = new Vector2 (0, 0);
		bottomY = transform.GetChild(0).position.y;
		currentHoverValue = hoverTime;
	}
	
	// Update is called once per frame
	void Update () {
		if (justEntered == true) {
			justEntered = false;
		} else {
			if(transform.GetChild(0).position.y<bottomY){
				transform.GetChild(0).position=new Vector3(transform.GetChild(0).position.x,bottomY,transform.GetChild(0).position.z);
			}
			angleDiff = 0;
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
				if(Mathf.Abs(prevAnalogStickPos.magnitude)>.95f && Mathf.Abs(analogStickPos.magnitude)>.95f){
					if(Vector3.Cross(new Vector3(prevAnalogStickPos.x,prevAnalogStickPos.y),new Vector3(analogStickPos.x,analogStickPos.y)).z<0){
						currentHoverValue = hoverTime;
						angleDiff = Vector2.Angle(prevAnalogStickPos,analogStickPos);
					} else if(canGoDown && transform.GetChild(0).position.y!=bottomY) {
						currentHoverValue = hoverTime;
						angleDiff = -Vector2.Angle(prevAnalogStickPos,analogStickPos);
					}
				}
			}
			prevAnalogStickPos = analogStickPos;

			if(transform.GetChild(0).position.y<topLimit.transform.position.y && transform.GetChild(0).position.y>=bottomY){
				transform.GetChild(0).Rotate(new Vector3(0,-(angleDiff * risingSpeed * .5f),0));
				transform.GetChild(0).position += new Vector3(0,(angleDiff* risingSpeed *.0005f),0);
			}

			if(transform.GetChild(0).position.y>bottomY && angleDiff==0){
				if(currentHoverValue>0){
					currentHoverValue -=.1f;
				} else {
					transform.GetChild(0).Rotate(new Vector3(0,descendingSpeed,0));
					transform.GetChild(0).position -= new Vector3(0,(.001f * descendingSpeed),0);
				}
			}
		}
	}
}
