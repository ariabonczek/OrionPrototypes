using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour {

	public bool dynamicOn;
	public GameObject player1;
    public GameObject player2;
	public GameObject Camera1;
	public GameObject Camera2;
	public float Distance;

    private Vector3 median;
	private Vector3 cross;
	public float camDistance;
	private float playerDist;
	private GameObject closestPoint;
	private GameObject prevClosestPoint;
	private Ray obstructionRay;
	private RaycastHit hit;
	private GameObject obstruction;
	private bool noObstruct;

	private Vector3 dynamicLoc;
	private float medX;
	private float medY;
	private float medZ;
	private float distanceX;
	private float distanceY;
	private float distanceZ;
	private float distance;
	private float upperLimit;
	private float lowerLimit;
	private float originalCamDist;
	public float cameraAngle;
	private float yVal;
	private float xzVal;

	private float timerStart;
	private float timer;
	private float lerpTime;
	private Vector3 oldPos;
	private Vector3 newPos;

	private bool lerping;

	public Vector3 Median
	{
		get { return median; } 
	}

    //CAMERA IMPLEMENTATION TO WORK AS FOLLOWS:
	//IF IN NON-DYNAMIC MODE
    //---Calculate closest Perspective Point
    //---Set closest Perspective Point's direction as forward.
    //---Set camera position to be Perspective points specified distance from the player midepiont in the direction of the negated PP direction
    //---If it find a different closest point than the one it is using then it enters lerp mode
	//IF IN DYNAMIC MODE
	//---Get the cross of the vector distance between players
	//---Use dynamic angle and distance to calculate camera offset from median

	// Use this for initialization
	void Start ()
	{
		lerpTime = 2f;
		lerping = false;
		hit = new RaycastHit ();
		noObstruct = true;
		//dynamicOn = true;
		cameraAngle = cameraAngle * (Mathf.PI/180);
		originalCamDist = camDistance;
	}
	
	// Update is called once per frame
	void Update () 
	{

		medX = (player1.transform.position.x + player2.transform.position.x) / 2;
		medY = (player1.transform.position.y + player2.transform.position.y) / 2;
		medZ = (player1.transform.position.z + player2.transform.position.z) / 2;
		median = new Vector3(medX, medY, medZ);

		playerDist = (player1.transform.position-player2.transform.position).magnitude*.8f;

		if(playerDist<8){
			playerDist =8;
		}

		camDistance = originalCamDist * (1 + (playerDist * .1f));

		if (!prevClosestPoint) {
			lerping = false;
		}

		/*if(playerDist>15){
			this.GetComponent<Camera>().enabled = false;
			Camera1.GetComponent<Camera>().enabled = true;
			Camera2.GetComponent<Camera>().enabled = true;
			player1.GetComponent<Player1Script>().myCamera = Camera1;
			player2.GetComponent<Player1Script>().myCamera = Camera2;
			Camera1.GetComponent<Player1CameraScript>().direction = this.transform.forward;
			Camera2.GetComponent<Player2CameraScript>().direction = this.transform.forward;
		} else{
			this.GetComponent<Camera>().enabled = true;
			Camera1.GetComponent<Camera>().enabled = false;
			Camera2.GetComponent<Camera>().enabled = false;
			player1.GetComponent<Player1Script>().myCamera = this.gameObject;
			player2.GetComponent<Player1Script>().myCamera = this.gameObject;
		}*/

		// This code sets up what two points the camera is lerping between if it is lerping
		if (lerping) {
			// If it is not Dynamic then we are just lerping from the old perspective point settings to the new one
			if (!dynamicOn) {
				if(prevClosestPoint.GetComponent<PPointScript> ().isDynamic){
					oldPos = dynamicLoc;
				}else {
					if (prevClosestPoint.GetComponent<PPointScript> ().isFixed) {
						oldPos = median - (prevClosestPoint.GetComponent<PPointScript> ().direction * prevClosestPoint.GetComponent<PPointScript> ().distance);
					} else {
						oldPos = median - (prevClosestPoint.GetComponent<PPointScript> ().direction * playerDist);
					}
				}
			
				if (closestPoint.GetComponent<PPointScript> ().isFixed) {
					newPos = median - (closestPoint.GetComponent<PPointScript> ().direction * prevClosestPoint.GetComponent<PPointScript> ().distance);
				} else {
					newPos = median - (closestPoint.GetComponent<PPointScript> ().direction * playerDist);
				}

			} 
			// if it is dynamic then we are lerping from the old perspective point settings to the dynamic settings
			else if (dynamicOn) {
				if (closestPoint.GetComponent<PPointScript> ().isFixed) {
					oldPos = median - (prevClosestPoint.GetComponent<PPointScript> ().direction * prevClosestPoint.GetComponent<PPointScript> ().distance);
				} else {
					oldPos = median - (prevClosestPoint.GetComponent<PPointScript> ().direction * playerDist);
				}
			
				newPos = dynamicLoc;
			}
		}

		//Handling the camera placement when in Perspective Point Mode
		if (!dynamicOn) {
			// If we're lerping then we move the camera using a timer between the old positioning and the new positioning
			if (lerping) {
				timer = (Time.time - timerStart);
				if (timer < lerpTime) {
					transform.position = Vector3.Lerp (oldPos, newPos, timer / lerpTime);
					if(prevClosestPoint.GetComponent<PPointScript> ().isDynamic){
						transform.forward = Vector3.Lerp (median - transform.position, closestPoint.GetComponent<PPointScript> ().direction, timer / lerpTime);
					} else {
						transform.forward = Vector3.Lerp (prevClosestPoint.GetComponent<PPointScript> ().direction, closestPoint.GetComponent<PPointScript> ().direction, timer / lerpTime);
					}
				} else {
					lerping = false;
				}
			}

			//We do a check here to make sure we've got the most up-to-date perspective point locations
			checkPPoints ();

			// If we are not lerping then we simply position the camera behind the median of the players using the perspective point positioning
			if (!lerping) {
				transform.forward = closestPoint.GetComponent<PPointScript> ().direction;

				if (closestPoint.GetComponent<PPointScript> ().isFixed) {
					transform.position = median - (closestPoint.GetComponent<PPointScript> ().direction * closestPoint.GetComponent<PPointScript> ().distance);
				} else {
					transform.position = median - (closestPoint.GetComponent<PPointScript> ().direction * playerDist);
				}
			}
		}
		// if we're using dynamic then we position the camera based aruond player location
		else {
			cross = Vector3.Cross((player1.transform.position-player2.transform.position),Vector3.up).normalized;
			yVal = Mathf.Sin(cameraAngle)*camDistance;
			xzVal = Mathf.Cos(cameraAngle)*camDistance;
			dynamicLoc = median + (cross * xzVal) + (Vector3.up * yVal);
			newPos = dynamicLoc;

			if(lerping){
				timer = (Time.time - timerStart);
				if (timer < lerpTime) {
					transform.position = Vector3.Lerp (oldPos, newPos, timer / lerpTime);
					transform.forward = median - transform.position;
				} else {
					lerping = false;
				}
			}else {
				transform.position = dynamicLoc;
				transform.forward = median - transform.position;
			}

			checkPPoints ();
		}
	}

	void checkPPoints(){
		GameObject[] points = GameObject.FindGameObjectsWithTag ("PPoint");

		float minLength = float.MaxValue;
		GameObject tempClosestPoint = null;
		foreach(GameObject point in points){
			if((median-point.transform.position).magnitude<minLength){
				minLength=(median-point.transform.position).magnitude;
				tempClosestPoint= point;
			}
		}
		if (closestPoint != tempClosestPoint&& !lerping) {
			if(tempClosestPoint.GetComponent<PPointScript>().isDynamic && !dynamicOn){
				dynamicOn = true;
				SwitchIt();
			}
			if(tempClosestPoint.GetComponent<PPointScript>().isDynamic == false && dynamicOn){
				dynamicOn = false;
				SwitchIt();
			}
			if(closestPoint!=null){
				lerping = true;
				timerStart = Time.time;
			}

			prevClosestPoint = closestPoint;
			closestPoint = tempClosestPoint;
		}
	}

	public void SwitchIt(){
		lerping = true;
		timerStart = Time.time;
	}

	/*void checkObstruction(){
		noObstruct = true;
		obstructionRay = new Ray(transform.position, player1.transform.position-transform.position);
		if (Physics.Raycast(obstructionRay, out hit, (player1.transform.position-transform.position).magnitude))
		{
			if(hit.transform.gameObject.tag != "Player" && !hit.collider.isTrigger){
				noObstruct = false;
				obstruction = hit.transform.gameObject;
			}
		}
		obstructionRay = new Ray(transform.position, player2.transform.position-transform.position);
		if (Physics.Raycast(obstructionRay, out hit, (player2.transform.position-transform.position).magnitude))
		{
			if(hit.transform.gameObject.tag != "Player" && !hit.collider.isTrigger){
				noObstruct = false;
				obstruction = hit.transform.gameObject;
			}
		}

		if (obstruction) {
			Renderer[] renderToInvis = obstruction.GetComponentsInChildren<Renderer> ();
			if (!noObstruct) {
				foreach (Renderer r in renderToInvis) {
					r.material.SetColor ("_Color", new Color (r.material.color.r, r.material.color.b, r.material.color.g, .1f));
				}
			} else {
				foreach (Renderer r in renderToInvis) {
					r.material.SetColor ("_Color", new Color (r.material.color.r, r.material.color.b, r.material.color.g, 1f));
				}
			}
		}
	}*/
}
