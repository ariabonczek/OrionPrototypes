using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RockShooterScript : MonoBehaviour {

	//public GameObject Rock;
	public GameObject rockPrefab;
	public List<GameObject> Rocks;
	public GameObject MaxDistPoint;
	public GameObject RockStartPoint;
	public float rockSpeed;
    public bool DDRMode;
	private float distance;
	public List<float> distGone;
	public float totalShotTime;
	public float shotTimeOffset;

	private float currentShotTime;
	private float startShotTime;

	void Start(){
		distance = (transform.position - MaxDistPoint.transform.position).magnitude;
		startShotTime = Time.time - shotTimeOffset;
		if (rockSpeed == 0) {
			rockSpeed =1;
		}
		if (totalShotTime == 0) {
			totalShotTime =3;
		}
		Rocks = new List<GameObject> ();
		distGone = new List<float> ();
	}

	// Update is called once per frame
	void Update () {

		currentShotTime = Time.time - startShotTime;

        if (!DDRMode)
        {
			if (currentShotTime >= totalShotTime) {
				Fire();
			}

			for(int i=0;i<Rocks.Count;i++){
	            if (distGone[i] > distance)
	            {
					DestroyBall(i);
					i--;
	            }
			}

			for(int i=0;i<Rocks.Count;i++){
				Rocks[i].GetComponent<BallScript>().ballNum = i;
			}
        }
	}

	public void DestroyBall(int i){
		GameObject.Destroy(Rocks[i]);
		Rocks.RemoveAt(i);
		distGone.RemoveAt(i);
	}

    public void Fire()
    {
		startShotTime= Time.time;
		Rocks.Add(GameObject.Instantiate(rockPrefab));
		Rocks[Rocks.Count-1].transform.position = RockStartPoint.transform.position;
		Rocks[Rocks.Count-1].GetComponent<BallScript>().velo = transform.up * .03f * rockSpeed;
		Rocks[Rocks.Count-1].transform.parent = transform;
		Rocks[Rocks.Count-1].GetComponent<BallScript>().ballNum = Rocks.Count-1;
		if (this.GetComponent<ColorScript> ()) {
			Rocks[Rocks.Count-1].AddComponent<ColorScript>();
			Rocks[Rocks.Count-1].GetComponent<ColorScript>().isWhite = this.GetComponent<ColorScript> ().isWhite;
		}
		distGone.Add(0);
    }
}
