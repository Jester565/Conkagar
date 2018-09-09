class FortGuard extends GroundObject
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
  float lock = 0;
  color brown = (80);
  void setup ()
  {
    guardIdle = loadImage("Guard_dual.png");
    guardRight = loadImage ("GuardRun.png");
    guardRightStep = loadImage("GuardRun2.png");

    guardLeft = loadImage("GuardRun3.png");
    guardLeftStep = loadImage("GuardRun4.png");

    swingSword1 = loadImage("GuardSwing1.png");
    swingSword2 = loadImage("GuardSwing2.png");
    swingSwordL1 = loadImage ("GuardSwing3.png");
    swingSwordL2 = loadImage ("GuardSwing4.png");

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



  FortGuard(float x)
  {
    super(x);

    current = 0;
    direction = 1;
  }

  void draw()
  {
    if (visible() && mobStop == 0) {
      float x = xPos();

      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);
      y -= fortHeight; 

      if (direction >= 1)
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
      if (detect == 0)
      {
        direction = 0;
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
      if (direction == 0 && lock == 0)
      {
        image (guardIdle, x, y);
      }

      if (++timer > 20)
      {
        timer = 0;
      }
     

      if (arrowX < x + 50 && arrowX > x && arrowY > y && arrowY < y + 47 && fire == 1)
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


        if (x >= width/2 + 10 && x<= width/2 + 260 || alert == 1)
        {
          direction = -3.2;
          timer4 = 0;
        }
        if (x <= width/2 - 10 && x>= width/2 -260  || alert == 2)
        {
          direction = 3.2;
          timer4 = 0;
         
        }
        if ( x >= width/2 && x <= width/2 + 10)
        {
        direction = 0;
         timer4 = timer4 + 1;
         if (timer4 < 10)
          {
            image (swingSwordL1, x, y);
          }
          if (timer4 >= 10)
          {
            image (swingSwordL2, x, y);
            health = health - 4;
          }
          if (timer4 >= 20)
          {
            timer4 = 0;
          }
        }
        if ( x <= width/ 2  && x - 10 >= width/2)
        {
          timer4 = timer4 + 1;
          direction = 0;
          if (timer4 < 10)
          {
            image (swingSword1, x, y);
          }
          if (timer4 >= 10)
          {
            image (swingSword2, x, y);
            health = health - 4;
          }
          if (timer4 >= 20)
          {
            timer4 = 0;
          }
        }
        if ( x >= width/2 - 10 && x <= width/2 + 10)
        {
          alert = 0;
        }
      }
      
      

      if (mouseX < x + 50 && mouseX > x && mouseY < y + 40 && mouseY > y && x - 110 < width / 2 && x + 110 > width/2 && timer2 > 20 && bowDrawn == 0)
      {
        
        fill (80, 8, 10);
        rect(mouseX, mouseY - 10, 6, 15);
        rect(mouseX - 2, mouseY - 10, 9, 3);
        fill (152, 138, 138);
        rect(mouseX, mouseY - 30, 5, 20);
        triangle(mouseX, mouseY - 30, mouseX + 6, mouseY- 30, mouseX + 3, mouseY - 35);
        if (mousePressed)
        {
          guardHealth = guardHealth - damage;
          timer2 = 0;
        }
        if (direction > 3 && timer < 1000 && guardHealth <= 9)
        {
          image(guardRight, x, y - 20);
          timer = timer + 1;
        }
        if (direction < -3 && timer < 1000 && guardHealth <= 9) {
          image(guardLeft, x, y - 20);
        }
      }
      if (width / 2 < x + 50 && width/2 > x - 30)
      {
        health = health - 1;
      }
    if (mousePressed)
    {
      timer2 = timer2 + 1;
    }
  }
    
    if (guardHealth <= 0)
    {
      deadguard = deadguard + 1;
      current = 10000000;
    }
  }
}

