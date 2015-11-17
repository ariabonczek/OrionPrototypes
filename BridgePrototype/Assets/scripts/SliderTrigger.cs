using UnityEngine;
using System.Collections;

public class SliderTrigger : MonoBehaviour {

	public GameObject SLIDEMEBLOCK;
	public float slideDistance;
	public float speed;
	private float distanceTraveled;

	void ActivatePanel(string message)
	{
		if (slideDistance >= distanceTraveled)
		{
			Vector3 oldPosition = SLIDEMEBLOCK.transform.position;
			SLIDEMEBLOCK.transform.position += SLIDEMEBLOCK.transform.forward * speed * Time.deltaTime;
			distanceTraveled += Vector3.Distance(oldPosition, SLIDEMEBLOCK.transform.position);
		}
	}
}