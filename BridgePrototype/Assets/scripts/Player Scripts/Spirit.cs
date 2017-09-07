using UnityEngine;
using System.Collections;

public class Spirit : MonoBehaviour {

	public GameObject[] playerList;

	private GameObject seeker;
	public GameObject particle;


	public float collisionDist = 0;

	private int targetIndex = 0;

	private Vector3 velocity;
	private Vector3 acceleration;

	public float maxSpeed = 0;
	public float maxForce = 0;
	// Use this for initialization
	void Start () {
		acceleration = new Vector3 (0, 0, 0);
		velocity = new Vector3 (0, 0, 0);

		seeker = (GameObject)Instantiate(particle, playerList [targetIndex].transform.position, playerList [targetIndex].transform.rotation);
		
	}
	
	// Update is called once per frame
	void Update () {
		CheckCollision ();
		Seek ();


		velocity += acceleration;
		if (velocity.magnitude > maxSpeed) {
			velocity = velocity.normalized * maxSpeed;
		}
		seeker.transform.position += velocity / 10;
		acceleration *= 0;


	}

	void Seek()
	{
		Vector3 tarDist = playerList [targetIndex].transform.position - seeker.transform.position;
		tarDist = tarDist.normalized;
		tarDist *= maxSpeed;

		Vector3 steer = tarDist - velocity;

		if (steer.magnitude > maxForce) {
			steer = steer.normalized * maxForce;
		}
		acceleration += steer;
	}

	void CheckCollision(){
		if ((playerList [targetIndex].transform.position - seeker.transform.position).magnitude < collisionDist) {
			targetIndex = (targetIndex + 1) % playerList.Length;

		}
	}
}
