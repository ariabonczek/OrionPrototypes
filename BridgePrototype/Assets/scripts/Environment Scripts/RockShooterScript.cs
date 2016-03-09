using UnityEngine;
using System.Collections;

public class RockShooterScript : MonoBehaviour {

	public GameObject Rock;
	public GameObject MaxDistPoint;
	public GameObject RockStartPoint;
	public float rockSpeed;
    public bool DDRMode;
	private float distance;
	public float distGone;

	void Start(){
		distance = (transform.position - MaxDistPoint.transform.position).magnitude;

		Rock.GetComponent<BallScript> ().velo = transform.up * rockSpeed;

        if (DDRMode)
        {
            Rock.GetComponent<Renderer>().enabled = false;
            Rock.GetComponent<Collider>().enabled = false;
        }
	}

	// Update is called once per frame
	void Update () {
        if (!DDRMode)
        {
            if (distGone > distance)
            {
                ReFire();
            }
        }
	}

    public void ReFire()
    {
        distGone = 0;
        Rock.transform.position = RockStartPoint.transform.position;
        Rock.GetComponent<BallScript>().velo = transform.up * rockSpeed;
        Rock.GetComponent<Renderer>().enabled = true;
        Rock.GetComponent<Collider>().enabled = true;
    }
}
