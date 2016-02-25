﻿using UnityEngine;
using System.Collections;

public class TTUpper : MonoBehaviour {
	public GameObject parent;
	private TTScript parentTTScript;
	bool needsTwo;
	bool hasOne;
	float velocityNeeded;
	
	// Use this for initialization
	void Start () {
		parentTTScript = parent.GetComponent<TTScript> ();
		needsTwo = parentTTScript.needsTwo;
		velocityNeeded = parentTTScript.velocityNeeded;
	}
	
	void OnTriggerEnter(Collider col){
		if (col.gameObject == parentTTScript.trigger && !parentTTScript.flung) {
			//rotate teeter totter
			parent.transform.GetChild (1).Rotate (0, 0, 30);
			parentTTScript.flung = true;
			if (parentTTScript.trigger.gameObject.tag == "ControlRock") {
				parentTTScript.trigger.gameObject.GetComponent<ControlRock> ().DestroySelf (parent.transform.position + new Vector3(1,0,1), parent.transform.position+ new Vector3(1,0,1));
			}
		}else if (!needsTwo && parentTTScript.projectile && parentTTScript.projectile != col.gameObject && !parentTTScript.trigger && (col.tag == "Player") && col.gameObject.GetComponent<Rigidbody>().velocity.y< velocityNeeded) {
			parent.transform.GetChild (1).Rotate (0, 0, 30);
			parent.GetComponent<TTScript>().flung = true;
		} else if (needsTwo && !hasOne && parentTTScript.projectile != col.gameObject && !parentTTScript.trigger && (col.tag == "Player") && !parentTTScript.flung) {
			hasOne = true;
		} else if (needsTwo && hasOne && parentTTScript.projectile != col.gameObject && !parentTTScript.trigger && (col.tag == "Player") && !parentTTScript.flung && col.gameObject.GetComponent<Rigidbody>().velocity.y< velocityNeeded) {
			parent.transform.GetChild (1).Rotate (0, 0, 30);
			parentTTScript.flung = true;
		}
	}
	void OnTriggerExit(Collider col){
		if (hasOne) {
			hasOne = false;
		}
	}
}