using UnityEngine;
using System.Collections;

public class ControlRockS2Collider : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	}

	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == "Harmful") {
			GetComponentInParent<ControlRockS2>().transform.position = GetComponentInParent<ControlRockS2>().respawn.transform.position;
		}
	}

	void OnTriggerEnter(Collider col){
		if (col.gameObject.tag == "Harmful") {
			GetComponentInParent<ControlRockS2>().transform.position = GetComponentInParent<ControlRockS2>().respawn.transform.position;
		}
	}
}
