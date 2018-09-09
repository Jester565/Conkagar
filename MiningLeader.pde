class MiningLeader extends GroundObject
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
  PImage comment1;
   PImage comment2;
    PImage comment3;
     PImage comment4;
      PImage comment5;
       PImage comment6;
        PImage quote1;
  PImage quote2;
  PImage quote3;
  PImage quote4;
  PImage quote5;
  PImage equote5;
  
  PImage arrowL;
  float alertLock = 0;
  PImage arrowR;
  float elevatorTimer = 0;
  float range;
  PImage guardIdleL;
  PImage guardIdleR;
  float current;
  float direction;
  PImage equote1;
  PImage equote2;
  float tquoteLoad;
  PImage equote3;
  PImage equote6;
  PImage trumpet;
  PImage equote4;
  float equoteLoad;
  float guardRun =0;
  float deadguard = 0;
  float timer = 0;
  float guardHealth = 5;
  float timer2 = 0;
  float timer3 = 0;
  float eRun = 0;
  float timer4 = 0;
  float detect = 0;
  float detect2 = 0;
  float alert = 0;
  float fortHeight = 47;
  float lock = 0;
  float eRunner = 0;
  float commentTimer = 0;
  float randomComment = random(0, 7);
  color brown = (80);
  float quoteLoad = 0;
  void setup ()
  {
    guardIdle = loadImage("Guard_dual.png");
    guardIdleL = loadImage ("guardIdleL.png");
    guardIdleR = loadImage ("guardIdleR.png");
    guardRight = loadImage ("GuardRun.png");
    guardRightStep = loadImage("GuardRun2.png");

    guardLeft = loadImage("GuardRun3.png");
    guardLeftStep = loadImage("GuardRun4.png");

    swingSword1 = loadImage("GuardSwing1.png");
    swingSword2 = loadImage("GuardSwing2.png");
    swingSwordL1 = loadImage ("GuardSwing3.png");
    swingSwordL2 = loadImage ("GuardSwing4.png");

    comment1 = loadImage ("MineLeader.png");
    comment2 = loadImage ("MineLeader2.png");
    comment3 = loadImage ("MineLeader3.png");
    comment4 = loadImage ("MineLeader4.png");
    comment5 = loadImage ("MineLeader5.png");
    comment6 = loadImage ("MineLeader6.png");
    arrowR = loadImage ("ArrowR.png");
    arrowL = loadImage ("ArrowL.png");
    
   equote1 = loadImage ("ElevatorQuote1.png");
   equote2 = loadImage ("ElevatorQuote2.png");
   equote3 = loadImage ("ElevatorQuote3.png");
   equote4 = loadImage ("ElevatorQuote4.png");
   equote5 = loadImage ("ElevatorQuote5.png");
   equote6 = loadImage ("ElevatorQuote6.png");
    quote1 = loadImage ("CutSceneGuardQuote1.1.png");
    quote2 = loadImage ("CutSceneGuardQuote1.2.png");
    quote3 = loadImage ("CutSceneGuardQuote1.3.png");
    quote4 = loadImage ("CutSceneGuardQuote1.4.png");
    quote5 = loadImage ("CutSceneGuardQuote1.5.png");
    trumpet = loadImage ("guardTrumpet.png");
  }



  MiningLeader(float x)
  {
    super(x);

    current = 0;
    direction = 1;
  }

  void draw()
  {
    if (visible() && mobStop == 0 || gateButton == 1 && visible()) {
      
      if (x == mineCartPos + 3400)
      {
        quoteLoad = 1;
      }
      if (x == mineCartPos + 7150)
      {
       equoteLoad = 1;
      }
      if (x == mineCartPos + 7800)
      {
        tquoteLoad = 1;
      }
      if (x == mineCartPos + 6920 || x == mineCartPos + 7000 || x == mineCartPos + 7050)
      {
        eRunner = 1;
      }
      if (x == mineCartPos + 7000)
      {
        eRun = 1;
      }
      
      float x = xPos();
      
      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);
      y -= fortHeight; 
      commentTimer = commentTimer + 1;
      if (elevatorScene == 0 && eRunner == 1 || elevatorScene == 0 && equoteLoad == 1 || elevatorScene == 0 && tquoteLoad == 1 || quoteLoad == 1 && cutSceneTimer2 == 0)
      {
        direction = 0;
      }
      if (commentTimer > 150)
      {
        commentTimer = 0;
        randomComment = random (0,6);
      }
      if (elevatorTimer < 300 && tquoteLoad == 1 && elevatorScene == 1)
        {
          direction = -2;  
          
        }
        else if (tquoteLoad == 1)
        {
          direction = 0;
        }
      if (quoteLoad == 1 && gateButton == 1)
      {
        if (cutSceneTimer2 > 650 && cutSceneTimer2 < 900)
        {
          direction = -1;
         
        }
        else
        {
          direction = 0;
         
        }
       if (cutSceneTimer2 > 950 && cutSceneTimer2 < 1100)
       {
          image (quote1, x - 40, y - 100);
       }
       if (cutSceneTimer2 > 1100 && cutSceneTimer2 < 1250)
       {
         image (quote2, x - 40, y - 100);
       }
       if (cutSceneTimer2 > 1250 && cutSceneTimer2 < 1400)
       {
         image (quote3, x - 140, y - 100);
       }
        if (cutSceneTimer2 > 1400 && cutSceneTimer2 < 1550)
       {
         image (quote4, x - 140, y - 100);
       }
        if (cutSceneTimer2 > 1550 && cutSceneTimer2 < 1700)
       {
         image (quote5, x - 40, y - 100);
       }
      }
      if (elevatorScene == 1 && eRunner == 1)
      {
        elevatorTimer = elevatorTimer + 1;
        if (elevatorTimer > 650 )
        {
          direction = -1;
          if (eRun == 1)
          {
          image (equote6, x + 40, y - 100);
          }
        }
        else
        {
          direction = 0;
        }
      }
      else if (eRunner == 1)
      {
        direction = 0;
      }
      if (elevatorScene == 1 && equoteLoad == 1)
      {
       
        elevatorTimer = elevatorTimer + 1;
        if (elevatorTimer < 100)
        {
          image (equote1, x + 10, y - 100);
        }
        if (elevatorTimer >=100 && elevatorTimer < 200)
        {
          image (equote2,x + 10, y - 100);
        }
        if (elevatorTimer >= 200 && elevatorTimer < 300)
        {
          image (equote3,x + 10, y -100);
        }
        if (elevatorTimer >= 300 && elevatorTimer < 400)
        {
          image (equote4, x + 10, y - 100);
        }
        if (elevatorTimer >= 700)
        {
          image (equote5, x+10, y - 100);
        }
      }
      if (elevatorScene == 1 && tquoteLoad == 1)
      {
       
        elevatorTimer = elevatorTimer + 1;
        
        
        if (elevatorTimer >= 300 )
        {
          image (trumpet,x,y);
        }
      }
      if (detect == 0 && gateButton == 0 && equoteLoad == 0 && tquoteLoad == 0 && eRunner == 0)
      {
      if (randomComment < 1)
      {
        image (comment1, x, y - 130);
      }
      else if (randomComment > 1 && randomComment < 2)
      {
        image (comment2, x, y - 130);
      }
      else if (randomComment > 2 && randomComment< 3)
      {
        image (comment3, x, y - 130);
      }
      else if (randomComment > 3 && randomComment < 4)
      {
        image (comment4, x,y - 130);
      }
      else if (randomComment > 4 && randomComment < 5)
      {
        image (comment5, x, y - 130);
      }
      else 
      {
        image (comment6, x, y - 130);
      }
      }
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
      if (detect == 0 && quoteLoad == 0 && cutSceneTimer2 == 0 && tquoteLoad == 0 && eRunner == 0)
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
 if (elevatorTimer >= 820)
  {
    guardHealth = guardHealth - 50;
  }
      if (alert == 0 && quoteLoad == 0 && cutSceneTimer2 < 900 && direction == 0 && timer4 == 0 && tquoteLoad == 0)
      {
        image (guardIdle, x + 30, y );
      }
      if (cutSceneTimer2 >= 900 && quoteLoad == 0 && direction == 0 && timer4 == 0 && tquoteLoad == 0)
      {
        image (guardIdleL, x, y );
      }
      if (quoteLoad == 1 && direction == 0 && alert == 0 && direction == 0 && timer4 == 0 && tquoteLoad == 0)
      {
        image (guardIdleR,x,y );
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
      if (alert != 0)
      {
        alertLock = 1;
      }

      //fill (239, 141, 240);
      //rect (x, y, 30, 15);
      //rect (x + 1, y + 12, 5, 8);
      //rect (x + 25, y + 12, 5, 8);
      //rect (x + 28, y, 10, 10);
      //fill (0, 0, 0);
      // rect (x + 33, y + 2, 3, 3);
      //rect (x + 34, y + 6, 4, 2);
      if ((x > width/2 -300 ) && (x < width/2 + 300) && detect2 == 0 && gateButton == 0|| detect == 1)
      {

        detect = 1;
        range = 1000;
        fill (225, 0, 0);
        rect (x + 30, y - 30, 5, 20);
        ellipse (x + 33, y - 7, 4, 4);
        lock = 1;


        if (x >= width/2 + 10 && x<= width/2 + 260 && gateButton == 0|| alert == 1)
        {
          direction = -3.2;
          timer4 = 0;
        }
        if (x <= width/2 - 10 && x>= width/2 -260  && gateButton == 0|| alert == 2)
        {
          direction = 3.2;
          timer4 = 0;
         
        }
        if ( x >= width/2 && x <= width/2 + 10 && gateButton == 0)
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
        if ( x <= width/ 2  && x - 10 >= width/2 && gateButton == 0)
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
      if (alert != 0 && equoteLoad == 1|| alert != 0 && tquoteLoad == 1 || alert != 0 && eRunner == 1)
      {
        health = health - 300;
      }
      
      if (mouseX < x + 50 && mouseX > x && mouseY < y + 40 && mouseY > y && x - 110 < width / 2 && x + 110 > width/2 && timer2 > 20 && bowDrawn == 0 && gateButton == 0)
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
      if (width / 2 < x + 50 && width/2 > x - 30 && cutSceneTimer2 < 80)
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

