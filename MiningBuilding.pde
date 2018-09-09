class MiningBuilding extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  float openTimer = 0;
  float indoors = 0;
  PImage fortBuilding;
  
  PImage fortBuilding2;
  PImage door1;
  PImage door2;
  float placeX = 0;
  float placeY = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;

  float transperancy = 225;
  PImage guardIdle;
  PImage guardRight;
  PImage guardRightStep;

  PImage guardLeft;
  PImage guardLeftStep;

  PImage swingSword1;
  PImage swingSword2;
  PImage swingSwordL1;
  PImage swingSwordL2;
  float range;
  float current;
  float direction;
  float guardRun =0;
  float deadguard = 0;
  float timer = 0;
  float guardHealth = 5;
  float timer2 = 0;
  float timer3 = 0;
  float timer4 = 0;
  float detect = 0;
  float detect2 = 0;
  float alert = 0;
  float fortHeight = 47;
  float lock = 0;
  float roomBorder;
  color brown = (80);
  float equipment = random (1,4);

  MiningBuilding(float x, float h)
  {
    super(x);

    _h = h;
  }



  void setup()
  {
    fortBuilding = loadImage ("miningHouse1.png");
    
    fortBuilding2 = loadImage ("miningHouse1Red.png");
    door1 = loadImage ("miningHouse1DoorGray.png");
    door2 = loadImage ("miningHouse1DoorRed.png");
    guardIdle = loadImage("Char_primary.png");
    guardRight = loadImage ("Char_run1.png");
    guardRightStep = loadImage("Char_run2.png");

    guardLeft = loadImage("Char_Lrun1.png");
    guardLeftStep = loadImage("Char_Lrun2.png");

    swingSword1 = loadImage("Char_swordStrike1.png");
    swingSword2 = loadImage("Char_swordStrike2.png");
    swingSwordL1 = loadImage ("Char_LswordStrike1.png");
    swingSwordL2 = loadImage ("Char_LswordStrike2.png");
  }
  void draw()
  {

    if (visible()) {
      float x = xPos();
      float y = yPos();
      openTimer = openTimer + 1;
      y -= _h + 10;
      

      if (indoors == 0 && openTimer > 20)
      {
        
        image (fortBuilding, x, y);
        if (width/2 >= x + 235 && width/2 < x + 310)
        {
          if (mouseX >= x + 235 && mouseX < x + 310 ) {

            image (fortBuilding2, x, y);
            if (mousePressed && gateButton == 0)
            {
              indoors = 1;
              openTimer = 0;
            }
          }
        }
      }
      if (indoors == 1 && openTimer >= 20)
      {
        mobStop = 1;
      if (width/2 > x + 475 )
      {
        rightStop = 1;
      }
       else
       {
         rightStop = 0;
       }
       if (width/2 < x + 120) 
       {
         leftStop = 1;
      
       }
       else
       {
         leftStop = 0;
       }
      

        openTimer = openTimer + 1;

        if (width/2 >= x + 235 && width/2 < x + 310)
        {
          image (door1, x, y );


          if (mouseX >= x + 235 && mouseX < x + 310 ) {

            image (door2, x, y);
            if (mousePressed)
            {
              indoors = 0;
              openTimer = 0;
              mobStop = 0;
            }
          }
        }
      }
    }
  }
}


