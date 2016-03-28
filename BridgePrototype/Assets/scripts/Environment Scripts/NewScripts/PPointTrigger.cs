using UnityEngine;
using System.Collections;

public class PPointTrigger : MonoBehaviour {

    public GameObject PPoint;
	public bool needsTwoPlayers;
	private bool hasP1;
	private bool hasP2;
    private float lerpTime;
    private GameObject camera;

	// Use this for initialization
	void Start () {
        camera = GameObject.FindGameObjectWithTag("MainCamera");
		lerpTime = 1;
	}

    public void OnTriggerEnter(Collider col)
    {
		if (col.tag == "Player" || (col.tag == "SingleControlRock" && col.GetComponent<SingleControlRock> ().player1)) {
			if (needsTwoPlayers) {
				if(col.gameObject == camera.GetComponent<CameraScript> ().player1){
					hasP1 = true;
				} else {
					hasP2 = true;
				}
				if(hasP1 && hasP2){
					camera.GetComponent<CameraScript> ().TransitionTo (PPoint, lerpTime);
				}
			} else {
				camera.GetComponent<CameraScript> ().TransitionTo (PPoint, lerpTime);
			}
		}
    }
}
