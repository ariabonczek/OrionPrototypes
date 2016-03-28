using UnityEngine;
using System.Collections;

public class MovingPlatformScript : MonoBehaviour {

	public Vector3[] Points;
	public GameObject actualDoor;
	private int pathIndex;
	private Vector3 startPoint;
	Vector3 moveDir;
	
	// Use this for initialization
	void Start () {
		pathIndex = 0;
		if (transform.childCount > 1) {
			Points = new Vector3[transform.childCount - 1];
		}

		for(int i=1;i<transform.childCount;i++){
			Points[i-1] = transform.GetChild(i).transform.position;
		}
		moveDir = (Points[0] - transform.position).normalized;
		startPoint = this.transform.position;
		if (!this.GetComponent<TriggerScript> ()) {
			this.gameObject.AddComponent<TriggerScript>();
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (this.GetComponent<TriggerScript>().triggered) {
			if (Vector3.Dot (Points[pathIndex], moveDir) > Vector3.Dot (actualDoor.transform.position, moveDir)) {
				actualDoor.transform.position += moveDir * .04f;
			} else {
				if(pathIndex<Points.Length-1){
					pathIndex++;
				}
			}

		}
	}
}
