class MiningArrowGuard extends GroundObject
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
  PImage bomb;
  PImage bomb2;
  PImage bomb3;
  PImage bomb4;
  PImage bomb5;
  PImage bomb6;
  PImage arrowL;
  PImage arrowR;
  float bombFlame = 0;
  float range;
  PImage quote1;
  PImage quote2;
  PImage quote3;
  PImage quote4;
  PImage quote5;
  PImage quote6;
  PImage quote7;
  float bombX = 0;
  float bombY = 0;
  float current;
  float bombTimer = 0;
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
  float fire = 0;
  float arrowGX = 0;
  float arrowGY = 0;
  float quoteLoad = 0;
  float arrowSpeed = 5;
  float timer5 = 0;
  float arrowDirection = 0;
  float arrowTrackY = 0;
  float arrowWalk = arrowSpeed - 3;
  float arrowWalk2 = arrowSpeed + 3;
  float bombSpeed;
  float bombDirection = 0;
  float bounce = 1;
  float bounceHeight = 850;
  float bombBlow = random (200, 600);
  void setup ()
  {
    guardIdle = loadImage("Char_primary.png");
    guardRight = loadImage ("Char_run1.png");
    guardRightStep = loadImage("Char_run2.png");

    guardLeft = loadImage("Char_Lrun1.png");
    guardLeftStep = loadImage("Char_Lrun2.png");

    swingSword1 = loadImage("Char_swordStrike1.png");
    swingSword2 = loadImage("Char_swordStrike2.png");
    swingSwordL1 = loadImage ("Char_LswordStrike1.png");
    swingSwordL2 = loadImage ("Char_LswordStrike2.png");

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
    bomb = loadImage ("Bomb.png");
    bomb2 = loadImage ("Bomb2.png");
    bomb3 = loadImage ("Bomb3.png");
    bomb4 = loadImage ("Bomb4.png");
    bomb5 = loadImage ("Bomb5.png");
    bomb6 = loadImage ("Bomb6.png");
    arrowR = loadImage ("ArrowR.png");
    arrowL = loadImage ("ArrowL.png");
    
    quote1 = loadImage ("MiningArrowGuardQuote1.png");
    quote2 = loadImage ("MiningArrowGuardQuote2.png");
    quote3 = loadImage ("MiningArrowGuardQuote3.png");
    quote4 = loadImage ("MiningArrowGuardQuote4.png");
    quote5 = loadImage ("MiningArrowGuardQuote5.png");
    quote6 = loadImage ("MiningArrowGuardQuote6.png");
    quote7 = loadImage ("MiningArrowGuardQuote7.png");
  }



  MiningArrowGuard(float x)
  {
    super(x);

    current = 0;
    direction = 1;
  }

  void draw()
  {

    if (visible() && mobStop == 0 && guardHealth > 0 || guardHealth > 0 && visible() && gateButton == 1) {
      if (x == mineCartPos + 2930)
      {
        quoteLoad = 1;
      }
      float x = xPos();

      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);


      y -= 160; 
     
      direction = 0;
       if (quoteLoad == 1)
       {
       if (cutSceneTimer2 > 400 && cutSceneTimer2 < 450)
       {
         image (quote1, x, y - 100);
       }
        if (cutSceneTimer2 >= 450 && cutSceneTimer2 < 550)
       {
         image (quote2, x, y - 100);
       }
        if (cutSceneTimer2 >= 550 && cutSceneTimer2 < 650)
       {
         image (quote3, x, y - 100);
       }
        if (cutSceneTimer2 >= 650 && cutSceneTimer2 < 750)
       {
         image (quote4, x, y - 100);
       }
       }
      if (alert == 0 || alert == 3 || alert == 4)
      {
        image (bowL1, x, y);
        
      }



      //fill (239, 141, 240);
      //rect (x, y, 30, 15);
      //rect (x + 1, y + 12, 5, 8);
      //rect (x + 25, y + 12, 5, 8);
      //rect (x + 28, y, 10, 10);
      //fill (0, 0, 0);
      // rect (x + 33, y + 2, 3, 3);
      //rect (x + 34, y + 6, 4, 2);
      if ((x > width/2 -300 ) && (x < width/2 + 300) && detect2 == 0 && gateButton == 0 || detect == 1)
      {

        detect = 1;

        fill (225, 0, 0);
        rect (x + 30, y - 30, 5, 20);
        ellipse (x + 33, y - 7, 4, 4);
        lock = 1;


        if (x >= width/2 + 60 && x<= width/2 + 260 && bombTimer < 5 && gateButton == 0|| alert == 1)
        {

          if (timer4 == 0)
          {

            timer4 = 1;
          }
          alert = 1;
        }
        if (x <= width/2 - 80 && x>= width/2 -260 && bombTimer < 5 && gateButton == 0|| alert == 2)
        {
          if (timer4 == 0)
          {
            timer4 = 1;
          }
          alert = 2;
        }
        
        
          
        
          if (alert == 2)
        {
          if (timer4 < 10)
          {
            image (bowR2, x, y);
          }
          else if (timer4 >= 10 && timer4 < 20)
          {
            image (bowR3, x, y);
          }
          else if (timer4 >= 20 && timer4 < 30)
          {
            image (bowR4, x, y);
          }
          else if (timer4 >= 30 && timer4 < 40)
          {
            image (bowR5, x, y);
          }
          else if (timer4 >=40 && timer4 < 60)
          {
            image (bowR6, x, y);
          }
          if (timer4 == 50)
          {
            fire = 2;
            arrowGX = x;
            arrowGY = y;
          }
        }
        if (alert == 1 )
        {
          if (timer4 < 10)
          {
            image (bowL2, x, y);
          }
          else if (timer4 >= 10 && timer4 < 20)
          {
            image (bowL3, x, y);
          }
          else if (timer4 >= 20 && timer4 < 30)
          {
            image (bowL4, x, y);
          }
          else if (timer4 >= 30 && timer4 < 40)
          {
            image (bowL5, x, y);
          }
          else if (timer4 >=40 && timer4 < 60)
          {
            image (bowL6, x, y);
          }
          if (timer4 == 50)
          {
            fire = 1;
            arrowGX = x;
            arrowGY = y;
          }
        }
      }

      if (fire == 1)
      {
        timer5 = timer5 + 1;
        image (arrowL, arrowGX, arrowGY);
        arrowGX = arrowGX - arrowSpeed;
        if (arrowGY <= y + 140)
        {
          arrowGY = arrowGY + 5;
        }
      }
      if (fire == 2)
      {
        timer5 = timer5 + 1;
        image (arrowR, arrowGX, arrowGY);
        arrowGX = arrowGX + arrowSpeed;
        if (arrowGY <= y + 140 && timer5 < 225)
        {
          arrowGY = arrowGY + 5;
        }
      }
      if (timer5 > 150)
      {
        arrowGY = arrowGY + .1;
      }
      if (arrowGY > 950)
      {
        arrowGX = - 100000000;
      }
      if (timer5 > 1  && timer5 < 300)
      {
        timer4 = 0;
      }
      if (timer5 == 200)
      {
        fire = 0;
        timer5 = 0;
      }
      if (timer4 > 0)
      {
        timer4 = timer4 + .5;
      }
      if (timer4 >= 60)
      {
        timer4 = 0;
      }
      if (timer4 == 0)
      {
        image (bowL1, x, y);
      }
      
     
      if (fire == 1)
      {
       if (sprintRecover < 10)
       {
         arrowDirection = 0;
         arrowSpeed = 5;
       }
        if (keyPressed && key == 'd' && rightStop == 0)
        {
          arrowSpeed = 8;
          arrowDirection = 1;
        }
        else if (keyPressed && key == 'a' && leftStop == 0)
        {
          arrowSpeed = 2;
          arrowDirection = 2;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 1 && rightStop == 0 && sprintRecover > 5)
        {
          arrowDirection = 1;
          arrowSpeed = 10;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 2 && leftStop == 0 && sprintRecover > 5)
        {
          arrowDirection = 2;
          arrowSpeed = 0;
        }
        else
        {
          arrowSpeed = 5;
          arrowDirection = 0;
        }
      }
      else if (fire == 2)
      {
        if (sprintRecover < 10)
        {
          arrowSpeed = 5;
          arrowDirection =0;
        }
        if (keyPressed && key == 'd' && screenStopRight == 0)
        {
          arrowSpeed = 2;
          arrowDirection = 1;
        }
        else if (keyPressed && key == 'a' && screenStopLeft == 0)
        {
          arrowSpeed = 8;
          arrowDirection = 2;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 1 && screenStopRight == 0 && sprintRecover > 5)
        {
          arrowDirection = 1;
          arrowSpeed = 0;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 2 && screenStopLeft == 0 && sprintRecover > 5)
        {
          arrowDirection = 2;
          arrowSpeed = 10;
        }
        else
        {
          arrowSpeed = 5;
          arrowDirection = 0;
        }
        if (screenStopLeft == 1 || screenStopRight == 1)
        {
          arrowSpeed = 5;
        }




       
      }
      if (arrowX < x + 50 && arrowX > x && arrowY > y && arrowY < y + 47)
      {
        guardHealth = guardHealth - arrowDamage;
        detect = 1;
        arrowX = -1000000;

        if (width/2 < x)
        {
          alert = 1;
        }
        if (width/2 > x)
        {
          alert = 2;
        }
      }
    }
    if (arrowGX < width/ 2 + 20 && arrowGX > width/2 && arrowGY > 800 && jumpHeight < 30)
    {
      health = health - 30;
      arrowGX = -1000000;
    }
  }
}
