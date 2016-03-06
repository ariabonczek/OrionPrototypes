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
		if (col.gameObject.tag == "Player" || col.gameObject.tag == "ControlRockS2") {
			if (additive) {
				col.GetComponent<Rigidbody> ().velocity = new Vector3 (col.GetComponent<Rigidbody> ().velocity.x, 0, col.GetComponent<Rigidbody> ().velocity.z);
				col.GetComponent<Rigidbody> ().velocity += transform.up * bounceForce;
				;
			} else {
				col.GetComponent<Rigidbody> ().velocity = transform.up * bounceForce;
			}
		}

		if (col.gameObject.tag == "Harmful") {
			float speed = col.GetComponent<BallScript>().velo.magnitude;
			col.GetComponent<BallScript>().velo = transform.up;
			col.GetComponent<BallScript>().velo = col.GetComponent<BallScript>().velo.normalized * speed;
		}
	}
}
