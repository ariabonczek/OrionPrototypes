using UnityEngine;
using System.Collections;

public class Player2CameraScript : MonoBehaviour {

	public GameObject player2;
	public float Distance;
	
	public Vector3 direction;
	private float camDistance;
	private GameObject closestPoint;
	private GameObject prevClosestPoint;
	
	private float timerStart;
	private float timer;
	private float lerpTime;
	
	private bool lerping;
	
	//CAMERA IMPLEMENTATION TO WORK AS FOLLOWS:
	//---Calculate closest Perspective Point
	//---Set closest Perspective Point's direction as forward.
	//---Set camera position to be Perspective points specified distance from the player midepiont in the direction of the negated PP direction
	//---If it find a different closest point than the one it is using then it enters lerp mode
	
	// Use this for initialization
	void Start ()
	{
		//lerpTime = 2f;
		//lerping = false;
		direction = new Vector3(0,0,1);
	}
	
	// Update is called once per frame
	void Update () 
	{
		
		/*if (lerping) {
			timer = (Time.time - timerStart);
			if(timer<lerpTime){
				Vector3 oldPos;
				Vector3 newPos;
				
				oldPos = player2.transform.position -(prevClosestPoint.GetComponent<PPointScript> ().direction * prevClosestPoint.GetComponent<PPointScript> ().distance);
				
				newPos = player2.transform.position -(closestPoint.GetComponent<PPointScript> ().direction * prevClosestPoint.GetComponent<PPointScript> ().distance);
				
				transform.position = Vector3.Lerp(oldPos, newPos, timer/lerpTime);
				
				transform.forward = Vector3.Lerp(prevClosestPoint.GetComponent<PPointScript> ().direction, closestPoint.GetComponent<PPointScript> ().direction, timer/lerpTime );
			}else{
				lerping= false;
			}
		}
		
		checkPPoints ();
		
		if (!lerping) {
			transform.forward = closestPoint.GetComponent<PPointScript> ().direction;
			
			transform.position = player2.transform.position -(closestPoint.GetComponent<PPointScript> ().direction * closestPoint.GetComponent<PPointScript> ().distance);
		}*/

		transform.position = player2.transform.position - (direction*Distance);
		this.transform.forward= direction;
	}
	
	/*void checkPPoints(){
		GameObject[] points = GameObject.FindGameObjectsWithTag ("PPoint");
		
		float minLength = float.MaxValue;
		GameObject tempClosestPoint = null;
		foreach(GameObject point in points){
			if((player2.transform.position-point.transform.position).magnitude<minLength){
				minLength=(player2.transform.position-point.transform.position).magnitude;
				tempClosestPoint= point;
			}
		}
		if (closestPoint != tempClosestPoint&& !lerping) {
			if(closestPoint!=null){
				lerping = true;
				timerStart = Time.time;
			}
			prevClosestPoint = closestPoint;
			closestPoint = tempClosestPoint;
		}
	}*/
}
