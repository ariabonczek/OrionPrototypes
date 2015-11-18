using UnityEngine;
using System.Collections;

public class LavaReset : MonoBehaviour {

	void OnCollisionEnter(Collision col)
	{
		if (col.gameObject.tag == "Player")
		{
			GameObject.Find(col.gameObject.name).SendMessage("Respawn", "come back");
		}
	}
}
