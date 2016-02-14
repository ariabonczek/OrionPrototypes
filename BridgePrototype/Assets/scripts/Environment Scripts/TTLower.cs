using UnityEngine;
using System.Collections;

public class TTLower : MonoBehaviour {

	public GameObject parent;
	private TTScript parentTTScript;
	
	// Use this for initialization
	void Start () {
		parentTTScript = parent.GetComponent<TTScript> ();
	}
	
	// Update is called once per frame
	void Update () {
	}
	
	void OnTriggerEnter(Collider col){
		if (!parentTTScript.flung && !parentTTScript.projectile) {
			parentTTScript.projectile = col.gameObject;
		}
	}
	void OnTriggerExit(Collider col){
		if (col.gameObject == parentTTScript.projectile && !parentTTScript.flung) {
			parentTTScript.projectile = null;
		}
	}
}
