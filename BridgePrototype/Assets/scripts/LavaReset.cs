using UnityEngine;
using System.Collections;

public class LavaReset : MonoBehaviour {

	public GameObject p1reset;
	public GameObject p2reset;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision col)
	{
		if (col.gameObject.tag == "Player")
		{
			col.transform.position = p1reset.transform.position;
		}
		else if (col.gameObject.tag == "Player2")
		{
			col.transform.position = p2reset.transform.position;
		}
	}
}
