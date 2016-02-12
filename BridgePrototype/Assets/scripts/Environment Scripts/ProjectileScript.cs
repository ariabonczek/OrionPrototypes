using UnityEngine;
using System.Collections;

public class ProjectileScript : MonoBehaviour {

	public GameObject path;
	public float flySpeed;
	public bool flung;
	private int currentNode;
	private int totalNodes;
	private Vector3 moveVec;

	// Use this for initialization
	void Start () {
		currentNode = 0;
		totalNodes = path.transform.childCount;
		flung = false;
		moveVec = new Vector3 (0, 0, 0);
	}
	
	// Update is called once per frame
	void Update () {


		if (flung) {
			moveVec = path.transform.GetChild(currentNode).transform.position-transform.position;
			if(moveVec.magnitude<.1f){
				currentNode++;
			}
			moveVec.Normalize();
			moveVec *= flySpeed;
			transform.position += moveVec;
		}
	}
}
