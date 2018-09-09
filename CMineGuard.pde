class CMineGuard extends GroundObject
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
//
  PImage bowR1;
  PImage bowR2;
  PImage bowR3;
  PImage flip1;
  PImage flip2;
  PImage flip3;
  PImage flip4;
  PImage bowR4;
  PImage bowR5;
  PImage bowR6;
  float randomSpeedX = random (7,16);
  PImage bowL1;
  PImage bowL2;
  PImage bowL3;
  float randomSpeedY = random (7, 16);
  PImage bowL4;
  PImage bowL5;
  float hollaTimer = 0;
  PImage bowL6;
  float fly = random (0,2);
  PImage arrowL;
  PImage arrowR;
  float range;
  float current;
  float direction;
  float guardRun =0;
  float deadguard = 0;
  float timer = 0;
  float flipTimer = 0;
  float guardHealth = 5;
  float timer2 = 0;
  float timer3 = 0;
  float timer4 = 0;
  float detect = 0;
  float detect2 = 0;
  float alert = 0;
  float gheight = 0;
  float fortHeight = 47;
  float lock = 0;

  color brown = (80);
  void setup ()
  {
    guardIdle = loadImage("Guard_dual.png");
    flip1 = loadImage ("GuardFlip1.png");
     flip2 = loadImage ("GuardFlip2.png");
      flip3 = loadImage ("GuardFlip3.png");
       flip4 = loadImage ("GuardFlip4.png");
        guardRight = loadImage ("GuardRun.png");
    guardRightStep = loadImage("GuardRun2.png");

    guardLeft = loadImage("GuardRun3.png");
    guardLeftStep = loadImage("GuardRun4.png");
  }



  CMineGuard(float x)
  {
    super(x);
    range = random ( 300, 500);
    current = 0;
    direction = 1;
  }

  void draw()
  {
    if (visible() && mobStop == 0 && guardHealth > 0) {
      float x = xPos();

      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);
      y -= fortHeight;
if (current > range  && alert == 0) {
        direction = -1;
       
      } 
      else if (current < -range  && alert == 0) {
       direction = 1;
      
     
      }
      if (alert != 0)
        {
          if (fly < 1)
          {
          direction = randomSpeedX;
          y = y - gheight;
          gheight = gheight + randomSpeedY;
          flipTimer = flipTimer + 1;
          if (flipTimer < 5)
          {
            image (flip1,x,y);
          }
          if (flipTimer >=5 && flipTimer < 10)
          {
            image (flip2,x,y);
          }
          if (flipTimer >= 10 && flipTimer < 15)
          {
            image (flip3,x,y);
          }
          if (flipTimer >= 15 && flipTimer < 20)
          {
            image (flip4,x,y);
          }
          if (flipTimer >= 19)
          {
            flipTimer = 0;
          }
          }
          else
          {
            direction = 7;
            guardHealth = guardHealth - .05;
            flipTimer = flipTimer + 1;
          if (flipTimer < 5)
          {
            image (flip1,x,y);
          }
          if (flipTimer >=5 && flipTimer < 10)
          {
            image (flip2,x,y);
          }
          if (flipTimer >= 10 && flipTimer < 15)
          {
            image (flip3,x,y);
          }
          if (flipTimer >= 15 && flipTimer < 20)
          {
            image (flip4,x,y);
          }
          if (flipTimer >= 19)
          {
            flipTimer = 0;
          }
          
          }
          
        }

    if (direction == 1)
      {
        if (timer >= 10)
        {
          image(guardRight, x, y);
        }
        else
        {
          image (guardRightStep, x, y);
        }
      }
    
      if (direction <= -1)
      {

        if (timer >= 10)
        {
          image(guardLeft, x, y);
        }
        else
        {
          image(guardLeftStep, x, y);
        }
      }

      if (++timer > 20)
      {
        timer = 0;
      }


      if (arrowX < x + 50 && arrowX > x && arrowY > y && arrowY < y + 47 && fire == 1 || holla == 1)
      {
        guardHealth = guardHealth - arrowDamage;
        detect = 1;
        arrowX = - 1000000;
        if (width/2 < x)
        {
          alert = 1;
        }
        if (width/2 > x)
        {
          alert = 2;
        }
      }
      
      //fill (239, 141, 240);
      //rect (x, y, 30, 15);
      //rect (x + 1, y + 12, 5, 8);
      //rect (x + 25, y + 12, 5, 8);
      //rect (x + 28, y, 10, 10);
      //fill (0, 0, 0);
      // rect (x + 33, y + 2, 3, 3);
      //rect (x + 34, y + 6, 4, 2);
      if ((x > width/2 -300 ) && (x < width/2 + 300) && detect2 == 0 || detect == 1)
      {

        detect = 1;
        range = 1000;
        fill (225, 0, 0);
        rect (x + 30, y - 30, 5, 20);
        ellipse (x + 33, y - 7, 4, 4);
        lock = 1;


        if (x >= width/2 + 10 && x<= width/2 + 30 || alert == 1)
        {
         alert = 1;
        }
        if (x <= width/2 - 10 && x>= width/2 - 30  || alert == 2)
        {
          alert = 2;
        }
       
        
      }
      if (guardHealth <= 0)
      {
        deadguard = deadguard + 1;
        current = 10000000;
      }
    }
  }
}

