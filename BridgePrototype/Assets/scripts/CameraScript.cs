using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour {

	public GameObject player;

	private Vector3 offset;


	// Use this for initialization
	void Start ()
	{
		offset = transform.position - player.transform.position;
	}
	
	// Update is called once per frame
	void Update () 
	{
		transform.position = player.transform.position + offset;
		transform.forward = player.transform.forward;

		transform.RotateAround (player.transform.position, Vector3.up, 1);
		transform.position = offset.magnitude * -player.transform.forward + player.transform.position;
		transform.position += new Vector3 (0, 2, 0);
		//transform.rotation = new Quaternion (player.transform.position.x, 20, player.transform.position.z, 0);
	}
}
