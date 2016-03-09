using UnityEngine;
using System.Collections;

public class BoulderScript : MonoBehaviour {

	public GameObject trigger;

	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == "ControlRockS2") {
			col.gameObject.GetComponent<ControlRockS2>().DestroySelf(this.transform.position + new Vector3(1,1,0),this.transform.position + new Vector3(-1,1,0) );
		}
		if (col.gameObject == trigger) {
			Destroy (trigger);
			this.GetComponent<Renderer>().enabled = false;
			this.GetComponent<Collider>().enabled = false;
		}
	}
}
