using UnityEngine;
using System.Collections;

public class QuickTeleportScript : MonoBehaviour {

	public void OnTriggerEnter(){
		Application.LoadLevel(1);
	}
}
