using UnityEngine;
using System.Collections;

public class RockShooterScript : MonoBehaviour {

	public GameObject Rock;
	public GameObject MaxDistPoint;
	public GameObject RockStartPoint;
	public float rockSpeed;
	private float distance;
	public float distGone;

	void Start(){
		distance = (transform.position - MaxDistPoint.transform.position).magnitude;

		Rock.GetComponent<BallScript> ().velo = transform.up * rockSpeed;
	}

	// Update is called once per frame
	void Update () {

		if (distGone>distance) {
			distGone = 0;
			Rock.transform.position = RockStartPoint.transform.position;
			Rock.GetComponent<BallScript> ().velo = transform.up * rockSpeed;
		}
	}
}
