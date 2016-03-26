using UnityEngine;
using System.Collections;

public class PPointTrigger : MonoBehaviour {

    public GameObject PPoint;
    private float lerpTime;
    private GameObject camera;

	// Use this for initialization
	void Start () {
        camera = GameObject.FindGameObjectWithTag("MainCamera");
		lerpTime = 1;
	}

    public void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Player" || (col.tag == "SingleControlRock" && col.GetComponent<SingleControlRock>().player1))
        {
            camera.GetComponent<CameraScript>().TransitionTo(PPoint, lerpTime);
        }
    }
}
