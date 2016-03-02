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
	public bool needsTwo;
	public bool flung;
	public float velocityNeeded;
	
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
			projectile.GetComponent<Rigidbody> ().isKinematic = true;
			moveVec = path.transform.GetChild (currentNode).transform.position - projectile.transform.position;
			if (moveVec.magnitude < 1f) {
				currentNode++;
			}
			moveVec.Normalize ();
			moveVec *= flySpeed;
			projectile.transform.position += moveVec;
			if (currentNode == totalNodes) {
				projectile.GetComponent<Rigidbody> ().isKinematic = false;
				projectile = null;
			}
		} else if (flung && !projectile) {
			if(!(transform.GetChild(1).eulerAngles.z>344 && transform.GetChild(1).eulerAngles.z<346))
			{
				transform.GetChild(1).Rotate(0,0,-.1f);
			}else {
				//transform.GetChild(1).eulerAngles = new Vector3(0,0,345);
				flung=false;
			}
		}
	}
}
