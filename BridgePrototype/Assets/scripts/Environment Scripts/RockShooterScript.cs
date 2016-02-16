using UnityEngine;
using System.Collections;

public class RockShooterScript : MonoBehaviour {

	public GameObject Rock;
	public GameObject MaxDistPoint;
	public GameObject RockStartPoint;
	public float rockSpeed;

	// Update is called once per frame
	void Update () {
		Rock.transform.position += transform.up *rockSpeed;

		if ((Rock.transform.position - transform.position).magnitude>(MaxDistPoint.transform.position - transform.position).magnitude) {
			Rock.transform.position = RockStartPoint.transform.position;
		}
	}
}
