using UnityEngine;
using System.Collections;

public class PPointScript : MonoBehaviour {
	// The Vector 3 representing the direction of the camera when in this point's zone.
	public Vector3 direction;
	// The float representing the magnitude of the camera's "arm"
	public float distance;
	//The bool that tells the camera whether it is fixed or not
	public bool isFixed;

	// Use this for initialization
	void Start () {
		if (direction == Vector3.zero) {
			direction = transform.forward;
		}
		direction.Normalize ();
	}
}
