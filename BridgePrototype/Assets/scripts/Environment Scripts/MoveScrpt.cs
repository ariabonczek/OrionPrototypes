using UnityEngine;
using System.Collections;

public class MoveScrpt : MonoBehaviour {

	public GameObject endPoint;
	private Vector3 startPoint;
	public bool triggered;
	Vector3 moveDir;
	
	// Use this for initialization
	void Start () {
		moveDir = (endPoint.transform.position - transform.position).normalized;
		startPoint = this.transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		if (triggered) {
			if (Vector3.Dot (endPoint.transform.position, moveDir) > Vector3.Dot (transform.position, moveDir)) {
				transform.position += moveDir * .04f;
			}
		} else {
			if (Vector3.Dot (startPoint, moveDir) < Vector3.Dot (transform.position, moveDir)) {
				transform.position -= moveDir * .04f;
			}
		}
	}
}
