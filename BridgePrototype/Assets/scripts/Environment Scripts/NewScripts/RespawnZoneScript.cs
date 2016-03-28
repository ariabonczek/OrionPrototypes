using UnityEngine;
using System.Collections;

public class RespawnZoneScript : MonoBehaviour {

	private bool hasP1;
	private bool hasP2;

	private Vector3 P1S;
	private Vector3 P2S;

	private GameObject cam;

	// Use this for initialization
	void Start () {
		cam = GameObject.FindGameObjectWithTag ("MainCamera");
		P1S = transform.GetChild (0).position;
		P2S = transform.GetChild (1).position;
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	
	public void OnTriggerEnter(Collider col)
	{
		if (col.tag == "Player" || (col.tag == "SingleControlRock" && col.GetComponent<SingleControlRock> ().player1)) {
			if(col.gameObject == cam.GetComponent<CameraScript> ().player1){
				hasP1 = true;
			} else {
				hasP2 = true;
			}
			if(hasP1 && hasP2){
				cam.GetComponent<CameraScript> ().player1.GetComponent<Player1Script>().RespawnPosition = P1S;
				cam.GetComponent<CameraScript> ().player2.GetComponent<Player1Script>().RespawnPosition = P2S;
			}
		}
	}
}
