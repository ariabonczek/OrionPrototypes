using UnityEngine;
using System.Collections;

public class PPointScript : MonoBehaviour {
	// The Vector 3 representing the direction of the camera when in this point's zone.
	public Vector3 direction;
	// The float representing the magnitude of the camera's "arm"
	public float distance;

	// Use this for initialization
	void Start () {
		direction.Normalize ();
	}
}
