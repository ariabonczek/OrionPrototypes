using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour {

	public GameObject player1;
    public GameObject player2;

    private Vector3 median;
	private Vector3 cross;

	private Vector3 velocity = Vector3.zero;

	private float medX;
	private float medY;
	private float medZ;
	private float distanceX;
	private float distanceY;
	private float distanceZ;
	private float distance;
	private float upperLimit;
	private float lowerLimit;

    //CAMERA IMPLEMENTATION TO WORK AS FOLLOWS:
    //---Calculate displacement between players
    //---Cross displacement with up vector
    //---Set magnitude of this third vector to be set distance away; this is Camera position(not including y)
    //---Lerp camera from current position to new position
    //---Do math stuff to calculate height/camera arm based on displacement length
    //---do math stuff to calculate camera angle

	// Use this for initialization
	void Start ()
	{
        // offset = transform.position - median;
		upperLimit = 15f;
		lowerLimit = 2f;
	}
	
	// Update is called once per frame
	void Update () 
	{
		medX = (player1.transform.position.x + player2.transform.position.x) / 2;
		medY = (player1.transform.position.y + player2.transform.position.y) / 2;
		medZ = (player1.transform.position.z + player2.transform.position.z) / 2;
		median = new Vector3(medX, medY, medZ);
		
		distanceX = Mathf.Pow((player2.transform.position.x - player1.transform.position.x), 2);
		distanceY = Mathf.Pow((player2.transform.position.y - player1.transform.position.y), 2);
		distanceZ = Mathf.Pow((player2.transform.position.z - player1.transform.position.z), 2);		
		distance = Mathf.Sqrt(distanceX + distanceY + distanceZ);

		Vector3 dispalcement = player2.transform.position - player1.transform.position;
		cross = Vector3.Cross(dispalcement, player1.transform.up);

		Debug.DrawLine(median, cross + median, Color.black);
		Debug.DrawLine(player1.transform.position, cross + median, Color.green);

		transform.forward = cross;

		Vector3 camDistance = cross* -distance;
		camDistance = Vector3.ClampMagnitude(camDistance, upperLimit);
		Debug.Log(camDistance.magnitude);
		transform.position = median + camDistance;

		//transform.position = new Vector3(
		//	median + (cross* -distance/4)
		transform.position += transform.up * 2f;
	}
}
