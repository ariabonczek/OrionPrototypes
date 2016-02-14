using UnityEngine;
using System.Collections;

public class Player1Script : MonoBehaviour {

	public GameObject myCamera;
	public GameObject otherPlayer;

	public float dyingdistance;
	public float speed;
	public float jumpheight;
	public bool Player1;
	public Texture life;

	private float hoverCount;
	private float pressCount;
	public float lifeforce;
	private float resources;
	private float distance;
	
	private Vector3 respawnPosition;
	private Vector3 movementVec;
	private float countdown;
	private float stepCounter;
	private float launchBuffer;
	private float powerBoost;
	private float camAngleOnY;
	private float camAngleOnX;
	private bool climbing;
	private bool actionButton;
	private bool actionButtonPrev;
	// private bool jumpPrev;
	private bool countRun;
	private bool launching;
	private bool airborne; 
	private bool stepmode;
	private float run;
	private float cameraAngleDiff;
	private RaycastHit hit;
	private Ray ray;
	GameObject[] barriers;

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
		cameraAngleDiff = 0;
		movementVec = new Vector3(0,0,0);
		hit = new RaycastHit();
		powerBoost = 1;
		camAngleOnY=0;
		camAngleOnX=0;
		run = 2;

		if(Player1){
			barriers = GameObject.FindGameObjectsWithTag("Shadow Barrier");
		}else {
			barriers = GameObject.FindGameObjectsWithTag("Light Barrier");
		}

		for(int i=0;i<barriers.Length;i++)
		{
			Physics.IgnoreCollision(barriers[i].GetComponent<Collider>(), this.GetComponent<Collider>());
		}
	}

	void FixedUpdate()
	{
		Rigidbody rig = this.GetComponent<Rigidbody>();

		if (!climbing)
		{
			rig.AddForce(0,-6.5f,0);
		}

		if (rig.velocity.y <= 0)
		{
			if (hoverCount < (7f* powerBoost) && pressCount >=1)
			{
				hoverCount++;
				rig.isKinematic = true;
			}
			else
			{
				rig.isKinematic = false;
			}
			
			if (pressCount >= 5f)
			{
				rig.isKinematic = false;
			}
		}
	}
	
	// Update is called once per frame
	void Update () {
		actionButtonPrev = actionButton;
		GetComponent<Rigidbody> ().isKinematic = false;
		Rigidbody rig = GetComponent<Rigidbody> ();

		if(lifeforce>100)
		{
			powerBoost = lifeforce/100;
		}
		else 
		{
			powerBoost = 1;
		}

		cameraAngleDiff = Vector3.Angle(new Vector3(0,0,1),new Vector3(myCamera.transform.forward.x,0,myCamera.transform.forward.z));

		Vector3 cross = Vector3.Cross(new Vector3(0,0,1), new Vector3(myCamera.transform.forward.x,0,myCamera.transform.forward.z));

		if(cross.y<0){
			cameraAngleDiff = -cameraAngleDiff;
		}

		distance = (otherPlayer.transform.position-this.transform.position).magnitude;

		if (distance > dyingdistance) {
			lifeforce -= .025f;
		} else {
			if(lifeforce<101){
				lifeforce += .025f;
			}
		}

		if(lifeforce>100)
		{
			lifeforce -= .025f;
		}

		ray = new Ray(transform.position, -transform.up);
		if (Physics.Raycast(ray, out hit, 1f))
		{
			airborne = false;
		}
		else
		{
			airborne = true;
		}

		/*if(lifeforce>0){
			lifeforce -=.05f;
		}*/

		if (Player1) {
			if(Input.GetButton("P1T")){
				run = 2;
			} else {
				run = 1;
			}
			if (climbing) {
				this.transform.Translate (Vector3.up * -(Input.GetAxis ("P1LeftStickY") * speed * Time.deltaTime));
			} else if (launching) {
				Launch ();
				launching = false;
			} else if (stepmode) {
				// no movement
				if (Input.GetButton ("P1O"))
					actionButton = true;
				else {
					actionButton = false;
				}

				GetComponent<Rigidbody> ().isKinematic = true;
			} else {
				movementVec.x = (Vector3.left * -(Input.GetAxis ("P1LeftStickX") * speed*run * powerBoost * Time.deltaTime)).x;
				movementVec.z = (Vector3.forward * -(Input.GetAxis ("P1LeftStickY") * speed*run * powerBoost * Time.deltaTime)).z;

				movementVec = Quaternion.AngleAxis(cameraAngleDiff, Vector3.up) * movementVec;

				movementVec *= powerBoost;

				//this.transform.Translate (Vector3.left * -(Input.GetAxis ("P1LeftStickX") * speed* /*((float)lifeforce/100)*/ Time.deltaTime));
				//this.transform.Translate (Vector3.forward * -(Input.GetAxis ("P1LeftStickY") * speed* /*((float)lifeforce/100)*/ Time.deltaTime));

				this.transform.Translate(movementVec);

				if (Input.GetButton ("P1X") && airborne == false) {

					if (pressCount <= 5f)
					{
						Jump();
						pressCount++;
					}
				}

				if(Input.GetButtonUp ("P1X")){
					pressCount = 0;
				}

				if(Input.GetButton("P1O")  && distance<.5f){
					GameObject.FindGameObjectWithTag("MainCamera").GetComponent<CameraScript>().player2.GetComponent<Player1Script>().lifeforce += (resources); 
					resources =0;
				}

				if(Input.GetAxis("P1LeftStickX")>.1f  || Input.GetAxis("P1LeftStickY") >.1f || Input.GetAxis("P1LeftStickX")<-.1f  || Input.GetAxis("P1LeftStickY")<-.1f){
					this.gameObject.transform.GetChild(0).forward = movementVec;}

				if(myCamera.tag == "Camera1" || myCamera.tag == "Camera2"){
					Vector3 camForward = new Vector3(0,0,1);

					camAngleOnY += Input.GetAxis("P1RightStickX");
					camAngleOnX += Input.GetAxis("P1RightStickY");

					camForward = Quaternion.AngleAxis(camAngleOnX, Vector3.right) * camForward;
					camForward = Quaternion.AngleAxis(camAngleOnY, Vector3.up) * camForward;

					myCamera.GetComponent<Player1CameraScript>().direction = camForward;
				}

				if(myCamera.tag == "MainCamera"){
					camAngleOnX =0;
					camAngleOnY = 0;
				}
			}
		} else {
			if(Input.GetButton("P2T")){
				run = 2;
			} else {
				run = 1;
			}
			if (climbing) {
				this.transform.Translate (Vector3.up * -(Input.GetAxis ("P2LeftStickY") * speed * Time.deltaTime));
			} else if (launching) {
				Launch ();
				launching = false;
			} else if (stepmode) {
				// no movement
				if (Input.GetButton ("P2O"))
					actionButton = true;
				else {
					actionButton = false;
				}
				
				GetComponent<Rigidbody> ().isKinematic = true;
			} else {
				movementVec.x = (Vector3.left * -(Input.GetAxis ("P2LeftStickX") * speed*run * powerBoost * Time.deltaTime)).x;
				movementVec.z = (Vector3.forward * -(Input.GetAxis ("P2LeftStickY") * speed*run * powerBoost * Time.deltaTime)).z;

				if(Input.GetKey(KeyCode.D)){
					movementVec.x += .03f;
				}
				if(Input.GetKey(KeyCode.A)){
					movementVec.x -= .03f;
				}
				if(Input.GetKey(KeyCode.W)){
					movementVec.z += .03f;
				}
				if(Input.GetKey(KeyCode.S)){
					movementVec.z -= .03f;
				}
				
				movementVec = Quaternion.AngleAxis(cameraAngleDiff, Vector3.up) * movementVec;
				
				movementVec *= powerBoost;
				
				//this.transform.Translate (Vector3.left * -(Input.GetAxis ("P1LeftStickX") * speed* /*((float)lifeforce/100)*/ Time.deltaTime));
				//this.transform.Translate (Vector3.forward * -(Input.GetAxis ("P1LeftStickY") * speed* /*((float)lifeforce/100)*/ Time.deltaTime));
				
				this.transform.Translate(movementVec);
				
				if (Input.GetButton ("P2X") && airborne == false) {
					
					if (pressCount <= 5f)
					{
						Jump();
						pressCount++;
					}
				}
				
				if(Input.GetButtonUp ("P2X")){
					pressCount = 0;
				}
				
				if(Input.GetButton("P2O")  && distance<.5f){
					GameObject.FindGameObjectWithTag("MainCamera").GetComponent<CameraScript>().player1.GetComponent<Player1Script>().lifeforce += (resources); 
					resources =0;
				}
				
				if(Input.GetAxis("P2LeftStickX")>.1f  || Input.GetAxis("P2LeftStickY") >.1f || Input.GetAxis("P2LeftStickX")<-.1f  || Input.GetAxis("P2LeftStickY")<-.1f){
					this.gameObject.transform.GetChild(0).forward = movementVec;}

				if(myCamera.tag == "Camera1" || myCamera.tag == "Camera2"){
					Vector3 camForward = new Vector3(0,0,1);
					
					camAngleOnY += Input.GetAxis("P2RightStickX");
					camAngleOnX += Input.GetAxis("P2RightStickY");

					camForward = Quaternion.AngleAxis(camAngleOnX, Vector3.right) * camForward;
					camForward = Quaternion.AngleAxis(camAngleOnY, Vector3.up) * camForward;
					
					myCamera.GetComponent<Player2CameraScript>().direction = camForward;
				}

				if(myCamera.tag == "MainCamera"){
					camAngleOnX =0;
					camAngleOnY = 0;
				}
			}
			
			if (Input.GetButton("P2O"))
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

	public void OnGUI()
	{
		if (Player1)
		{
			GUI.BeginGroup(new Rect(0, 0, lifeforce, 20));
			GUI.Box(new Rect(0,0, lifeforce, 20), life);
			GUI.EndGroup ();
		}
		else
		{
			GUI.BeginGroup(new Rect(0, 0, lifeforce, 60));
			GUI.Box(new Rect(0, 30, lifeforce, 20), life);
			GUI.EndGroup ();
		}
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
		rig.velocity += jumpheight * transform.up;
		airborne = true;
	}

	public void Respawn(string message)
	{
		transform.position = respawnPosition;
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
		/*
		if(col.gameObject.tag=="Resource"){
			col.GetComponent<Renderer>().enabled=false;
			col.GetComponent<Collider>().enabled=false;
			resources += col.gameObject.GetComponent<Resource>().Value;
		}
		*/

		if (col.gameObject.tag == "ControlRockS2" && (Input.GetButtonUp("P1S") || Input.GetButtonUp("P2S"))) {
			if(!col.GetComponent<ControlRockS2>().playerOneIn){
				col.GetComponent<ControlRockS2>().playerOneIn = true;
				if(!Player1){
					col.GetComponent<ControlRockS2>().player1First = false;
				}
			} else {
				col.GetComponent<ControlRockS2>().playerTwoIn = true;
			}
			if(Player1){
				myCamera.GetComponent<CameraScript>().player1 = col.gameObject;
			} else{
				myCamera.GetComponent<CameraScript>().player2 = col.gameObject;
			}

			this.transform.GetChild(0).GetComponent<Renderer>().enabled = false;
			this.transform.GetComponent<Collider>().enabled = false;
		}

		if (col.gameObject.tag == "ControlRock" && (Input.GetButtonUp("P1S") || Input.GetButtonUp("P2S"))) {
			if(!col.GetComponent<ControlRock>().playerOneIn){
				col.GetComponent<ControlRock>().playerOneIn = true;
				if(!Player1){
					col.GetComponent<ControlRock>().player1First = false;
				}
			} else {
				col.GetComponent<ControlRock>().playerTwoIn = true;
			}
			if(Player1){
				myCamera.GetComponent<CameraScript>().player1 = col.gameObject;
			} else{
				myCamera.GetComponent<CameraScript>().player2 = col.gameObject;
			}
			
			this.transform.GetChild(0).GetComponent<Renderer>().enabled = false;
			this.transform.GetComponent<Collider>().enabled = false;
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

		if(Input.GetButton("P1O") && col.gameObject.tag == "Shadow Gate")
		{
			if (col.gameObject.GetComponent<GateControl>().paid >= col.gameObject.GetComponent<GateControl>().cost)
			{
				col.gameObject.GetComponent<GateControl>().CloseGate();
			}
			if (lifeforce > 0 && col.gameObject.GetComponent<GateControl>().paid < col.gameObject.GetComponent<GateControl>().cost)
			{
				col.gameObject.GetComponent<GateControl>().ShrinkGate();
				lifeforce -= .5f;
				col.gameObject.GetComponent<GateControl>().paid += .05f;
			}
		}

		if(Input.GetButton("P2O") && col.gameObject.tag == "Light Gate")
		{
			if (col.gameObject.GetComponent<GateControl>().paid >= col.gameObject.GetComponent<GateControl>().cost)
			{
				col.gameObject.GetComponent<GateControl>().CloseGate();
			}
			if (lifeforce > 0 && col.gameObject.GetComponent<GateControl>().paid < col.gameObject.GetComponent<GateControl>().cost)
			{
				col.gameObject.GetComponent<GateControl>().ShrinkGate();
				lifeforce -= .5f;
				col.gameObject.GetComponent<GateControl>().paid += .05f;
			}
		}

		if(Input.GetButton("P1O") && col.gameObject.tag == "Recepticle")
		{
			if (lifeforce > 0 && col.gameObject.GetComponent<RecepticleScript>().paid < col.gameObject.GetComponent<RecepticleScript>().cost)
			{
				lifeforce -= .5f;
				col.gameObject.GetComponent<GateControl>().paid += .05f;
			}
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
