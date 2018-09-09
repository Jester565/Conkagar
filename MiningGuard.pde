class MiningGuard extends GroundObject
{
  PImage guardIdle;
  PImage guardRight;
  PImage guardRightStep;
  int shieldReaction = 1;
  int shieldChange = 0;
  PImage guardLeft;
  PImage guardLeftStep;
  int guardSwingTimer = 0;
  float jumpHeightSpeed = 3;
  int visibleLock = 0;
  float characterStamina = 300;
  int jumpBack  = 0;
  int imageOff = 25;
  int mobSwingType = 1;
  float jumpSpeed = 4;
  int swingWaitTimer = 0;
  int shieldUp = 0;
  int jumpY = 0;
  int jumpTimer = 0;
  int jumpEnableTimer = 0;
  int staminaRecover = 0;
  float range;
  int movementMode = 0;
  int delayReaction = 0;
  int reactionTimer = 0;
  float current;
  int rest = 0;
  float direction;
  float guardRun =0;
  float jumpHeight = 0;
  float deadguard = 0;
  float walkTimer = 0;
  float guardHealth = 5;
  float timer2 = 0;
  float timer3 = 0;
  float timer4 = 0;
  float detect = 0;
  float detect2 = 0;
  float alert = 0;
  float fortHeight = 47;
  float delay = 0;
  int swingWaitLimit = 700;
  color brown = (80);
  PImage heavy1R;
  PImage heavy2R;
  int wallDetect = 0;
  float moby;
  PImage heavy3R;
  PImage heavy4R;
  PImage heavy5R;
  PImage heavy1L;
  PImage heavy2L;
  PImage heavy3L;
  PImage guardIdleL;
  PImage heavy4L;
  PImage heavy5L;
  PImage heavyRun1R;
  PImage heavyRun2R;
  PImage heavyRun1L;
  PImage heavyRun2L;
  PImage UCRR1;
  PImage UCRR2;
  PImage UCRL1;
  PImage UCRL2;
  void setup ()
  {
    guardIdle = loadImage("hollowIdle.png");
    guardIdleL = loadImage ("hollowIdleL.png");
    guardRight = loadImage ("hollowRun1R.png");
    guardRightStep = loadImage("hollowRun2R.png");

    guardLeft = loadImage("hollowRun1L.png");
    guardLeftStep = loadImage("hollowRun2L.png");

    heavy1R = loadImage("hollowHA1R.png");
    heavy2R = loadImage("hollowHA2R.png");
    heavy3R = loadImage("hollowHA3R.png");
    heavy4R = loadImage("hollowHA4R.png");
    heavy5R = loadImage("hollowHA5R.png");
    heavy1L = loadImage("hollowHA1L.png");
    heavy2L = loadImage("hollowHA2L.png");
    heavy3L = loadImage("hollowHA3L.png");
    heavy4L = loadImage("hollowHA4L.png");
    heavy5L = loadImage("hollowHA5L.png");
    heavyRun1R = loadImage ("hollowHARun1R.png");
    heavyRun2R = loadImage ("hollowHARun2R.png");
    heavyRun1L = loadImage ("hollowHARun1L.png");
    heavyRun2L = loadImage ("hollowHARun2L.png");
    UCRR1 = loadImage ("hollowUCRun1R.png");
    UCRR2 = loadImage ("hollowUCRun2R.png");
    UCRL1 = loadImage ("hollowUCRun1L.png");
    UCRL2 = loadImage ("hollowUCRun2L.png");
  }



  MiningGuard(float x)
  {
    super(x);
    range = 380;
    current = 0;
    direction = 0;
  }

  void draw()
  {
    if (visible() && mobStop == 0 || mobStop == 0 && visibleLock != 0 ) {
      if (x + current > mpd - 60 && x + current< mpd && moby >= mby - 40 && moby < mby + 3)
      {
        wallDetect = 1;
        jumpSpeed = 0;
      }
      else if (x + current > mpd  && x + current < mpd + 30  && moby >= mby - 40 && moby < mby + 7)
      {
        wallDetect = 2;
        jumpSpeed = 0;
      }
      else
      {
        wallDetect = 0;
      }
     
      mobBlockTrack = x + current;

      float x = xPos();

      current += direction;
      x += current;
      float y = groundPos (xLoc() + current) - jumpHeight;
      mobBlockTrackY = y;
      moby = y;
      if (characterStamina < 300 && staminaRecover == 0 && guardSwingTimer <= 0 && jumpTimer == 0|| characterStamina < 300 && staminaRecover >= 30 && guardSwingTimer <= 0 && jumpTimer == 0)
      {
        characterStamina ++;
      }
      rect (x, y, 50, 50);
      fill (0, 225, 0);
      rect (x - 20, y - 20, (characterStamina/4), 10);
      fill (255, 0, 0);
      rect (x-20, y -30, (guardHealth * 15), 10);

      y -= 85;
     

        if (characterStamina >= 300 || characterDirection < 0 && characterStamina > 100|| characterDirection > 0 && characterStamina > 100)
        {
          rest = 0;
        }
        if (characterStamina < 50)
        {
          rest = 1;
        }
        if (direction > 1  && jumpBack == 0|| characterStamina <= 100 && direction == -1 && jumpBack == 0 || shieldUp == 1 && direction == -1)
        {
          if (walkTimer >= 10)
          {
            image(guardRight, x - imageOff, y);
          }
          else
          {
            image (guardRightStep, x - imageOff, y);
          }
        }
        else 

          if (direction < -1  && jumpBack == 0||characterStamina <= 100 && direction == 1 && jumpBack == 0 || shieldUp == 1 && direction == 1)
        {

          if (walkTimer >= 10)
          {
            image(guardLeft, x - imageOff, y);
          }
          else
          {
            image(guardLeftStep, x - imageOff, y);
          }
        }
        else if (guardSwingTimer == 0 && jumpBack == 0 && width/2 > x)
        {
          image (guardIdle, x - imageOff, y);
        }
        else if (guardSwingTimer == 0 && jumpBack == 0 && width/2 <= x)
        {
          image (guardIdleL, x - imageOff, y);
        }


        if (x - 300  > width/2&& x + 300 < width/2 || arrowX > x - 20 && arrowX < x + 50)
        {
          detect = 1;
        }
        if (jumpBack ==1)
        {

          jumpTimer ++;
          jumpHeightSpeed = jumpHeightSpeed - .1;
          jumpSpeed = jumpSpeed - .05;

          direction = jumpSpeed;

          if (jumpHeight <= 0 && jumpTimer > 5)
          {
            jumpHeight = 0;
          }
          else
          {
            jumpHeight = jumpHeight + jumpHeightSpeed;
          }
          if (jumpTimer < 40)
          {
            image (guardLeft, x- imageOff, y);
          }
          else
          {
            image (guardLeft, x- imageOff, y);
          }
        }
        if (jumpBack ==2)
        {
          jumpTimer ++;
          jumpHeightSpeed = jumpHeightSpeed -.1;
          jumpSpeed = jumpSpeed - .05;

          direction = -jumpSpeed;

          if (jumpHeight <= 0 && jumpTimer > 5)
          {
            jumpHeight = 0;
          }
          else
          {
            jumpHeight = jumpHeight + jumpHeightSpeed;
          }

          if (jumpTimer < 40)
          {
            image (guardRight, x- imageOff, y);
          }
          else
          {
            image (guardRight, x- imageOff, y);
          }
        }
        if (jumpTimer > 80)
        {
          jumpBack = 0;
          jumpSpeed = 4;
          jumpTimer = 0;
          jumpHeight = 0;
          jumpEnableTimer ++;
          jumpHeightSpeed = 3;
          jumpY = 0;
        }
        if (jumpEnableTimer > 0 )
        {
          jumpEnableTimer ++;
        }
        if (jumpEnableTimer > 100)
        {
          jumpEnableTimer = 0;
        }
        if (walkTimer > 20)
        {
          walkTimer = 0;
        }
        if (direction > 0)
        {
          walkTimer = walkTimer + (direction/3);
        }
        if (direction < 0)
        {
          walkTimer = walkTimer - (direction/3);
        }


        if (arrowX < x + 40 && arrowX > x && arrowY > y && arrowY < y + 47 && fire == 1)
        {
          guardHealth = guardHealth - arrowDamage;
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
        //rect (x + 34, y + 6, 4, 2)

        if (x >= width/2 && shieldWay == 1|| x >= width/2 && shieldWay == 3)
        {
          shieldUp = 1;
        }
        else if (x < width/2 && shieldWay == 2 || x < width/2 && shieldWay == 4)
        {
          shieldUp = 1;
        }
        else
        {
          shieldUp = 0;
        }

        if (jumpBack == 0 && detect == 1)
        {
          if (x >= width/2 + 30 && characterStamina > 100 && shieldUp == 0 && guardSwingTimer == 0 && rest == 0 && wallDetect != 2 || wallDetect != 2 &&alert >= 1&& characterStamina > 100 && shieldUp == 0 && guardSwingTimer == 0 && x > width/2 + 30&& rest == 0
            || x >= width/2 + 105  && characterStamina > 100 && shieldUp == 1&& guardSwingTimer == 0 && rest == 0 && wallDetect != 2|| guardSwingTimer == 0 && characterDirection <= -2 && characterStamina < 100&& wallDetect != 2
            || swingWaitTimer > swingWaitLimit && x >= width/2 + 10 && characterStamina > 100 && guardSwingTimer == 0&& wallDetect != 2)
          {
            direction = -3.5;
            range = 10000;
            movementMode = 1;
          }
          else if ( x >= width/2 + 10 && x<= width/2 + 100 && shieldUp == 0 && guardSwingTimer == 0 && wallDetect == 0 || x >= width/2 && x<= width/2 + 100 && shieldUp == 1 && guardSwingTimer == 0  && wallDetect == 0 )
          {
            direction = 1;
            movementMode = 2;
          }
          else if (x >width/2)
          {
            direction = 0;
          }
          if (x <= width/2 - 50  && characterStamina > 100 && shieldUp == 0&& guardSwingTimer == 0 && rest == 0 && wallDetect != 1|| alert >= 1&& characterStamina > 100 && shieldUp == 0&& wallDetect != 1&& guardSwingTimer == 0 && x < width/2 - 50 && rest == 0
            ||x <= width/2 - 105 && characterStamina > 100 && shieldUp == 1&& guardSwingTimer == 0  && rest == 0&& wallDetect != 1|| guardSwingTimer == 0 && characterDirection >= 2 && characterStamina < 100&& wallDetect != 1
            || swingWaitTimer > swingWaitLimit &&x <= width/2 - 10  && characterStamina > 100 && guardSwingTimer == 0&& wallDetect != 1)
          {
            direction = 3.5;
            range = 10000;
            movementMode = 3;
          }
          else if ( x <= width/2 - 10 && x>= width/2 -100 && shieldUp == 0&& guardSwingTimer == 0  && wallDetect == 0 || x < width/2 && x > width/2 - 100 && shieldUp == 1&& guardSwingTimer == 0  && wallDetect == 0 )
          {
            direction = -1;
            movementMode = 4;
          }
          else if (x < width/2)
          {
            direction = 0;
          }
        }

        if (width/2 >= x && width/2 <= x + 80 && swingDirection == 1)
        { 
          if (swingType == 1 && swingTimer == 10)
          {
            guardHealth = guardHealth - damage;
          }
          else if (swingType == 2 && swingTimer == 25)
          {
            guardHealth= guardHealth - (damage * 3);
          }
          else if (swingType == 3 && swingTimer == 25)
          {
            guardHealth = guardHealth - (damage * 3);
          }
        }
        else if (width/2 <= x && width/2 >= x - 50 && swingDirection == 2)
        {
          if (swingType == 1 && swingTimer == 10)
          {
            guardHealth = guardHealth - damage;
          }
          else if (swingType == 2 && swingTimer == 25)
          {
            guardHealth= guardHealth - (damage * 3);
          }
          else if (swingType == 3 && swingTimer == 25)
          {
            guardHealth = guardHealth - (damage * 3);
          }
        }
        if (width/2 >= x - 30 && width/2 < x+ 50 && characterStamina > 100 ||guardSwingTimer != 0)
        {
          direction = 0;
          visibleLock = 1;
          guardSwingTimer = guardSwingTimer + 1;
          if ( width/2 >= x)
          {
            if (mobSwingType == 1)
            {
              if (guardSwingTimer < 20)
              {
                image (heavy1R, x- imageOff, y);
              }
              if (guardSwingTimer >= 20)
              {
                image (heavy4R, x- imageOff, y);
                if (guardSwingTimer == 23 && width/2 >= x && width/2 <= x + 50 && shieldWay != 2 && shieldWay != 4 || guardSwingTimer == 23 && width/2 >= x && width/2 <= x + 50 && sprintRecover < 200)
                {
                  health = health - 20;
                  if (shieldWay == 2 || shieldWay == 4)
                  {
                    if (sprintRecover < 200)
                    {
                      sprintRecover = 0;
                    }
                    if (sprintRecover >= 200)
                    {
                      sprintRecover = sprintRecover - 200;
                    }
                  }
                }
                else if (guardSwingTimer == 23 && width/2 >= x && width/2 < x + 50)
                {
                  if (sprintRecover < 200)
                  {
                    sprintRecover = 0;
                  }
                  if (sprintRecover >= 200)
                  {
                    sprintRecover = sprintRecover - 200;
                  }
                }
              }
            }
            if (mobSwingType == 2)
            {
              if (guardSwingTimer < 20)
              {
                image(heavy2R, x- imageOff, y);
              }
              else if (guardSwingTimer < 35)
              {
                image (heavy3R, x- imageOff, y);
              }
              else if (guardSwingTimer < 45)
              {
                image (heavy4R, x- imageOff, y);
              }
              else
              {
                image (heavy5R, x- imageOff, y);
              }
              if (guardSwingTimer == 47 && width/2 >= x && width/2 <= x + 50 && shieldWay != 2 && shieldWay != 4 || guardSwingTimer == 47 && width/2 >= x && width/2 <= x + 50 && sprintRecover < 400)
              {
                health = health - 60;
                if (shieldWay == 2 || shieldWay == 4)
                {
                  if (sprintRecover < 400)
                  {
                    sprintRecover = 0;
                  }
                  if (sprintRecover >= 400)
                  {
                    sprintRecover = sprintRecover - 400;
                  }
                }
              }
              else if (guardSwingTimer == 47 && width/2 >= x && width/2 < x + 50)
              {
                if (sprintRecover < 400)
                {
                  sprintRecover = 0;
                }
                if (sprintRecover >= 400)
                {
                  sprintRecover = sprintRecover - 400;
                }
              }
            }
            if (mobSwingType == 3)
            {
              if (guardSwingTimer < 15)
              {
                image(heavy5R, x- imageOff, y);
              }
              else if (guardSwingTimer < 30)
              {
                image (heavy4R, x- imageOff, y);
              }
              else if (guardSwingTimer < 45)
              {
                image (heavy3R, x- imageOff, y);
              }
              if (guardSwingTimer == 32 && width/2 >= x && width/2 <= x + 50 && shieldWay != 2 && shieldWay != 4 || guardSwingTimer == 32 && width/2 >= x && width/2 <= x + 50 && sprintRecover < 300)
              {
                health = health - 40;
                if (shieldWay == 2 || shieldWay == 4)
                {
                  if (sprintRecover < 300)
                  {
                    sprintRecover = 0;
                  }
                  if (sprintRecover >= 300)
                  {
                    sprintRecover = sprintRecover - 300;
                  }
                }
              }
              else if (guardSwingTimer == 32 && width/2 >= x && width/2 < x + 50)
              {
                if (sprintRecover < 300)
                {
                  sprintRecover = 0;
                }
                if (sprintRecover >= 300)
                {
                  sprintRecover = sprintRecover - 300;
                }
              }
            }
          }
          if (guardSwingTimer >0 && guardSwingTimer < 40)
          {
            characterStamina = characterStamina;
          }
          if (width/2 <= x)
          {
            if (mobSwingType == 1)
            {
              if (guardSwingTimer < 20)
              {
                image (heavy1L, x- imageOff, y);
              }
              if (guardSwingTimer >= 20)
              {
                image (heavy4L, x- imageOff, y);
                if (guardSwingTimer == 23 && width/2 <= x && width/2 >= x - 30 && shieldWay != 2 && shieldWay != 4 || guardSwingTimer == 23 && width/2 <= x && width/2 >= x - 30 && sprintRecover < 200)
                {
                  health = health - 20;
                  if (shieldWay == 2 || shieldWay == 4)
                  {
                    if (sprintRecover < 200)
                    {
                      sprintRecover = 0;
                    }
                    if (sprintRecover >= 200)
                    {
                      sprintRecover = sprintRecover - 200;
                    }
                  }
                }
                else if (guardSwingTimer == 23 && width/2 <= x && width/2 > x - 30)
                {
                  if (sprintRecover < 200)
                  {
                    sprintRecover = 0;
                  }
                  if (sprintRecover >= 200)
                  {
                    sprintRecover = sprintRecover - 200;
                  }
                }
              }
            }
            if (mobSwingType == 2)
            {
              if (guardSwingTimer < 20)
              {
                image(heavy2L, x- imageOff, y);
              }
              else if (guardSwingTimer < 35)
              {
                image (heavy3L, x- imageOff, y);
              }
              else if (guardSwingTimer < 45)
              {
                image (heavy4L, x- imageOff, y);
              }
              else
              {
                image (heavy5L, x, y);
              }
              if (guardSwingTimer == 47 && width/2 <= x && width/2 >= x - 30 && shieldWay != 2 && shieldWay != 4 || guardSwingTimer == 47 && width/2 <= x && width/2 >= x -30 && sprintRecover < 400)
              {
                health = health - 60;
                if (shieldWay == 2 || shieldWay == 4)
                {
                  if (sprintRecover < 400)
                  {
                    sprintRecover = 0;
                  }
                  if (sprintRecover >= 400)
                  {
                    sprintRecover = sprintRecover - 400;
                  }
                }
              }
              else if (guardSwingTimer == 47 && width/2 <= x && width/2 > x - 30)
              {
                if (sprintRecover < 400)
                {
                  sprintRecover = 0;
                }
                if (sprintRecover >= 400)
                {
                  sprintRecover = sprintRecover - 400;
                }
              }
              //
            }
            if (mobSwingType == 3)
            {
              if (guardSwingTimer < 15)
              {
                image(heavy5L, x- imageOff, y);
              }
              else if (guardSwingTimer < 30)
              {
                image (heavy4L, x- imageOff, y);
              }
              else if (guardSwingTimer < 45)
              {
                image (heavy3L, x- imageOff, y);
              }
              if (guardSwingTimer == 32 && width/2 <= x && width/2 >= x - 30 && shieldWay != 2 && shieldWay != 4 || guardSwingTimer == 32 && width/2 <= x && width/2 >= x - 30 && sprintRecover < 300)
              {
                health = health - 40;
                if (shieldWay == 2 || shieldWay == 4)
                {
                  if (sprintRecover < 300)
                  {
                    sprintRecover = 0;
                  }
                  if (sprintRecover >= 300)
                  {
                    sprintRecover = sprintRecover - 300;
                  }
                }
              }
              else if (guardSwingTimer == 32 && width/2 <= x && width/2 > x - 30)
              {
                if (sprintRecover < 300)
                {
                  sprintRecover = 0;
                }
                if (sprintRecover >= 300)
                {
                  sprintRecover = sprintRecover - 300;
                }
              }
            }
          }
        }
        else
        {
          swingWaitTimer ++;
        }
        if (guardSwingTimer >= 40 && mobSwingType == 1 || guardSwingTimer >= 55 && mobSwingType == 2 || guardSwingTimer >= 45 && mobSwingType == 3 || guardSwingTimer >= 55)
        {
          characterStamina = characterStamina - 100;
          swingWaitTimer = 0;
          mobSwingType = round(random(1, 3));
          swingWaitLimit = round(random(600, 1500));
          guardSwingTimer = 0;
        }
        if (characterStamina <= 0)
        {
          staminaRecover ++;
        }
        if (characterStamina > 5)
        {
          staminaRecover = 0;
        }
        if (x > width/2 - 30 && x < width/2 + 30 && characterStamina < 50 && jumpBack == 0&& jumpEnableTimer == 0)
        {
          if (x > width/2)
          { 
            jumpBack = 1;
          }
          else
          {
            jumpBack = 2;
          }
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

