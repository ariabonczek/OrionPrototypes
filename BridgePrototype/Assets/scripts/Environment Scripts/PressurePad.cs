using UnityEngine;
using System.Collections;

public class PressurePad : MonoBehaviour {

	public GameObject trigger;
	public GameObject target;

	void OnTriggerEnter(Collider col){
		if (col.gameObject == trigger) {
			transform.GetChild(0).transform.position -= new Vector3(0,.5f,0);
			target.GetComponent<MoveScrpt>().triggered = true;
		}
	}

	void OnTriggerExit(Collider col){
		if (col.gameObject == trigger) {
			transform.GetChild(0).transform.position += new Vector3(0,.5f,0);
			target.GetComponent<MoveScrpt>().triggered = false;
		}
	}
}

