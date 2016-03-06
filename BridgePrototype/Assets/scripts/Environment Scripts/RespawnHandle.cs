using UnityEngine;
using System.Collections;

public class RespawnHandle : MonoBehaviour {

	public GameObject player1Respawn;
	public GameObject player2Respawn;

	public GameObject p1;
	public GameObject p2;

	private bool play1, play2;

	public bool Player1Check
	{
		set { play1 = value; }
		get { return play1; }
	}

	public bool Player2Check
	{
		set { play2 = value; }
		get { return play2; }
	}

	void OnTriggerEnter(Collider col)
	{
		if (col.gameObject.tag == "Player" && col.gameObject.GetComponent<Player1Script>().Player1)
		{
			play1 = true;
			p1 = col.gameObject;
		}
		else if (col.gameObject.tag == "Player" && !col.gameObject.GetComponent<Player1Script>().Player1)
		{
			play2 = true;
			p2 = col.gameObject;
		}

		if (play1 && play2)
		{
			p1.GetComponent<Player1Script>().RespawnPosition = player1Respawn.transform.position;
			p2.GetComponent<Player1Script>().RespawnPosition = player2Respawn.transform.position;
			Destroy(transform.gameObject);
		}
	}
}
