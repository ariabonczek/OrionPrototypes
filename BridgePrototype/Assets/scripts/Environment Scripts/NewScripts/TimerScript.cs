using UnityEngine;
using System.Collections;

public class TimerScript : MonoBehaviour {
	
	private bool active;
	public float TimerAmount;
	private float timerStart;
	private float timerCurrent;
	public GameObject target;

	// Use this for initialization
	void Start () {
		timerStart = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
		timerCurrent = Time.time - timerStart;

		if (timerCurrent > TimerAmount) {
			timerStart = Time.time;
			target.GetComponent<ColorScript>().isWhite = !target.GetComponent<ColorScript>().isWhite;
		}
	
	}
}
