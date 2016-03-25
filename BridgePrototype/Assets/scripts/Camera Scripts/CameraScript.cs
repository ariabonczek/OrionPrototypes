using UnityEngine;
using System.Collections;

public class CameraScript : MonoBehaviour {

	public bool dynamicOn;
	public GameObject player1;
    public GameObject player2;
	private float playerDist;

    private bool lerping;

    private GameObject lerpPrev;
    private GameObject lerpNext;

    private float timer;
    private float timerStart;
    private float lerpTime;


	// Use this for initialization
	void Start ()
	{
        lerping = false;
	}
	
	// Update is called once per frame
    void Update()
    {
        playerDist = (player1.transform.position - player2.transform.position).magnitude * .8f;

        if (lerping)
        {
            Debug.Log(timer);
            timer = Time.time - timerStart;

            if (timer > lerpTime)
            {
                lerping = false;
				transform.position = lerpNext.transform.position;
            }
            else
            {
                transform.position = Vector3.Lerp(lerpPrev.transform.position, lerpNext.transform.position, (timer / lerpTime));
                transform.forward = Vector3.Lerp(lerpPrev.transform.forward, lerpNext.transform.forward, (timer / lerpTime));
            }

        }
    }

    public void TransitionTo(GameObject newPPoint, float lerpT)
    {
        if (!lerpNext || lerpNext == newPPoint)
        {
            transform.position = newPPoint.transform.position;
            transform.forward = newPPoint.transform.forward;
            lerpNext = newPPoint;
        }
        else
        {
            lerpTime = lerpT;
            lerping = true;

			if(lerpNext.transform.position==transform.position){
            lerpPrev = lerpNext;
			}else {
				lerpPrev = this.gameObject;
			}

            lerpNext = newPPoint;

            timerStart = Time.time;
        }

    }

	void checkPPoints(){

	}
}
