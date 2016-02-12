using UnityEngine;
using System.Collections;

public class PressurePad : MonoBehaviour {

	public GameObject trigger;
	public GameObject target;

	void OnCollisionEnter(Collision col){
		if (col.gameObject == trigger) {
			transform.position -= new Vector3(0,.5f,0);
			target.GetComponent<MoveScrpt>().up = true;
			if(trigger.gameObject.tag == "ControlRock"){
				trigger.gameObject.GetComponent<ControlRock>().DestroySelf(transform.GetChild(0).transform.position,transform.GetChild(1).transform.position);
			} else {
			trigger.gameObject.GetComponent<ControlRockS2>().DestroySelf(transform.GetChild(0).transform.position,transform.GetChild(1).transform.position);
			}
		}
	}
}
