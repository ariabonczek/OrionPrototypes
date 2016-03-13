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
	public float rotatePromptIntroTimer;
	private float rotatePromptTimerCurrent;
	private bool rotatePromptOn;
	private float timeStart;
	public bool ColliderRotates;
	private GameObject rotationSprite;
	public bool spinsInPlace;
	public float spinVal;

	// Use this for initialization
	void Start () {
		myCamera = GameObject.FindGameObjectWithTag ("MainCamera");
		prevAnalogStickPos = new Vector2 (0, 0);
		bottomY = transform.GetChild(0).position.y;
		currentHoverValue = hoverTime;
		Color tempColor = transform.GetChild(0).GetChild(3).GetComponent<SpriteRenderer> ().color;
		tempColor.a = 0f;
		transform.GetChild (0).GetChild (3).GetComponent<SpriteRenderer> ().color = tempColor;
		tempColor = transform.GetChild(0).GetChild(4).GetComponent<SpriteRenderer> ().color;
		tempColor.a = 0f;
		transform.GetChild (0).GetChild (4).GetComponent<SpriteRenderer> ().color = tempColor;
		spinVal = 0;
	}
	
	// Update is called once per frame
	void Update () {
		if (justEntered == true) {
			justEntered = false;
			rotatePromptOn = true;
			rotatePromptTimerCurrent =0;
			timeStart = Time.time;
		} else {
			transform.GetChild (0).GetChild (3).forward = (myCamera.transform.forward);
			transform.GetChild (0).GetChild (4).forward = (myCamera.transform.forward);

			DisplayPrompts();

			if(transform.GetChild(0).position.y<bottomY){
				transform.GetChild(0).position=new Vector3(transform.GetChild(0).position.x,bottomY,transform.GetChild(0).position.z);
			}
			angleDiff = 0;
			if (player && Input.GetButtonDown (player.GetComponent<Player1Script> ().mySButton)) {
				player.transform.position = transform.GetChild(3).position;
				player.transform.GetComponent<Rigidbody> ().velocity = Vector3.zero;
				player.transform.GetComponent<Rigidbody> ().useGravity = true;
				player.transform.GetChild (0).GetComponent<Renderer> ().enabled = true;
				player.transform.GetComponent<Collider> ().enabled = true;

				if(myCamera.GetComponent<CameraScript> ().player1 == this.gameObject){
					myCamera.GetComponent<CameraScript> ().player1 = player;
				}else {
					myCamera.GetComponent<CameraScript> ().player2 = player;
				}

				rotatePromptOn = false;
				rotatePromptTimerCurrent =0;

				player = null;
			}

			if(player){
				analogStickPos = new Vector2(Input.GetAxis(player.GetComponent<Player1Script>().myLeftStick + "X"),Input.GetAxis(player.GetComponent<Player1Script>().myLeftStick + "Y"));
				if(Mathf.Abs(prevAnalogStickPos.magnitude)>.95f && Mathf.Abs(analogStickPos.magnitude)>.95f){
					if(Vector3.Cross(new Vector3(prevAnalogStickPos.x,prevAnalogStickPos.y),new Vector3(analogStickPos.x,analogStickPos.y)).z<0){
						if(rotatePromptOn) {
							rotatePromptOn = false;
							rotatePromptTimerCurrent =0;
						}

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
				//transform.GetChild(0).Rotate(new Vector3(0,-(angleDiff * risingSpeed * .5f),0).magnitude * -(transform.GetChild(1).position - transform.GetChild(0).position));
				if(spinsInPlace){
					transform.GetChild(0).RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),-(angleDiff * risingSpeed * .5f));
					spinVal += -(angleDiff * risingSpeed * .5f);
				} else {
					if(ColliderRotates){
						transform.GetChild(0).RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),-(angleDiff * risingSpeed * .5f));
						transform.GetChild(0).position += (new Vector3(0,(angleDiff* risingSpeed *.0005f),0).magnitude * (transform.GetChild(1).position - transform.GetChild(0).position).normalized);
					}
					else{
						Renderer[] rS = transform.GetChild(0).GetComponentsInChildren<Renderer>();
						for(int i = 0;i<rS.Length;i++){
							rS[i].transform.RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),-(angleDiff * risingSpeed * .5f));
						}
						//transform.GetChild(0).GetComponentInChildren<Renderer>().transform.RotateAround(transform.GetChild(0).position,-(transform.GetChild(1).position - transform.GetChild(0).position),-(angleDiff * risingSpeed * .5f));
						transform.GetChild(0).position += (new Vector3(0,(angleDiff* risingSpeed *.0005f),0).magnitude * (transform.GetChild(1).position - transform.GetChild(0).position).normalized);
					}
				}
			}

			if(transform.GetChild(0).position.y>bottomY && angleDiff==0){
				if(currentHoverValue>0){
					currentHoverValue -=.1f;
				} else {
						if(ColliderRotates){
							transform.GetChild(0).RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),descendingSpeed);
							transform.GetChild(0).position -= (new Vector3(0,(.001f * descendingSpeed),0).magnitude * (transform.GetChild(1).position - transform.GetChild(0).position).normalized);
						} else {
							Renderer[] rS = transform.GetChild(0).GetComponentsInChildren<Renderer>();
							for(int i = 0;i<rS.Length;i++){
								rS[i].transform.RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),descendingSpeed);
							}
							//transform.GetChild(0).GetComponentInChildren<Renderer>().transform.RotateAround(transform.GetChild(0).position,-(transform.GetChild(1).position - transform.GetChild(0).position),descendingSpeed);
							transform.GetChild(0).position -= (new Vector3(0,(.001f * descendingSpeed),0).magnitude * (transform.GetChild(1).position - transform.GetChild(0).position).normalized);
						}
				}
			} else {
				if(currentHoverValue>0){
					currentHoverValue -=.1f;
				} else {
					if(spinsInPlace && spinVal<0){
						transform.GetChild(0).RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),descendingSpeed);
						spinVal += descendingSpeed;
					}
				}
			}
		}
	}

	void DisplayPrompts(){
		if (player) {
			if (rotatePromptOn) {
				if (rotatePromptTimerCurrent < rotatePromptIntroTimer) {
					rotatePromptTimerCurrent += (Time.time - timeStart);

					if (player.GetComponent<Player1Script> ().Player1) {
						Color tempColor = transform.GetChild (0).GetChild (3).GetComponent<SpriteRenderer> ().color;
						tempColor.a = (rotatePromptTimerCurrent / rotatePromptIntroTimer);
						transform.GetChild (0).GetChild (3).GetComponent<SpriteRenderer> ().color = tempColor;
					} else {
						Color tempColor = transform.GetChild (0).GetChild (4).GetComponent<SpriteRenderer> ().color;
						tempColor.a = (rotatePromptTimerCurrent / rotatePromptIntroTimer);
						transform.GetChild (0).GetChild (4).GetComponent<SpriteRenderer> ().color = tempColor;
					}
				}
			} else {
				if (rotatePromptTimerCurrent < rotatePromptIntroTimer) {
					rotatePromptTimerCurrent += (Time.time - timeStart);

					if (player.GetComponent<Player1Script> ().Player1) {
						Color tempColor = transform.GetChild (0).GetChild (3).GetComponent<SpriteRenderer> ().color;
						tempColor.a = 1 - (rotatePromptTimerCurrent / rotatePromptIntroTimer);
						transform.GetChild (0).GetChild (3).GetComponent<SpriteRenderer> ().color = tempColor;
					} else {
						Color tempColor = transform.GetChild (0).GetChild (4).GetComponent<SpriteRenderer> ().color;
						tempColor.a = 1 - (rotatePromptTimerCurrent / rotatePromptIntroTimer);
						transform.GetChild (0).GetChild (4).GetComponent<SpriteRenderer> ().color = tempColor;
					}
				}
			}
		}
		else{
			Color tempColor = transform.GetChild (0).GetChild(3).GetComponent<SpriteRenderer> ().color;
			tempColor.a = 0;
			transform.GetChild (0).GetChild(3).GetComponent<SpriteRenderer> ().color = tempColor;
		}
	}
}
