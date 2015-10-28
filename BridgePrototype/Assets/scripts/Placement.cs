using UnityEngine;
using System.Collections;

public class Placement : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerStay(Collider col)
	{
		if (col.gameObject.tag == "smallRock")
		{
			col.transform.position = transform.position;
			col.gameObject.tag = "PlaceHolder";
			// col.transform.position += new Vector3(0, -1, 0);
			Destroy(transform.gameObject);
		}
	}
}
