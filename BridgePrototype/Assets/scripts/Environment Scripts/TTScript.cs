using UnityEngine;
using System.Collections;

public class TTScript : MonoBehaviour {

	public GameObject trigger;
	public GameObject projectile;
	public float flySpeed;
	private int currentNode;
	public GameObject path;
	private int totalNodes;
	private Vector3 moveVec;
	bool flung;
	
	// Use this for initialization
	void Start () {
		flung = false;
		currentNode = 0;
		totalNodes = path.transform.childCount;
		flung = false;
		moveVec = new Vector3 (0, 0, 0);
	}
	
	// Update is called once per frame
	void Update () {

		if (flung && projectile) {
			projectile.GetComponent<Rigidbody>().isKinematic = true;
			moveVec = path.transform.GetChild(currentNode).transform.position-projectile.transform.position;
			if(moveVec.magnitude<1f){
				currentNode++;
			}
			moveVec.Normalize();
			moveVec *= flySpeed;
			projectile.transform.position += moveVec;
			if(currentNode == totalNodes){
				projectile.GetComponent<Rigidbody>().isKinematic = false;
				projectile = null;
			}
		}
	}
	
	void OnTriggerEnter(Collider col){
		Debug.Log ("Hit");
		if (col.gameObject == trigger && !flung) {
			//rotate teeter totter
			transform.GetChild (1).Rotate (0, 0, 30);
			flung = true;
			if(trigger.gameObject.tag=="ControlRock"){
				trigger.gameObject.GetComponent<ControlRock> ().DestroySelf (transform.GetChild (2).transform.position, transform.GetChild (3).transform.position);
			}
		} else if (!flung && !projectile) {
			projectile = col.gameObject;
		}
	}
}
