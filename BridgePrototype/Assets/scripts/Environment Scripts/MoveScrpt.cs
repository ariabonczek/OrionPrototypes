using UnityEngine;
using System.Collections;

public class MoveScrpt : MonoBehaviour {

	float start;
	float end;
	public bool up;
	
	// Use this for initialization
	void Start () {
		start = transform.position.y;
		end = transform.position.y + 5;
	}
	
	// Update is called once per frame
	void Update () {
		if(up){
			if(!(transform.position.y >end)){
				transform.position+= (transform.up*.04f);
			}
		}else{
			if(!(transform.position.y <start)){
				transform.position-= (transform.up*.04f);
			}
		}
	}
}
