using UnityEngine;
using System.Collections;

public class Door : MonoBehaviour {

	public GameObject endPoint;
	public GameObject actualDoor;
	private Vector3 startPoint;
	Vector3 moveDir;
	
	// Use this for initialization
	void Start () {
		if (!endPoint) {
			endPoint = new GameObject();
			endPoint.transform.position = this.transform.position + new Vector3(0,-1,0);
		}
		moveDir = (endPoint.transform.position - transform.position).normalized;
		startPoint = this.transform.position;
		if (!this.GetComponent<TriggerScript> ()) {
			this.gameObject.AddComponent<TriggerScript>();
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (this.GetComponent<TriggerScript>().triggered) {
			if (Vector3.Dot (endPoint.transform.position, moveDir) > Vector3.Dot (actualDoor.transform.position, moveDir)) {
				actualDoor.transform.position += moveDir * .04f;
			}
		} else {
			if (Vector3.Dot (startPoint, moveDir) < Vector3.Dot (actualDoor.transform.position, moveDir)) {
				actualDoor.transform.position -= moveDir * .04f;
			}
		}
	}
}
