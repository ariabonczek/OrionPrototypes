using UnityEngine;
using System.Collections;

public class SliderTrigger : MonoBehaviour {

	public GameObject SLIDEMEBLOCK;
	public float slideDistance;
	public float speed;
	private float distanceTraveled;
	private bool forward = true;

	void ActivatePanel(string message)
	{
		if (forward)
		{
			if (slideDistance >= distanceTraveled)
			{
				Vector3 oldPosition = SLIDEMEBLOCK.transform.position;
				SLIDEMEBLOCK.transform.position += SLIDEMEBLOCK.transform.forward * speed * Time.deltaTime;
				distanceTraveled += Vector3.Distance(oldPosition, SLIDEMEBLOCK.transform.position);
			}
			else
			{
				forward = false;
				distanceTraveled = 0;
			}
		}
		else
		{
			if (slideDistance >= distanceTraveled)
			{
				Vector3 oldPosition = SLIDEMEBLOCK.transform.position;
				SLIDEMEBLOCK.transform.position += -(SLIDEMEBLOCK.transform.forward) * speed * Time.deltaTime;
				distanceTraveled += Vector3.Distance(oldPosition, SLIDEMEBLOCK.transform.position);
			}
			else
			{
				forward = true;
				distanceTraveled = 0;
			}
		}
	}
}