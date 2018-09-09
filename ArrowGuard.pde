class ArrowGuard extends GroundObject
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
    guardIdle = loadImage("Guard_dual.png");
    guardRight = loadImage ("Char_run1.png");
    guardRightStep = loadImage("Char_run2.png");

    guardLeft = loadImage("Guard_dual.png");
    guardLeftStep = loadImage("Char_Lrun2.png");

    swingSword1 = loadImage("Char_swordStrike1.png");
    swingSword2 = loadImage("Char_swordStrike2.png");
    swingSwordL1 = loadImage ("Char_LswordStrike1.png");
    swingSwordL2 = loadImage ("Char_LswordStrike2.png");

    bowR1 = loadImage ("GuardBowR1.png");
    bowR2 = loadImage ("GuardBowR2.png");
    bowR3 = loadImage ("GuardBowR3.png");
    bowR4 = loadImage ("GuardBowR4.png");
    bowR5 = loadImage ("GuardBowR5.png");
    bowR6 = loadImage ("GuardBowR6.png");
    bowL1 = loadImage ("GuardBow1.png");
    bowL2 = loadImage ("GuardBow2.png");
    bowL3 = loadImage ("GuardBow3.png");
    bowL4 = loadImage ("GuardBow4.png");
    bowL5 = loadImage ("GuardBow5.png");
    bowL6 = loadImage ("GuardBow6.png");
    bomb = loadImage ("Bomb.png");
    bomb2 = loadImage ("Bomb2.png");
    bomb3 = loadImage ("Bomb3.png");
    bomb4 = loadImage ("Bomb4.png");
    bomb5 = loadImage ("Bomb5.png");
    bomb6 = loadImage ("Bomb6.png");
    arrowR = loadImage ("ArrowR.png");
    arrowL = loadImage ("ArrowL.png");
  }



  ArrowGuard(float x)
  {
    super(x);

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


      y -= 285; 
      direction = 0;
      if (detect == 0)
      {
        image (guardIdle, x, y);
        
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

        fill (225, 0, 0);
        rect (x + 30, y - 30, 5, 20);
        ellipse (x + 33, y - 7, 4, 4);
        lock = 1;


        if (x >= width/2 + 60 && x<= width/2 + 260 && bombTimer < 5|| alert == 1)
        {

          if (timer4 == 0)
          {

            timer4 = 1;
          }
          alert = 1;
        }
        if (x <= width/2 - 80 && x>= width/2 -260 && bombTimer < 5 || alert == 2)
        {
          if (timer4 == 0)
          {
            timer4 = 1;
          }
          alert = 2;
        }
        if (x - 60 <= width/2  && x >= width/2 && fire == 0)
        {
          alert = 3;
        }
        if (x + 80 >= width/2 && x < width/2 && fire == 0)
        {
          alert = 4;
        }
        if (alert == 4)
        {
          image (guardIdle,x,y);
        }
        if (alert == 3)
        {
          bombTimer = bombTimer + 1;
          bombFlame = bombFlame + 1;
          image (guardIdle,x,y);
          if (bombFlame > 20)
          {
            bombFlame = 0;
          }
          if (bombTimer >= 1 && bombTimer < 20)
          {
            image (bomb, bombX, bombY);
            bombX = x - 40;
            bombY = y + 20;
          }
          if (bombTimer >= 20 && bombTimer <= 40)
          {
            if (bombFlame < 10)
            {
              image (bomb2, bombX, bombY);
              bombX = x - 40;
            }
            else
            {
              image (bomb3, bombX, bombY);
              bombX = x - 40;
            }
          }
          if (bombTimer >= 40 && bombY < 920 && bounce == 0)
          {
            bombX = bombX - bombSpeed;
            bombY = bombY + 3;
            if (bombFlame < 10)
            {
              image (bomb4, bombX, bombY);
            }
            else
            {
              image (bomb5, bombX, bombY);
            }
          }
 
          if (bombY > 915 || bounce == 1)
          {
           bombX = bombX - bombSpeed;
            bounce = 1;
            bombY = bombY  - 3;
            if (bombFlame <= 10)
            {
            image (bomb5, bombX, bombY);
            }
            else
            {
              image (bomb4, bombX, bombY);
          }
            bounceHeight = bounceHeight + .5;
          }
          if (bombY < bounceHeight || bounce == 0)
          {
            bombY = bombY + 3;
            bounce = 0;
            if (bombFlame <= 10)
            {
            image (bomb5, bombX, bombY);
            }
            else
            {
              image (bomb4, bombX, bombY);
          }
          }
          if (bombTimer > bombBlow)
          {
            bombTimer = 0;
            bombBlow = random (200, 600);
            bounce = 0;
            bounceHeight = 850;
            if (width/2 > bombX - 150 && width/2 < bombX + 150)
            {
              health = health - 80;
            }
        }
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
        if (arrowGY <= y + 250)
        {
          arrowGY = arrowGY + 5;
        }
      }
      if (fire == 2)
      {
        timer5 = timer5 + 1;
        image (arrowR, arrowGX, arrowGY);
        arrowGX = arrowGX + arrowSpeed;
        if (arrowGY <= y + 250 && timer5 < 225)
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
      if (timer5 == 301)
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
      
      if (alert == 3 && bounceHeight < 950)
      {
        if (sprintRecover < 10)
        {
          bombSpeed = .5;
          bombDirection = 0;
        }
        if (keyPressed && key == 'd' && rightStop == 0)
        {
          bombSpeed = 3.5;
          bombDirection = 1;
        }
        else if (keyPressed && key == 'a' && leftStop == 0)
        {
          bombSpeed = -2.5;
          bombDirection = 2;
        }
        else if (keyPressed && key == 'r' && bombDirection == 1 && rightStop == 0 && sprintRecover > 5)
        {
          bombDirection = 1;
          bombSpeed = 5.5;
        }
        else if (keyPressed && key == 'r' && bombDirection == 2 && leftStop == 0 && sprintRecover > 5)
        {
          bombDirection = 2;
          bombSpeed = -4.5;
        }
        else  
        {
          bombSpeed = .5;
          bombDirection = 0;
        }
      }
      if (bounceHeight > 950)
      {
        if (keyPressed && key == 'd' && rightStop == 0)
        {
          bombSpeed = 3;
          bombDirection = 1;
        }
        else if (keyPressed && key == 'a' && leftStop == 0)
        {
          bombSpeed = -3;
          bombDirection = 2;
        }
        else if (keyPressed && key == 'r' && bombDirection == 1 && rightStop == 0)
        {
          bombDirection = 1;
          bombSpeed = 5;
        }
        else if (keyPressed && key == 'r' && bombDirection == 2 && leftStop == 0)
        {
          bombDirection = 2;
          bombSpeed = -5;
        }
        else  
        {
          bombSpeed = 0;
        }
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
    if (arrowGX < width/ 2 + 20 && arrowGX > width/2 && arrowGY > 900 && jumpHeight < 50)
    {
      health = health - 30;
      arrowGX = -1000000;
    }
  }
}

