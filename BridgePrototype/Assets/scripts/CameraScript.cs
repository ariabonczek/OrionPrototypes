using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour {

	public GameObject player1;
    public GameObject player2;

	private Vector3 offset;
    private Vector3 median;
	private Vector3 cross;
	private Vector3 newPos;

	private Vector3 velocity = Vector3.zero;

	private float medX;
	private float medY;
	private float medZ;
	private float distanceX;
	private float distanceY;
	private float distanceZ;
	private float distance;

	private Quaternion rotation;

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
		
		this.transform.position = new Vector3(-distance, distance, medZ);
		
		// rotation displacement
		//cross = Vector3.Cross(median, player1.transform.forward);
		Debug.DrawLine(player1.transform.position, median, Color.black);
		Debug.DrawLine(player2.transform.position, median, Color.black);
		Debug.DrawLine(player1.transform.position, player1.transform.forward, Color.green);
		Debug.DrawLine(transform.position, median, Color.green);

		//cross.y = 0.5f;
		//Debug.DrawLine(median, cross, Color.red);
		//Debug.DrawLine(player1.transform.position, cross, Color.red);
		// this.transform.forward = cross;

		//transform.forward = cross.normalized;

		/*transform.position = player.transform.position + offset;
		transform.forward = player.transform.forward;

		transform.RotateAround (player.transform.position, Vector3.up, 1);
		transform.position = offset.magnitude * -player.transform.forward + player.transform.position;
		transform.position += new Vector3 (0, 2, 0);*/
		//transform.rotation = new Quaternion (player.transform.position.x, 20, player.transform.position.z, 0);
	}
}
