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
		if (additive) {
			col.GetComponent<Rigidbody>().velocity += transform.up * bounceForce;;
		} else {
			col.GetComponent<Rigidbody>().velocity = transform.up * bounceForce;
		}
	}
}
