using UnityEngine;
using System.Collections;

public class PPointTrigger : MonoBehaviour {

    public GameObject PPoint;
    public float lerpTime;
    private GameObject camera;

	// Use this for initialization
	void Start () {
        camera = GameObject.FindGameObjectWithTag("MainCamera");
	}

    public void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Player" || col.tag == "SingleControlRock")
        {
            camera.GetComponent<CameraScript>().TransitionTo(PPoint, lerpTime);
        }
    }
}
