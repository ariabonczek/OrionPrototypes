using UnityEngine;
using System.Collections;

public class LavaReset : MonoBehaviour {

	void OnCollisionEnter(Collision col)
	{
		if (col.gameObject.tag == "Player")
		{
			col.gameObject.GetComponent<Player1Script>().Respawn();

			GameObject[] checkpoints;
			checkpoints = GameObject.FindGameObjectsWithTag("checkpoint");

			if (col.gameObject.tag == "Player")
			{
				foreach ( GameObject g in checkpoints)
				{
					g.GetComponent<RespawnHandle>().Player1Check = false;
				}
			}

			GameObject[] movedPlatforms;
			movedPlatforms = GameObject.FindGameObjectsWithTag("Panel");

			foreach ( GameObject g in movedPlatforms)
			{
				g.SendMessage("ResetPosition", "go back");
			}
		}
	}
}
