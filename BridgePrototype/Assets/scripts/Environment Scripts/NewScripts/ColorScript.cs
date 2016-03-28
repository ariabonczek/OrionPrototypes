﻿using UnityEngine;
using System.Collections;

public class ColorScript : MonoBehaviour {

    public bool isWhite;
	private CameraScript cam;

	void Start(){
		cam = GameObject.FindGameObjectWithTag ("MainCamera").GetComponent<CameraScript>();
	}

	// Update is called once per frame
	void Update () {
        if (isWhite)
        {
            if (this.gameObject.GetComponent<Renderer>())
            {
                this.gameObject.GetComponent<Renderer>().material.color = Color.white;
            }
            Renderer[] rS = transform.GetComponentsInChildren<Renderer>();
            for (int i = 0; i < rS.Length; i++)
            {
                rS[i].material.color = Color.white;
            }

			if(this.gameObject.tag!="Harmful" || this.gameObject.tag!="SingleControlRock"){
				Physics.IgnoreCollision(transform.GetComponent<Collider>(),cam.player2.GetComponent<Collider>());
				Physics.IgnoreCollision(transform.GetComponent<Collider>(),cam.player1.GetComponent<Collider>(),false);
			}
        }
        else
        {
            if (this.gameObject.GetComponent<Renderer>())
            {
                this.gameObject.GetComponent<Renderer>().material.color = Color.black;
            }
            Renderer[] rS = transform.GetComponentsInChildren<Renderer>();
            for (int i = 0; i < rS.Length; i++)
            {
                rS[i].material.color = Color.black;
            }

			if(this.gameObject.tag!="Harmful" || this.gameObject.tag!="SingleControlRock"){
				Physics.IgnoreCollision(transform.GetComponent<Collider>(),cam.player1.GetComponent<Collider>());
				Physics.IgnoreCollision(transform.GetComponent<Collider>(),cam.player2.GetComponent<Collider>(),false);
			}
        }
	}

	public bool IsMyColor(bool player1){
		return (player1 != isWhite);
	}
}
