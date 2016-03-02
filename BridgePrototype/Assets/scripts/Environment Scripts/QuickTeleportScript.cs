using UnityEngine;
using System.Collections;

public class QuickTeleportScript : MonoBehaviour {

	public int level;

	public void OnTriggerEnter(){
		Application.LoadLevel(level);
	}
}
