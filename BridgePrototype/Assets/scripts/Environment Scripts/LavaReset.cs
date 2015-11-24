using UnityEngine;
using System.Collections;

public class LavaReset : MonoBehaviour {

	void OnCollisionEnter(Collision col)
	{
		if (col.gameObject.tag == "Player")
		{
			GameObject.Find("Player 1").SendMessage("Respawn", "come back");
			GameObject.Find("Player 2").SendMessage("Respawn", "come back");

			GameObject[] movedPlatforms;
			movedPlatforms = GameObject.FindGameObjectsWithTag("Panel");

			foreach ( GameObject g in movedPlatforms)
			{
				g.SendMessage("ResetPosition", "go back");
			}
		}
	}
}
