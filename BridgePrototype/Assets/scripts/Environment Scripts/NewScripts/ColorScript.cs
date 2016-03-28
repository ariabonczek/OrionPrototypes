using UnityEngine;
using System.Collections;

public class ColorScript : MonoBehaviour {

    public bool isWhite;

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
        }
	}

	public bool IsMyColor(bool player1){
		return (player1 != isWhite);
	}
}
