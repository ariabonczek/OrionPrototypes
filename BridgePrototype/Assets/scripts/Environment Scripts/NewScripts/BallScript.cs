using UnityEngine;
using System.Collections;

public class BallScript : MonoBehaviour {

	public Vector3 velo;


	// Update is called once per frame
	void Update () {
		transform.position += velo;
		this.GetComponentInParent<RockShooterScript> ().distGone += velo.magnitude;
	}

	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == "Mushroom") {
			float speed = velo.magnitude;
			velo = col.transform.up;
			velo = velo.normalized * speed;
		}
	}
}
