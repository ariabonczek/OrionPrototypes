using UnityEngine;
using System.Collections;

public class BoulderScript : MonoBehaviour {

	public GameObject trigger;

	void OnCollisionEnter(Collision col){
		Debug.Log ("Collision Entered");
		if (col.gameObject == trigger) {
			Destroy (trigger);
			this.GetComponent<Renderer>().enabled = false;
			this.GetComponent<Collider>().enabled = false;
		}
	}
}
