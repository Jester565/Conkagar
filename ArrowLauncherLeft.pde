class ArrowLauncherLeft extends GroundObject
{
  PImage launcher;
  PImage arrowL;
  PImage arrowR;
  PImage arrowL2;
  PImage arrowL3;
  PImage explosion;
  PImage arrowL2F1;
  PImage arrowL2F2;
  PImage arrowL2F3;
  PImage arrowLF1;
  PImage arrowLF2;
  
  float range;
  float current;
  float direction;

  float alert = 0;
  float timer5 = 0;
  float timer4= 0;
  float fire = 0;
  float arrowLX = 0;
  float arrowLX2 = 0;
  float arrowLX3 = 0;
  float arrowLX4 = 0;
  float arrowLX5 = 0;
  float arrowLY = 0;
  float arrowLY2 = 0;
  float arrowLY3 = 0;
  float arrowLY4 = 0;
  float arrowLY5 = 0;
  float arrowLY6 = 0;
  float arrowSpeed = 5;
  float arrowDirection = 0;
  float timer6 = 0;
  float randomTimer = random (100, 300);
  float randomTimer2 = random (100, 300);
  float randomTimer3 = random (100,300);
  float propulsion = 0;
  
  void setup ()
  {
    launcher = loadImage("ArrowLauncher2.png");
    arrowR = loadImage ("ArrowR.png");
    arrowL = loadImage ("ArrowLLL.png");
    arrowL2 = loadImage ("ArrowLLL2.png");
    arrowL3 = loadImage ("ArrowLLL3.png");
    explosion = loadImage ("Explosion.png");
    arrowLF1 = loadImage ("ArrowLLLF1.png");
    arrowLF2 = loadImage ("ArrowLLLF2.png");
    arrowL2F1 = loadImage("ArrowLLL2F1.png");
    arrowL2F2 = loadImage ("ArrowLLL2F2.png");
    arrowL2F3 = loadImage ("ArrowLLL2F3.png");
  }



  ArrowLauncherLeft(float x)
  {
    super(x);

    current = 0;
    direction = 1;
  }

  void draw()
  {
    if (visible() && mobStop == 0) {
      float x = xPos();
      

     
      float y = groundPos (xLoc() + current);
      
      image (launcher,x,y - 425);
      
       
      direction = 0;
      if (x >= width/2 + 10 && x<= width/2 + 600  || alert == 1 )
      {
      
        
        alert = 1;
      }
      if (width/2 > x  && width/2 < x + 1200|| alert == 2)
      {
       
        
        alert = 2;
      }
      
      if (alert == 2)
      {
        timer4 = timer4 + 1;
        if (timer4 > 50)
        {
          image (arrowL, arrowLX, arrowLY);
          arrowLX = x + 465;
       arrowLY = y - 115; 
        }
        if (timer4 > 100)
        {
          image (arrowL, arrowLX2, arrowLY2);
          arrowLX2 = x + 475;
       arrowLY2 = y - 107; 
        }
        if (timer4 > 150)
        {
          image (arrowL, arrowLX3, arrowLY3);
          arrowLX3 = x + 480;
          arrowLY3 = y - 97;
        }
        
        if (timer4 == 200)
        {
          fire = 1;
         
          timer4 = 0;
        }
      }
      
      if (fire == 1)
      {
       propulsion = propulsion + 1;
       if (propulsion > 30)
       {
         propulsion = 0;
       }
        timer6 = timer6 + 1;
        timer4 = 0;
        timer5 = timer5 + 1;
        arrowLX = arrowLX + arrowSpeed;
        arrowLX2 = arrowLX2 + arrowSpeed;
        arrowLX3 = arrowLX3 + arrowSpeed;
        if (arrowLY < y - 590)
        {
          if (propulsion <= 10)
          {
          image (arrowL2F1, arrowLX, arrowLY);
          }
          else if (propulsion <= 20)
          {
            image(arrowL2F2, arrowLX,arrowLY);
          }
          else
          {
            image(arrowL2F3, arrowLX,arrowLY);
          }
        }
        if (arrowLY2 < y - 490)
        {
          
          if (propulsion <= 10)
          {
          image(arrowL2F2, arrowLX2,arrowLY2);
          }
          else if (propulsion <= 20)
          {
            
            image (arrowL2F1, arrowLX2, arrowLY2);
          }
          else
          {
            image(arrowL2F3, arrowLX2,arrowLY2);
          }
        }
        if (arrowLY3 < y - 390)
        {
          if (propulsion <= 10)
          {
          image(arrowL2F3, arrowLX3,arrowLY3);
          }
          else if (propulsion <= 20)
          {
            
            image (arrowL2F1, arrowLX3, arrowLY3);
          }
          else
          {
            
            image(arrowL2F2, arrowLX3,arrowLY3);
          }
        }
        if (arrowLY >= y - 600 && timer6 <= randomTimer && fire == 1)
        {
          arrowLY = arrowLY -  3;
         if (propulsion <= 15)
          {
          image(arrowLF2, arrowLX,arrowLY);
          }
          else 
          {
            
            image (arrowLF1, arrowLX, arrowLY);
          }
          
          
        }
        if (arrowLY2 >= y - 500 && timer6 <= randomTimer2 && fire == 1)
        {
          arrowLY2 = arrowLY2 - 3;
         if (propulsion <= 15)
          {
          image(arrowLF2, arrowLX2,arrowLY2);
          }
          else 
          {
            
            image (arrowLF1, arrowLX2, arrowLY2);
          }
          
        }
        if (arrowLY3 >= y - 400 && timer6 <=randomTimer3 && fire == 1)
        {
          arrowLY3 = arrowLY3 - 3;
          if (propulsion <= 15)
          {
          image(arrowLF2, arrowLX3,arrowLY3);
          }
          else 
          {
            
            image (arrowLF1, arrowLX3, arrowLY3);
          }
        }
        if (arrowLX > width/2 - 100 && arrowLX < width/2 + 100 && arrowLY  > 860 && arrowLY  < 870)
        {
          health = health - 60;
          
        }
       if (arrowLX2 >width/2 - 100 && arrowLX2 < width/2 + 100 && arrowLY2 >860 && arrowLY2 < 870)
       {
         health = health - 60;
       }
       if (arrowLX3 >width/2 - 100 && arrowLX3 < width/2 + 100 && arrowLY3 >860 && arrowLY3 < 870)
       {
         health = health - 60;
       }
      
      }
      if (timer6 > randomTimer)
      {
        arrowLY = arrowLY + 7;
        image (arrowL3, arrowLX, arrowLY);
         if (arrowLY > 880)
       {
        arrowLX = - 1000000;
       } 
       if (arrowLY2 > 880)
       {
         arrowLX2 = - 100000000;
       }
       if (arrowLY3 > 880)
       {
        arrowLX3 = - 1000000;
       } 
      }
      if (timer6 > randomTimer2)
      {
        image (arrowL3, arrowLX2, arrowLY2);
        arrowLY2 = arrowLY2 + 7;
      }
      if (timer6 > randomTimer3)
      {
        image (arrowL3, arrowLX3, arrowLY3);
        arrowLY3 = arrowLY3 + 7;
      }
      if (arrowLY > y && arrowLY2 > y && arrowLY3 >y)
      {
        fire = 0;
        timer6 = 0;
        timer5 = 0;
        randomTimer = random (100, 300);
        randomTimer2 = random (100, 300);
        randomTimer3 = random (100, 300);
      }
      
      if (fire == 1)
      {
        if (sprintRecover <= 3)
      {
        arrowSpeed = 0;
        arrowDirection = 0;
      }
      if (leftStop == 1)
      {
        arrowSpeed = 0;
        arrowDirection = 0;
      }
      if (rightStop == 1)
      {
        arrowSpeed = 0;
        arrowDirection = 0;
      }
        if (sprintRecover < 10)
        {
          arrowSpeed = 3;
          arrowDirection = 0;
        }
        if (keyPressed && key == 'd' && screenStopRight == 0)
        {
          arrowSpeed = 0;
          arrowDirection = 1;
        }
        else if (keyPressed && key == 'a' && screenStopLeft == 0)
        {
          arrowSpeed = 6;
          arrowDirection = 2;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 1 && screenStopRight == 0 && sprintRecover > 5)
        {
          arrowDirection = 1;
          arrowSpeed = -2;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 2 && screenStopLeft  == 0 && sprintRecover > 5)
        {
          arrowDirection = 2;
          arrowSpeed = 8;
        }
        else
        {
          arrowSpeed = 3;
          arrowDirection = 0;
        }
        if (screenStopLeft == 1 || screenStopRight == 1)
        {
          arrowSpeed = 3;
        }
      }
      
    }
  }
}


