using UnityEngine;
using System.Collections;

public class BallScript : MonoBehaviour {

	public Vector3 velo;
	public int ballNum;


	// Update is called once per frame
	void Update () {
		transform.position += velo;
		this.transform.GetComponentInParent<RockShooterScript> ().distGone[ballNum] += velo.magnitude;
	}

	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == "Screw" || col.gameObject.tag == "Protected") {
            this.GetComponent<Renderer>().enabled = false;
            this.GetComponent<Collider>().enabled = false;
		}
	}

	public void DestroyBall(){
		transform.parent.GetComponent<RockShooterScript> ().DestroyBall (ballNum);
	}
}
