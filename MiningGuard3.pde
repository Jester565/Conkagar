class MiningGuard3 extends GroundObject
{
  PImage guardIdle;
  PImage guardRight;
  PImage guardRightStep;

  PImage guardLeft;
  PImage guardLeftStep;

  PImage swingSword1;
  PImage swingSword2;
  PImage swingSwordL1;
  PImage swingSwordL2;

  PImage bowR1;
  PImage bowR2;
  PImage bowR3;
  PImage bowR4;
  PImage bowR5;
  PImage bowR6;
  PImage bowL1;
  PImage bowL2;
  PImage bowL3;
  PImage bowL4;
  PImage bowL5;
  PImage bowL6;
PImage rock1;
PImage rock2;
PImage rock3;
PImage rock4;
PImage guardPick1;
PImage guardPick2;
PImage guardPick3;
  PImage arrowL;
  PImage arrowR;
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
  float rock = random (0,4);
  float alertLock = 0;
  float lock = 0;
  float delay = 0;
  color brown = (80);
  void setup ()
  {
    guardPick1 = loadImage("GuardPick1.png");
    guardPick2 = loadImage ("GuardPick2.png");
    guardPick3 = loadImage("GuardPick3.png");

    guardLeft = loadImage("Char_Lrun1.png");
    guardLeftStep = loadImage("Char_Lrun2.png");

   rock1 = loadImage("rock1.png");
    rock2 = loadImage("rock2.png");
    rock3 = loadImage ("rock3.png");
    rock4 = loadImage ("rock4.png");

    bowR1 = loadImage ("Char_dualBowshot1.png");
    bowR2 = loadImage ("Char_dualBowshot2.png");
    bowR3 = loadImage ("Char_dualBowshot3.png");
    bowR4 = loadImage ("Char_dualBowshot4.png");
    bowR5 = loadImage ("Char_dualBowshot5.png");
    bowR6 = loadImage ("Char_dualBowshot6.png");
    bowL1 = loadImage ("Char_LdualBowshot1.png");
    bowL2 = loadImage ("Char_LdualBowshot2.png");
    bowL3 = loadImage ("Char_LdualBowshot3.png");
    bowL4 = loadImage ("Char_LdualBowshot4.png");
    bowL5 = loadImage ("Char_LdualBowshot5.png");
    bowL6 = loadImage ("Char_LdualBowshot6.png");

    arrowR = loadImage ("ArrowR.png");
    arrowL = loadImage ("ArrowL.png");
  }



  MiningGuard3(float x)
  {
    super(x);
    range = 380;
    current = 0;
    direction = 0;
  }

  void draw()
  {
    if (visible() && mobStop == 0) {
      float x = xPos();

      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);
      y -= fortHeight;
timer = timer + .5;
      if (timer < 10)
      {
        image (guardPick1, x, y);
      }
      if (timer >= 10 && timer < 20)
      {
        image (guardPick2,x,y);
      }
      if (timer >=20 && timer < 30)
      {
        image (guardPick3,x + 5,y);
      }
      if (timer >= 30)
      {
        image (guardPick2,x,y);
      }
      if (timer > 40)
      {
        timer = 0;
      }
      if (rock < 1)
      {
        image (rock1,x,y);
      }
      if (rock >=1 && rock < 2)
      {
        image (rock2,x,y);
      }
      if (rock >= 2 && rock < 3)
      {
        image (rock3,x,y);
      }
      if (rock >= 3)
      {
        image (rock4,x,y);
      }
    }
  }
}

