using UnityEngine;
using System.Collections;

public class RespawnHandle : MonoBehaviour {

	public GameObject player1Respawn;
	public GameObject player2Respawn;

	void OnTriggerEnter(Collider col)
	{
		if (col.gameObject.name == "Player 1")
		{
			GameObject.Find("Player 1").GetComponent<Player1Script>().RespawnPosition = player1Respawn.transform.position;
		}
		else if (col.gameObject.name == "Player 2")
		{
			GameObject.Find("Player 2").GetComponent<Player2Script>().RespawnPosition = player2Respawn.transform.position;
		}
	}
}
