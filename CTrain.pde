class CTrain extends GroundObject
{
  float _w;
  float _h;
  float timer =0;

  float current;

  float direction;
  float cutSceneC = 0;
  float sceneC = 0;
  PImage train1;
  PImage train2;
  PImage train3;
  PImage train4;
  PImage train5;
  float visibleLock = 0;
  PImage kingC;
  PImage guardIdle;
  PImage guardRight;
  PImage guardRightStep;

  PImage guardLeft;
  PImage guardLeftStep;
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
  PImage train6;
  PImage train7;
  PImage train8;
  PImage train9;
  PImage train10;
  PImage train11;
  PImage train12;
  PImage train13;
  PImage train14;
  PImage train15;
  PImage train16;
  PImage train17;
  PImage train18;
  PImage train19;
  PImage train20;
  PImage fire1;
  PImage fire2;
  PImage s5;
  PImage s4;
  float guardHealth = 4;
  PImage s3;
  PImage s2;
  PImage s1;
  PImage trainInside;
  PImage c1;
  PImage c2;
  PImage c3;
  PImage c4;
  PImage c5;
  PImage c6;
  PImage c7;
  PImage c8;
  PImage c9;
  PImage c10;
  float counter = 0;
  float guardActivate = 0;
  float arrowFireTimer = 0;
  float arrowFire = 0;
  float arrowGX = -70;
  float arrowGY = 0;
  float arrowSpeed = 0;
  float bombFlame = 0;
  PImage guardDuck;
  float range;
  float timer3 = 0;
  float timer2 = 0;
  float guardX = x + 200;
  float guardY = 805;
  float walkTimer = 0;
  float guardHealthTimer = 200;
float guardSpeed;


  CTrain(float x, float h)
  {

    super(x);
    range = random (0, 500);
    current = 0;
    direction = 0;
    _h = h;
  }



  void setup()
  {
    train1 = loadImage ("Train.png");
    guardDuck = loadImage("GuardBowDuckR2.png");
    guardIdle = loadImage("Guard_dual.png");
     guardRight = loadImage ("GuardRun.png");
    guardRightStep = loadImage("GuardRun2.png");

    guardLeft = loadImage("GuardRun3.png");
    guardLeftStep = loadImage("GuardRun4.png");




    train2 = loadImage ("Train2.png");
    train3 = loadImage ("Train3.png");
    train4 = loadImage ("Train4.png");
    train5 = loadImage ("Train5.png");
    train6 = loadImage ("Train6.png");
    train7 = loadImage ("Train7.png");
    train8 = loadImage ("Train8.png");
    train9 = loadImage ("Train9.png");
    train10 = loadImage ("Train10.png");
    train11 = loadImage ("Train11.png");
    train12 = loadImage ("Train12.png");
    train13 = loadImage ("Train13.png");
    train14 = loadImage ("Train14.png");
    train15 = loadImage ("Train15.png");
    train16 = loadImage ("Train16.png");
    train17 = loadImage ("Train17.png");
    train18 = loadImage ("Train18.png");
    train19 = loadImage ("Train19.png");
    train20 = loadImage ("Train20.png");
    fire1 = loadImage ("TrainFire1.png");
    fire2 = loadImage ("TrainFire2.png");
    kingC = loadImage ("KingCL.png");
    c1 = loadImage ("cQuote1.png");
    c2 = loadImage ("cQuote2.png");
    c3 = loadImage ("cQuote3.png");
    c4 = loadImage ("cQuote4.png");
    c5 = loadImage ("cQuote5.png");
    c6 = loadImage ("cQuote6.png");
    c7 = loadImage ("cQuote7.png");
    c8 = loadImage ("cQuote8.png");
    c9 = loadImage ("cQuote9.png");
    c10 = loadImage ("cQuote10.png");
    trainInside = loadImage ("TrainInside.png");
    s1 = loadImage ("count1.png");
    s2 = loadImage ("count2.png");
    s3 = loadImage ("count3.png");
    s4 = loadImage ("count4.png");
    s5 = loadImage ("count5.png");
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
    arrowR = loadImage ("ArrowR.png");
    arrowL = loadImage ("ArrowL.png");
  }
  void draw()
  {

    if (visible() || visibleLock == 1) {
      float x = xPos();

      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);
      y -= 375; 
      
      timer = timer + direction;
      image (trainInside, x, y);
      if (guardHealth < 1 && guardHealthTimer < 1)
    {
       if (keyPressed && key == 'd')
            {
              guardSpeed = 3;
            }
            else if (keyPressed && key == 'a')
            {
              guardSpeed = -1;
            }
            else
            {
             guardSpeed = 1;
            }
      walkTimer = walkTimer + 1;
      if (walkTimer < 10)
      {
        image (guardLeft, guardX, guardY);
      }
      else
      {
        image (guardLeftStep,guardX, guardY);
      }
      if (walkTimer > 20)
      {
        walkTimer = 0;
      }
      guardX -= guardSpeed;
      if (guardX < x + 70)
      {
        guardHealth = 4;
        walkTimer = 0;
       
      }
    }
    if (guardHealth >= 1)
    {
      guardHealthTimer = 200;
    }
    else if (guardHealth < 1)
    {
      guardHealthTimer = guardHealthTimer - 1;
    }
    if (keyPressed && key == 'd')
            {
              arrowSpeed = 10;
            }
            else if (keyPressed && key == 'a')
            {
              arrowSpeed = 6;
            }
            else
            {
              arrowSpeed = 8;
            }
      if (guardHealth >= 1)
      {
      if (guardActivate == 1)
        {
           println(arrowFireTimer);
          println (arrowGX);
          if (arrowFire == 1)
          {
             guardX = x + 200;
            image (guardDuck, x + 70, y + 280);
            image (arrowL, arrowGX, arrowGY);
            arrowGX = arrowGX - arrowSpeed;
            
          }
          if (arrowGX < 0)
          {
            arrowFire = 0;
            arrowFireTimer = 0;
            arrowGX = 100000;
          }
         if (arrowX > x + 60 && arrowY > y + 280)
         {
           arrowX = 10000;
         }
         if (arrowX > x + 70 && arrowY > y + 270)
         {
           guardHealth = guardHealth - 1;
           arrowX = 100000;
         }
         if (arrowFire == 0 && arrowX > x + 70 && arrowY > y + 275)
        {
         guardHealth = guardHealth - 1;
         arrowX = 100000;
        } 
          if (arrowFire == 0)
          {
            arrowFireTimer = arrowFireTimer + 1;
          
          }
          if (arrowFireTimer >= 1 && arrowFireTimer < 20)
          {
            image (bowL3, x + 70, y + 275);
          }
          else if (arrowFireTimer >= 20 && arrowFireTimer < 30)
          {
            image (bowL4, x + 70, y + 275);
          }
          else if (arrowFireTimer >= 30 && arrowFireTimer < 40)
          {
            image (bowL5, x + 70, y + 275);
          }
          else if (arrowFireTimer >=40 && arrowFireTimer < 60)
          {
            image (bowL6, x + 70, y + 275);
          }
          if (arrowFireTimer == 50)
          {
            arrowFire = 1;
            arrowGX = x + 95;
            arrowGY = y + 280;
            arrowFireTimer = 0;
          }
        }
      }
      if (arrowFire == 1)
      {
        if (key == 'r' && keyPressed)
        {
        }
        else if (arrowGX < width/2 + 10 && arrowGX > width/2 - 20)
        {
          health = health - 40;
          arrowGX = - 210;
        }
      }
      if (guardActivate == 0)
      {
        image (kingC, x + 85, y + 270);
      }
      
      if (timer < 10)
      {
        image (train1, x, y);
      }
      if (timer >= 10 && timer < 20)
      {
        image (train2, x, y);
        visibleLock = 1;
      }
      if (timer >= 20  && timer < 30)
      {
        image (train3, x, y);
      }
      if (timer >=  30 && timer < 40)
      {
        image (train4, x, y);
      }
      if (timer >= 40  && timer < 50)
      {
        image (train5, x, y);
      }
      if (timer >= 50 && timer< 60)
      {
        image (train6, x, y);
      }
      if (timer >= 60 && timer < 70)
      {
        image (train7, x, y);
      }
      if (timer >= 70 && timer < 80)
      {
        image (train8, x, y);
      }
      if (timer >= 80 && timer < 90)
      {
        image (train9, x, y);
      }
      if (timer >= 90 && timer <100 )
      {
        image (train10, x, y);
      }
      if (timer >= 100 && timer < 110)
      {
        image (train11, x, y);
      }
      if (timer >= 110 && timer < 120)
      {
        image (train12, x, y);
      }
      if (timer >= 120 &&timer < 130)
      {
        image (train13, x, y);
      }
      if (timer >= 130 && timer< 140)
      {
        image (train14, x, y);
      }
      if (timer >= 140 && timer< 150)
      {
        image (train15, x, y);
      }
      if (timer >= 150 && timer< 160)
      {
        image (train16, x, y);
      }
      if (timer >= 160 && timer< 170)
      {
        image (train17, x, y);
      }
      if (timer >= 170 && timer< 180)
      {
        image (train18, x, y);
      }
      if (timer >= 180 && timer< 190)
      {
        image (train19, x, y);
      }
      if (timer >= 190 && timer< 200)
      {
        image (train20, x, y);
      }
      if (timer >= 195)
      {
        timer = 0;
      }
      if (direction <= 3 && arrowX > x && arrowX < x + 100 && arrowY > y + 260 && fire == 1|| timer3 > 0)
      {
        if (timer2 < 10)
        {
          image(fire1, x, y);
        }
        if (timer2 > 10)
        {
          image (fire2, x, y);
        }
        if (timer2 > 20)
        {
          timer2 = 0;
        }
        timer3 = timer3 + 0.5;
        if (timer3 > 60)
        {
          timer3 = 0;
        }
        timer2 = timer2 + 1;
        arrowX = - 10000000;
      }
      if (width/2 > x && width/2 < x + 100|| timer3 > 0)
      {
        if (timer2 < 10)
        {
          image(fire1, x, y);
        }
        if (timer2 > 10)
        {
          image (fire2, x, y);
        }
        if (timer2 > 20)
        {
          timer2 = 0;
        }
        timer3 = timer3 + 0.5;
        if (timer3 > 60)
        {
          timer3 = 0;
        }
        timer2 = timer2 + 1;
        if (width/2 > x + 20 && width/2 < x + 100)
        {
          health = health - 10;
        }
      }
      if (width/2 > x - 200 && width/2 < x - 180|| cutSceneC == 1)
      {
        cutSceneC = 1;
        sceneC = sceneC + 1;

        if (sceneC < 200)
        {
          image (c1, x - 75, y + 185);
        }
        if (sceneC >= 200 && sceneC < 400 )
        {
          image (c2, x - 75, y + 185);
        }
        if (sceneC >= 400&& sceneC < 600 )
        {
          image (c3, x - 75, y + 185);
        }
        if (sceneC >= 600&& sceneC < 800 )
        {
          image (c4, x - 75, y + 185);
        }
        if (sceneC >= 800&& sceneC <  1000)
        {
          image (c5, x - 75, y + 185);
        }
        if (sceneC >= 1000&& sceneC < 1800 && timer3 > 0 && fire == 1 )
        {
          image (c6, x - 75, y + 185);
        }
        if (sceneC >= 1000 && sceneC < 1800 && timer3 > 0 && fire == 0)
        {
          image (c7, x - 75, y + 185);
        }
        if (sceneC >= 1800 && sceneC < 2000 )
        {
          image (c8, x - 75, y + 185);
        }
        if (sceneC >= 2000 && sceneC < 2200 )
        {
          image (c9, x - 75, y + 185);
        }
        if (sceneC >= 2200 && sceneC < 2400 )
        {
          image (c10, x - 75, y + 185);
        }
        if (sceneC >= 2250 && direction < 7)
        {
          direction = direction + .01;
        }
        if (x >= 1800 && direction > 6)
        {
          counter=counter + .01666;
          guardActivate = 1;
        }
        else
        {
          counter = 0;
        }
        if (counter < 1 && counter > .1)
        {
          image (s5, width/2, y + 50);
        }
        if (counter >=1 && counter < 2)
        {
          image (s4, width/2, y + 50);
        }
        if (counter >=2 && counter < 3)
        {
          image (s3, width/2, y + 50);
        }
        if (counter >= 3 && counter < 4)
        {
          image (s2, width/2, y + 50);
        }
        if (counter >=4 && counter < 5)
        {
          image (s1, width/2, y + 50);
        }
        if (counter >= 5)
        {
          health = health - 300;
        }
      }
    }
  }
}

