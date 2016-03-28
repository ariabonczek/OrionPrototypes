using UnityEngine;
using System.Collections;

public class MovePlat : MonoBehaviour {

	public Vector3[] Points;
	public GameObject actualPlat;
	public bool reverses;
	public float speed;
	private bool backwards;
	private int pathIndex;
	private Vector3 startPoint;
	Vector3 moveDir;
	
	// Use this for initialization
	void Start () {
		if (speed == 0) {
			speed =1;
		}
		pathIndex = 0;
		if (transform.childCount > 1) {
			Points = new Vector3[transform.childCount];
		}
		
		for(int i=0;i<transform.childCount;i++){
			if(i==0){
				Points[i] = startPoint;
			}
			Points[i] = transform.GetChild(i).transform.position;
		}
		moveDir = (Points[0] - actualPlat.transform.position).normalized;
		startPoint = this.transform.position;
		if (!this.GetComponent<TriggerScript> ()) {
			this.gameObject.AddComponent<TriggerScript>();
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (this.GetComponent<TriggerScript>().triggered) {
			if (Vector3.Dot (Points[pathIndex], moveDir) > Vector3.Dot (actualPlat.transform.position, moveDir)) {
				actualPlat.transform.position += moveDir * .04f *speed;
			} else {
				if(pathIndex<Points.Length-1 && !backwards || pathIndex>0 && backwards){
					if(!backwards){
						pathIndex++;
					} else {
						pathIndex--;
					}
					moveDir = (Points[pathIndex] - actualPlat.transform.position).normalized;
				} else if (reverses){
					backwards = !backwards;
				}
			}
			
		}
	}
}
