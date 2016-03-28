using UnityEngine;
using System.Collections;

public class PPointScript : MonoBehaviour {
	// The float representing the magnitude of the camera's "arm"
	public float distance;
    public float offset;

	// Use this for initialization
	void Start ()
	{
		if(distance==0){
			distance=1;
		}
	}
}
