using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour {

	public GameObject player1;
    public GameObject player2;

    private Vector3 median;
	private Vector3 cross;
	private float camDistance;
	private GameObject closestPoint;
	private GameObject prevClosestPoint;

	private float medX;
	private float medY;
	private float medZ;
	/*private float distanceX;
	private float distanceY;
	private float distanceZ;
	private float distance;
	private float upperLimit;
	private float lowerLimit;
	private float cameraAngle;
	private float yVal;
	private float xzVal;*/

	private float timerStart;
	private float timer;
	private float lerpTime;

	private bool lerping;

	public Vector3 Median
	{
		get { return median; } 
	}

    //CAMERA IMPLEMENTATION TO WORK AS FOLLOWS:
    //---Calculate closest Perspective Point
    //---Set closest Perspective Point's direction as forward.
    //---Set camera position to be Perspective points specified distance from the player midepiont in the direction of the negated PP direction
    //---If it find a different closest point than the one it is using then it enters lerp mode

	// Use this for initialization
	void Start ()
	{
		lerpTime = 2f;
		lerping = false;
	}
	
	// Update is called once per frame
	void Update () 
	{
		medX = (player1.transform.position.x + player2.transform.position.x) / 2;
		medY = (player1.transform.position.y + player2.transform.position.y) / 2;
		medZ = (player1.transform.position.z + player2.transform.position.z) / 2;
		median = new Vector3(medX, medY, medZ);

		if (lerping) {
			timer = (Time.time - timerStart);
			if(timer<lerpTime){
				Vector3 oldPos = median + -(prevClosestPoint.GetComponent<PPointScript> ().direction * prevClosestPoint.GetComponent<PPointScript> ().distance);
				Vector3 newPos = median + -(closestPoint.GetComponent<PPointScript> ().direction * closestPoint.GetComponent<PPointScript> ().distance);

				transform.position = Vector3.Lerp(oldPos, newPos, timer/lerpTime);

				transform.forward = Vector3.Lerp(prevClosestPoint.GetComponent<PPointScript> ().direction, closestPoint.GetComponent<PPointScript> ().direction, timer/lerpTime);
			}else{
				lerping= false;
			}
		}

		checkPPoints ();

		if (!lerping) {
			transform.forward = closestPoint.GetComponent<PPointScript> ().direction;

			transform.position = median + -(closestPoint.GetComponent<PPointScript> ().direction * closestPoint.GetComponent<PPointScript> ().distance);
		}
	}

	void checkPPoints(){
		GameObject[] points = GameObject.FindGameObjectsWithTag ("PPoint");

		float minLength = float.MaxValue;
		GameObject tempClosestPoint = null;
		foreach(GameObject point in points){
			Debug.DrawLine(point.transform.position, median, Color.blue);
			if((median-point.transform.position).magnitude<minLength){
				minLength=(median-point.transform.position).magnitude;
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
	}
}
