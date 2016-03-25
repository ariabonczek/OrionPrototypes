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
	private Vector3 bottomY;
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
		bottomY = transform.GetChild(0).position;
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
		//Doing a just entered check to make it so we do initial setup.
		if (justEntered == true) {
			justEntered = false;
			rotatePromptOn = true;
			rotatePromptTimerCurrent =0;
			timeStart = Time.time;
		} else {
			//Setting the display prompts to show correctly to the camera.
			transform.GetChild(0).GetChild(3).forward = (myCamera.transform.forward);
			transform.GetChild(0).GetChild(4).forward = (myCamera.transform.forward);

			DisplayPrompts();

			//resetting it so that it is never below the bottom area
				if(Vector3.Dot(transform.GetChild(0).position, this.transform.up)<Vector3.Dot(bottomY, this.transform.up)){
				transform.GetChild(0).position=new Vector3(bottomY.x,bottomY.y,bottomY.z);
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

			//If there's a player then we check for input for rotation to see if they are moving the screw
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
					}
					else if(canGoDown && Vector3.Dot(transform.GetChild(0).position, this.transform.up)>Vector3.Dot(bottomY, this.transform.up)) {
						currentHoverValue = hoverTime;
						angleDiff = -Vector2.Angle(prevAnalogStickPos,analogStickPos);
					}
				}
			}
			prevAnalogStickPos = analogStickPos;


			if(Vector3.Dot(transform.GetChild(0).position, this.transform.up)<Vector3.Dot(topLimit.transform.position, this.transform.up) && Vector3.Dot(transform.GetChild(0).position, this.transform.up)>=Vector3.Dot(bottomY, this.transform.up)){
				//transform.GetChild(0).Rotate(new Vector3(0,-(angleDiff * risingSpeed * .5f),0).magnitude * -(transform.GetChild(1).position - transform.GetChild(0).position));
				if(spinsInPlace){
					transform.GetChild(0).RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),-(angleDiff * risingSpeed * .5f));
					spinVal += -(angleDiff * risingSpeed * .5f);
				} 
				else {
					if(ColliderRotates){
						transform.GetChild(0).RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),-(angleDiff * risingSpeed * .5f));
						transform.GetChild(0).position += (new Vector3(0,(angleDiff* risingSpeed *.0005f),0).magnitude * this.transform.up);
					}
					else{
						Renderer[] rS = transform.GetChild(0).GetComponentsInChildren<Renderer>();
						for(int i = 0;i<rS.Length;i++){
							rS[i].transform.RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),-(angleDiff * risingSpeed * .5f));
						}
						//transform.GetChild(0).GetComponentInChildren<Renderer>().transform.RotateAround(transform.GetChild(0).position,-(transform.GetChild(1).position - transform.GetChild(0).position),-(angleDiff * risingSpeed * .5f));
						if(angleDiff>0){
						transform.GetChild(0).position += (new Vector3(0,(angleDiff* risingSpeed *.0005f),0).magnitude * this.transform.up);
						} else {
							transform.GetChild(0).position -= (new Vector3(0,(angleDiff* risingSpeed *.0005f),0).magnitude * this.transform.up);
						}
					}
				}
			}

			if(Vector3.Dot(transform.GetChild(0).position, this.transform.up)>Vector3.Dot(bottomY, this.transform.up) && angleDiff==0){
				if(currentHoverValue>0){
					currentHoverValue -=.1f;
				} else {
						if(ColliderRotates){
							transform.GetChild(0).RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),descendingSpeed);
							transform.GetChild(0).position -= (new Vector3(0,(.001f * descendingSpeed),0).magnitude * this.transform.up);
						} else {
						Renderer[] rS = transform.GetChild(0).GetComponentsInChildren<Renderer>();
							for(int i = 0;i<rS.Length;i++){
								rS[i].transform.RotateAround(transform.GetChild(0).position,(transform.GetChild(1).position - transform.GetChild(0).position),descendingSpeed);
							}
							//transform.GetChild(0).GetComponentInChildren<Renderer>().transform.RotateAround(transform.GetChild(0).position,-(transform.GetChild(1).position - transform.GetChild(0).position),descendingSpeed);
							transform.GetChild(0).position -= (new Vector3(0,(.001f * descendingSpeed),0).magnitude * this.transform.up);
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


	//Show the UI "above" the screw

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
