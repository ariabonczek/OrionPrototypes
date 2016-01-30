using UnityEngine;
using System.Collections;

public class Player1Script : MonoBehaviour {

	public float speed;
	public float jumpheight;
	private float hoverCount;
	private float pressCount;
	private float lifeforce;
	private int resources;
	private float distance;
	public bool Player1;
	
	private Vector3 respawnPosition;
	private float countdown;
	private float stepCounter;
	private float launchBuffer;
	private bool climbing;
	private bool actionButton;
	private bool actionButtonPrev;
	private bool countRun;
	private bool launching;
	private bool airborne; 
	private bool stepmode;

	public bool Stepmode
	{
		get { return stepmode; }
	}

	public Vector3 RespawnPosition
	{
		set { respawnPosition = value; }
		get { return respawnPosition; }
	}

	// Use this for initialization
	void Start () {
		countRun = false;
		countdown = 50;
		actionButton = false;
		actionButtonPrev = false;
		climbing = false;
		airborne = false;
		stepmode = false;
		launching = false;
		stepCounter = 0;
		speed = 3;
		launchBuffer = .5f;
		hoverCount = 0;
		pressCount = 0;
		lifeforce = 100;
		resources = 0;
		distance=0;
	}
	
	// Update is called once per frame
	void Update () {
		actionButtonPrev = actionButton;
		GetComponent<Rigidbody> ().isKinematic = false;
		Rigidbody rig = GetComponent<Rigidbody> ();

		distance = (GameObject.FindGameObjectWithTag("MainCamera").GetComponent<CameraScript>().Median-transform.position).magnitude;

		if(!Player1){
			Debug.Log(lifeforce);
		}

		if(lifeforce>0){
			lifeforce -=.05f;
		}

		if (rig.velocity.y <= 0)
		{
			if (hoverCount < 10f && pressCount>=1)
			{
				hoverCount++;
				rig.isKinematic = true;
			}
			else
			{
				rig.isKinematic = false;
			}
		}

		if (Player1) {
			if (climbing) {
				if (Input.GetKey (KeyCode.W)) {
					this.transform.Translate (Vector3.up * speed * Time.deltaTime);
				}

				if (Input.GetKey (KeyCode.S)) {
					this.transform.Translate (-Vector3.up * speed * Time.deltaTime);
				}

				this.transform.Translate (Vector3.up * -(Input.GetAxis ("P1LeftStickY") * speed * /*((float)lifeforce/100)*/ Time.deltaTime));
			} else if (launching) {
				Launch ();
				launching = false;
			} else if (stepmode) {
				// no movement
				if (Input.GetKey (KeyCode.Z) || Input.GetButton ("P1O"))
					actionButton = true;
				else {
					actionButton = false;
				}

				GetComponent<Rigidbody> ().isKinematic = true;
			} else {
				if (Input.GetKey (KeyCode.E)) {
					this.transform.Rotate (new Vector3 (0, 1, 0));
				}

				if (Input.GetKey (KeyCode.D)) {
					this.transform.Translate (Vector3.right * speed * Time.deltaTime);
				}

				if (Input.GetKey (KeyCode.W)) {
					this.transform.Translate (Vector3.forward * speed * Time.deltaTime);
				}

				if (Input.GetKey (KeyCode.S)) {
					this.transform.Translate (Vector3.back * speed * Time.deltaTime);
				}

				if (Input.GetKey (KeyCode.Z) || Input.GetButton ("P1O")) {
					actionButton = true;
				} else {
					actionButton = false;
				}

				this.transform.Translate (Vector3.left * -(Input.GetAxis ("P1LeftStickX") * speed* /*((float)lifeforce/100)*/ Time.deltaTime));
				this.transform.Translate (Vector3.forward * -(Input.GetAxis ("P1LeftStickY") * speed* /*((float)lifeforce/100)*/ Time.deltaTime));

				if ((Input.GetKey (KeyCode.X) || Input.GetButton ("P1X")) && airborne == false) {
					Jump ();
					pressCount++;
				}
				if(Input.GetButtonUp ("P1X")){
					pressCount = 0;
				}

				if(Input.GetButton("P1O")  && distance<.5f){
					GameObject.FindGameObjectWithTag("MainCamera").GetComponent<CameraScript>().player2.GetComponent<Player1Script>().lifeforce += (resources*=20); 
					resources =0;
				}

				if(Input.GetAxis("P1LeftStickX")>.1f  || Input.GetAxis("P1LeftStickY") >.1f || Input.GetAxis("P1LeftStickX")<-.1f  || Input.GetAxis("P1LeftStickY")<-.1f){
					this.gameObject.transform.GetChild(0).forward = new Vector3(Input.GetAxis("P1LeftStickX"),0,-Input.GetAxis("P1LeftStickY"));}
			}
		} else {
			if (climbing)
			{
				if (Input.GetKey(KeyCode.Keypad8))
				{
					this.transform.Translate (Vector3.up * speed * Time.deltaTime);
				}
				
				if (Input.GetKey(KeyCode.Keypad5))
				{
					this.transform.Translate (-Vector3.up * speed * Time.deltaTime);
				}
				
				this.transform.Translate (Vector3.up * -(Input.GetAxis("P2LeftStickY") * speed * Time.deltaTime));
			}
			else if(launching)
			{
				Launch ();
				launching = false;
			}
			else if (stepmode)
			{
				// no movement
				if (Input.GetKey (KeyCode.KeypadDivide) || Input.GetButton("P2O"))
				{
					actionButton = true;
				}
				else
				{
					actionButton = false;
				}
				
				GetComponent<Rigidbody>().isKinematic = true;
			}
			else
			{
				if (Input.GetKey(KeyCode.Keypad4))
				{
					this.transform.Translate (Vector3.left * speed * Time.deltaTime);
				}
				
				if (Input.GetKey(KeyCode.Keypad6))
				{
					this.transform.Translate (Vector3.right * speed * Time.deltaTime);
				}
				
				if (Input.GetKey(KeyCode.Keypad8))
				{
					this.transform.Translate (Vector3.forward * speed * Time.deltaTime);
				}
				
				if (Input.GetKey(KeyCode.Keypad5))
				{
					this.transform.Translate (Vector3.back * speed * Time.deltaTime);
				}
				
				if (Input.GetKey (KeyCode.Keypad1) || Input.GetButton("P2X"))
				{
					actionButton = true;
				}
				else
				{
					actionButton = false;
				}
				
				this.transform.Translate (Vector3.left * -(Input.GetAxis("P2LeftStickX") * speed * Time.deltaTime));
				this.transform.Translate (Vector3.forward * -(Input.GetAxis("P2LeftStickY") * speed * Time.deltaTime));
				
				if ((Input.GetKey (KeyCode.Keypad3) || Input.GetButton("P2X")) && airborne == false)
				{
					Jump();
					pressCount++;
				}
				if(Input.GetButtonUp("P2X")){
					pressCount = 0;
				}

				if(Input.GetButton("P2O")  && distance<.5f){
					GameObject.FindGameObjectWithTag("MainCamera").GetComponent<CameraScript>().player1.GetComponent<Player1Script>().lifeforce += (resources*=20); 
					resources =0;
				}

				if(Input.GetAxis("P2LeftStickX")>.1f  || Input.GetAxis("P2LeftStickY") >.1f || Input.GetAxis("P2LeftStickX")<-.1f  || Input.GetAxis("P2LeftStickY")<-.1f){
				this.gameObject.transform.GetChild(0).forward = new Vector3(Input.GetAxis("P2LeftStickX"),0,-Input.GetAxis("P2LeftStickY"));
				}
			}
			
			if (Input.GetKey (KeyCode.KeypadDivide)|| Input.GetButton("P2O"))
			{
				actionButton = true;
			}
			else
			{
				actionButton = false;
			}
		}

		if (countRun) {
			countdown--;
			if(countdown<0){
				countRun=false;
				countdown=50;
			}
		}

	}

	public void FixedUpdated()
	{
		Rigidbody rig = GetComponent<Rigidbody>();

		rig.AddForce(0, -700f, 0);
	}

	void Launch()
	{
		Rigidbody rig = GetComponent<Rigidbody>();
		rig.velocity += (jumpheight / launchBuffer) * transform.up;
	}

	void Jump()
	{
		hoverCount = 0;
		Rigidbody rig = GetComponent<Rigidbody>();
		rig.velocity += jumpheight * transform.up *(float)lifeforce/100;
		airborne = true;
	}

	public void Respawn(string message)
	{
		transform.position = respawnPosition;
	}

	void OnCollisionEnter(Collision col)
	{
		if (col.gameObject.tag == "Ground" || col.gameObject.tag == "Pad" )
		{
			airborne = false;
		}
	}

	void OnCollisionStay(Collision col)
	{
		if (col.gameObject.name == "ladder" && actionButton)
		{
			climbing = true;
			transform.SetParent(col.gameObject.transform);
			GetComponent<Rigidbody>().useGravity = false;
		}
		else if(climbing && actionButton)
		{
			climbing = false;
			transform.parent = null;
			GetComponent<Rigidbody>().useGravity = true;
		}
	}

	void OnTriggerStay(Collider col)
	{
		if(col.gameObject.tag=="Resource"){
			col.GetComponent<Renderer>().enabled=false;
			col.GetComponent<Collider>().enabled=false;
			resources++;
		}

		if (col.gameObject.name == "top" && climbing)
		{
			climbing = false;
			GetComponent<Rigidbody>().useGravity = true;
			transform.parent = null;
		}

		if (col.gameObject.name == "launchpad" && actionButton && actionButtonPrev == false)
		{
			if (!col.gameObject.GetComponent<LaunchPadScript>().set)
			{
				stepmode = true;
				col.gameObject.GetComponent<LaunchPadScript>().set = true;
			}
			else if(!stepmode) 
			{
				launching = true;
			} 
			else 
			{
				stepmode = false;
				col.gameObject.GetComponent<LaunchPadScript>().set = false;
			}
		}

		if(col.gameObject.name.Contains("Control Panel") && actionButton)
		{
			GameObject.Find(col.gameObject.name).SendMessage("ActivatePanel", "move");
		}

		if(col.gameObject.tag=="DamControl" && actionButton)
		{
			col.GetComponent<DamControlScript>().Dam.GetComponent<DamScript>().goingUp=false;
		}

		if(col.gameObject.name.Contains("platform move") || col.gameObject.tag=="Pad")
		{
				transform.parent = col.gameObject.transform;
		}
	}

	void OnTriggerExit(Collider col)
	{
		if (col.gameObject.name.Contains("platform move")|| col.gameObject.tag=="Pad")
		{
			transform.parent = null;
		}
	}
}
