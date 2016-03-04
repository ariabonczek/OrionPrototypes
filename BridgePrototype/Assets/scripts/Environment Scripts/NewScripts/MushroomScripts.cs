using UnityEngine;
using System.Collections;

public class MushroomScripts : MonoBehaviour {


	public float bounceForce;

	public bool additive;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider col){
		if (col.gameObject.tag != "Mushroom") {
			if (additive) {
				col.GetComponent<Rigidbody> ().velocity = new Vector3 (col.GetComponent<Rigidbody> ().velocity.x, 0, col.GetComponent<Rigidbody> ().velocity.z);
				col.GetComponent<Rigidbody> ().velocity += transform.up * bounceForce;
				;
			} else {
				col.GetComponent<Rigidbody> ().velocity = transform.up * bounceForce;
			}
		}
	}
}
