using UnityEngine;
using System.Collections;

public class DynamicTrigger : MonoBehaviour {

	public bool setDynamicOn;
	
	void OnTriggerEnter(Collider col){
		if (col.gameObject.tag == "Player") {
			if(GameObject.FindGameObjectWithTag("MainCamera").GetComponent<CameraScript>().dynamicOn != setDynamicOn){
				GameObject.FindGameObjectWithTag("MainCamera").GetComponent<CameraScript>().dynamicOn = setDynamicOn;
			}
		}
	}
}
