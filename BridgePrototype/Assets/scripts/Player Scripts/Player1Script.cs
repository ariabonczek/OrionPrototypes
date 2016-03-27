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
	private float distance;
	
	private Vector3 respawnPosition;
	private Vector3 movementVec;
	private float powerBoost;
	private float camAngleOnY;
	private float camAngleOnX;
	private bool climbing;
	private bool actionButton;
	private bool actionButtonPrev;
	private bool airborne; 
	private float run;
	private float cameraAngleDiff;
	private RaycastHit hit;
	private Ray ray;
	GameObject[] barriers;
	public float buttonPromptIntroTimer;
	private float buttonPromptTimerCurrent;
	private bool buttonPromptOn;
	private float timeStart;

	public string mySButton;
	public string myXButton;
	public string myTButton;
	public string myOButton;
	public string myShareButton;

	public string myR2Trigger;
	public string myL2Trigger;

	public string myLeftStick;
	public string myRightStick;

	public Vector3 RespawnPosition
	{
		set { respawnPosition = value; }
		get { return respawnPosition; }
	}

	// Use this for initialization
	void Start () {
		actionButton = false;
		actionButtonPrev = false;
		climbing = false;
		airborne = false;
		speed = 3;
		hoverCount = 0;
		pressCount = 0;
		lifeforce = 100;
		distance=0;
		cameraAngleDiff = 0;
		movementVec = new Vector3(0,0,0);
		hit = new RaycastHit();
		powerBoost = 1;
		camAngleOnY=0;
		camAngleOnX=0;
		run = 2;

		Color tempColor = transform.GetChild (1).GetComponent<SpriteRenderer> ().color;
		tempColor.a = 0f;
		transform.GetChild (1).GetComponent<SpriteRenderer> ().color = tempColor;

		if(Player1){
			barriers = GameObject.FindGameObjectsWithTag("Shadow Barrier");
			myOButton = "P1O";
			mySButton = "P1S";
			myTButton = "P1T";
			myXButton = "P1X";
			myR2Trigger = "P1R2";
			myL2Trigger = "P1L2";
			myLeftStick = "P1LeftStick";
			myRightStick = "P1RightStick";
			myShareButton = "P1Share";
		}else {
			barriers = GameObject.FindGameObjectsWithTag("Light Barrier");
			myOButton = "P2O";
			mySButton = "P2S";
			myTButton = "P2T";
			myXButton = "P2X";
			myR2Trigger = "P2R2";
			myL2Trigger = "P2L2";
			myLeftStick = "P2LeftStick";
			myRightStick = "P2RightStick";
			myShareButton = "P2Share";
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

		ray = new Ray(transform.position, -transform.up);
		if (Physics.Raycast(ray, out hit, .7f))
		{
			if(!hit.collider.isTrigger && hit.transform.gameObject.tag!= "Player"){
			airborne = false;
			}

		}
		else
		{
			airborne = true;
		}

		/*if (rig.velocity.y <= 0)
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
		}*/
	}
	
	// Update is called once per frame
	void Update () {

		this.transform.up = Vector3.up;
		transform.GetChild (0).eulerAngles = new Vector3 (0, transform.GetChild (0).eulerAngles.y, 0);

		if (Input.GetButton (myShareButton)) {
			Debug.Log("Pressed");
			Application.Quit();
		}

		transform.GetChild (1).forward = (myCamera.transform.forward);

		DisplayPrompts ();

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

		if(Input.GetButton(myTButton)){
			run = 2;
		} else {
			//Patchwork to make Run constant, put back to one for run controls
			run = 2;
		}

		if (climbing) {
			this.transform.Translate (Vector3.up * -(Input.GetAxis (myLeftStick + "Y") * speed * Time.deltaTime));
		} else {
			movementVec.x = (Vector3.left * -(Input.GetAxis (myLeftStick + "X") * speed*run * powerBoost * Time.deltaTime)).x;
			movementVec.z = (Vector3.forward * -(Input.GetAxis (myLeftStick + "Y") * speed*run * powerBoost * Time.deltaTime)).z;
			
			movementVec = Quaternion.AngleAxis(cameraAngleDiff, Vector3.up) * movementVec;
			
			movementVec *= powerBoost;
			
			this.transform.Translate(movementVec);
			
			if (Input.GetButtonDown (myXButton) && airborne == false) {
				
				if (pressCount <= 5f)
				{
					Jump();
					pressCount++;
				}
			}
			
			if(Input.GetButtonUp (myXButton)){
				pressCount = 0;
			}
			
			if(Input.GetAxis(myLeftStick + "X")>.1f  || Input.GetAxis(myLeftStick + "Y") >.1f || Input.GetAxis(myLeftStick + "X")<-.1f  || Input.GetAxis(myLeftStick + "Y")<-.1f){
				this.gameObject.transform.GetChild(0).forward = movementVec;}
			
			if(myCamera.tag == "MainCamera"){
				camAngleOnX =0;
				camAngleOnY = 0;
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

	void DisplayPrompts(){
		if (buttonPromptOn) {
			if (buttonPromptTimerCurrent < buttonPromptIntroTimer) {
				buttonPromptTimerCurrent += (Time.time - timeStart);

				Color tempColor = transform.GetChild (1).GetComponent<SpriteRenderer> ().color;
				tempColor.a = (buttonPromptTimerCurrent / buttonPromptIntroTimer);
				transform.GetChild (1).GetComponent<SpriteRenderer> ().color = tempColor;
			}
		} else {
			Color tempColor = transform.GetChild (1).GetComponent<SpriteRenderer> ().color;
			tempColor.a = 0f;
			transform.GetChild (1).GetComponent<SpriteRenderer> ().color = tempColor;
			buttonPromptTimerCurrent =0;
		}
	}

	void Jump()
	{
		hoverCount = 0;
		Rigidbody rig = GetComponent<Rigidbody>();
		rig.velocity += jumpheight * transform.up;
		airborne = true;
	}

	public void Respawn()
	{
		transform.position = respawnPosition;
	}

	void OnCollisionEnter(Collision col)
	{
		if (col.gameObject.tag == "Harmful") {
			Respawn();
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
        if (col.GetComponent<ColorScript>() && ((col.GetComponent<ColorScript>().isWhite && !Player1) || (!col.GetComponent<ColorScript>().isWhite && Player1)))
        {

            if (col.gameObject.tag == "Screw" || col.gameObject.tag == "ControlRockS2" || col.gameObject.tag == "ControlRock" || col.gameObject.tag == "SingleControlRock" || col.gameObject.tag == "Switch")
            {
                buttonPromptOn = true;
                timeStart = Time.time;
            }

            if (col.gameObject.tag == "Switch" && (Input.GetButtonDown(mySButton)))
            {
                if (!col.GetComponentInParent<SwitchScript>().player1)
                {
                    transform.GetChild(0).GetComponent<Renderer>().enabled = false;
                    transform.GetComponent<Rigidbody>().useGravity = false;
                    transform.GetComponent<Collider>().enabled = false;
                    col.GetComponentInParent<SwitchScript>().player1 = this.gameObject;
                    col.GetComponentInParent<SwitchScript>().justEntered = true;
                    if (Player1)
                    {
                        myCamera.GetComponent<CameraScript>().player1 = col.gameObject;
                    }
                    else
                    {
                        myCamera.GetComponent<CameraScript>().player2 = col.gameObject;
                    }

                    buttonPromptOn = false;
                }
            }

            if (col.gameObject.tag == "Screw" && (Input.GetButtonDown(mySButton)))
            {
                if (!col.GetComponentInParent<ScrewScript>().player)
                {
                    transform.GetChild(0).GetComponent<Renderer>().enabled = false;
                    transform.GetComponent<Rigidbody>().useGravity = false;
                    transform.GetComponent<Collider>().enabled = false;
                    col.GetComponentInParent<ScrewScript>().player = this.gameObject;
                    col.GetComponentInParent<ScrewScript>().justEntered = true;
                    if (Player1)
                    {
                        myCamera.GetComponent<CameraScript>().player1 = col.gameObject;
                    }
                    else
                    {
                        myCamera.GetComponent<CameraScript>().player2 = col.gameObject;
                    }

                    buttonPromptOn = false;
                }
            }

            if (col.gameObject.tag == "ControlRockS2" && (Input.GetButtonDown(mySButton)))
            {
                if (Player1)
                {
                    col.GetComponent<ControlRockS2>().player1 = this.gameObject;
                    myCamera.GetComponent<CameraScript>().player1 = col.transform.GetChild(0).gameObject;
                }
                else
                {
                    col.GetComponent<ControlRockS2>().player2 = this.gameObject;
                    myCamera.GetComponent<CameraScript>().player2 = col.transform.GetChild(1).gameObject;
                }
                col.GetComponent<ControlRockS2>().justEntered = true;

                buttonPromptOn = false;

                this.transform.GetChild(0).GetComponent<Renderer>().enabled = false;
                this.transform.GetComponent<Collider>().enabled = false;
            }

            if (col.gameObject.tag == "ControlRock" && (Input.GetButtonDown(mySButton)))
            {
                if (Player1)
                {
                    col.GetComponent<ControlRock>().player1 = this.gameObject;
                    myCamera.GetComponent<CameraScript>().player1 = col.gameObject;
                }
                else
                {
                    col.GetComponent<ControlRock>().player2 = this.gameObject;
                    myCamera.GetComponent<CameraScript>().player2 = col.gameObject;
                }
                col.GetComponent<ControlRock>().justEntered = true;

                this.transform.GetChild(0).GetComponent<Renderer>().enabled = false;
                this.transform.GetComponent<Collider>().enabled = false;

                buttonPromptOn = false;
            }

            if (col.gameObject.tag == "SingleControlRock" && (Input.GetButtonDown(mySButton)))
            {
                if (!col.GetComponent<SingleControlRock>().player1)
                {
                    col.GetComponent<SingleControlRock>().player1 = this.gameObject;
                    col.GetComponent<SingleControlRock>().justEntered = true;
                    if (Player1)
                    {
                        myCamera.GetComponent<CameraScript>().player1 = col.gameObject;
                    }
                    else
                    {
                        myCamera.GetComponent<CameraScript>().player2 = col.gameObject;
                    }

                    this.transform.GetChild(0).GetComponent<Renderer>().enabled = false;
                    this.transform.GetComponent<Collider>().enabled = false;
                }
                buttonPromptOn = false;
            }

            if (col.gameObject.name == "top" && climbing)
            {
                climbing = false;
                GetComponent<Rigidbody>().useGravity = true;
            }

            if (col.gameObject.name.Contains("Control Panel") && actionButton)
            {
                GameObject.Find(col.gameObject.name).SendMessage("ActivatePanel", "move");
            }

            if (col.gameObject.tag == "DamControl" && actionButton)
            {
                col.GetComponent<DamControlScript>().Dam.GetComponent<DamScript>().goingUp = false;
            }

            if (col.gameObject.name.Contains("platform move") || col.gameObject.tag == "Pad")
            {
                transform.parent = col.gameObject.transform;
            }

            if (Input.GetButton(myOButton) && col.gameObject.tag == "Shadow Gate")
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

            if (Input.GetButton("P2O") && col.gameObject.tag == "Light Gate")
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

            if (Input.GetButton(myOButton) && col.gameObject.tag == "Recepticle")
            {
                if (lifeforce > 0 && col.gameObject.GetComponent<RecepticleScript>().paid < col.gameObject.GetComponent<RecepticleScript>().cost)
                {
                    lifeforce -= .5f;
                    col.gameObject.GetComponent<GateControl>().paid += .05f;
                }
            }

            if (transform.GetComponent<Collider>().enabled == false)
            {
                buttonPromptOn = false;
            }
        }
	}

	void OnTriggerExit(Collider col)
	{
		if (col.gameObject.name.Contains("platform move")|| col.gameObject.tag=="Pad")
		{
			transform.parent = null;
		}

        if (col.gameObject.tag == "Screw" || col.gameObject.tag == "ControlRockS2" || col.gameObject.tag == "ControlRock" || col.gameObject.tag == "SingleControlRock" || col.gameObject.tag == "Switch")
        {
			buttonPromptOn = false;
		}
	}
}
