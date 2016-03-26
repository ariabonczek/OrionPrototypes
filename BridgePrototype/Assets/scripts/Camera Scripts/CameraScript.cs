using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour {
	
	public GameObject player1;
    public GameObject player2;
	public float minDistance;
	public float maxDistance;
	private Vector3 median;
	private float playerDist;

	private GameObject queuedPPoint;
	private float queuedLerpT;

	private bool collided;

	private Ray ray;
	private RaycastHit hit;

	private float camDistance;

    private bool lerping;

    private GameObject previousPPoint;
    private GameObject currentPPoint;

    private float timer;
    private float timerStart;
    private float lerpTime;


	// Use this for initialization
	void Start ()
	{
        lerping = false;
		playerDist = (player1.transform.position - player2.transform.position).magnitude;
		median = player1.transform.position + ((player1.transform.position - player2.transform.position).normalized * playerDist/2);
		collided = false;
		if (maxDistance == 0) {
			maxDistance = 100;
		}
	}
	
	// Update is called once per frame
    void Update()
    {
		if (currentPPoint) {
			playerDist = (player1.transform.position - player2.transform.position).magnitude;
			
			camDistance = currentPPoint.GetComponent<PPointScript> ().distance * playerDist;
			
			camDistance = Mathf.Max (camDistance, minDistance);
			
			camDistance = Mathf.Min (camDistance, maxDistance);
			
			median = player2.transform.position + ((player1.transform.position - player2.transform.position).normalized * playerDist/2);
			
			currentPPoint.transform.position = median - (currentPPoint.transform.forward * camDistance);
			
			this.transform.position = currentPPoint.transform.position;
			
			ray = new Ray(median, this.transform.position -median);
			if (Physics.Raycast (ray, out hit, (this.transform.position -median).magnitude)) {
				if (hit.collider.gameObject != this.gameObject && hit.collider.gameObject.tag != "Player" && !hit.collider.isTrigger && hit.collider.gameObject.tag != "Othe") {
					this.transform.position = median + (this.transform.position - median).normalized * (hit.distance);
				}
			}
			
			if (lerping)
			{
				timer = Time.time - timerStart;
				
				if (timer > lerpTime)
				{
					lerping = false;
					transform.position = currentPPoint.transform.position;
					if(queuedPPoint){
						TransitionTo(queuedPPoint, queuedLerpT);
						queuedPPoint =null;
					}
				}
				else
				{
					transform.position = Vector3.Lerp(previousPPoint.transform.position, currentPPoint.transform.position, (timer / lerpTime));
					transform.forward = Vector3.Lerp(previousPPoint.transform.forward, currentPPoint.transform.forward, (timer / lerpTime));
				}
				
			}
		}
        
    }

    public void TransitionTo(GameObject newPPoint, float lerpT)
    {
		if (!lerping) {
			newPPoint.transform.position = median;

			if(currentPPoint){
				string lol = currentPPoint.name;
			}

			string lol2 = newPPoint.name;

			if (!currentPPoint || currentPPoint.name == newPPoint.name) {
				transform.position = newPPoint.transform.position;
				transform.forward = newPPoint.transform.forward;
				currentPPoint = newPPoint;
			} else {
				lerpTime = lerpT;

				previousPPoint = currentPPoint;

				currentPPoint = newPPoint;

				timerStart = Time.time;

				lerping = true;
			}
		} else {
			queuedPPoint = newPPoint;
			queuedLerpT = lerpT;
		}
    }

	void checkPPoints(){

	}
}
