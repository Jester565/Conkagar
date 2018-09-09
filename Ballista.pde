class Ballista extends GroundObject
{
  PImage ballista;
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
  PImage ballista2;
  PImage ballista3;
  PImage ballista4;
  PImage ballista5;

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
  float randomTimer = random (50, 100);
  
  
  
  void setup ()
  {
    ballista = loadImage("Ballista.png");
    ballista2 = loadImage("Ballista2.png");
    ballista3 = loadImage ("Ballista3.png");
    ballista4 = loadImage ("Ballista4.png");
    ballista5 = loadImage ("Ballista5.png");
    arrowR = loadImage ("ArrowR.png");
    arrowL = loadImage ("ArrowLL.png");
    arrowL2 = loadImage ("ArrowLL2.png");
    arrowL3 = loadImage ("ArrowLL3.png");
    explosion = loadImage ("Explosion.png");
    arrowLF1 = loadImage ("ArrowLLF1.png");
    arrowLF2 = loadImage ("ArrowLLF2.png");
    arrowL2F1 = loadImage("ArrowLL2F1.png");
    arrowL2F2 = loadImage ("ArrowLL2F2.png");
    arrowL2F3 = loadImage ("ArrowLL2F3.png");
  }



  Ballista(float x)
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
      
      
      
       
      direction = 0;
      if (x >= width/2 + 10 && x<= width/2 + 600  || alert == 1 )
      {
      
        
        alert = 1;
      }
      if (x >= width/2 - 10 && x - 600<= width/2|| alert == 2)
      {
       
        
        alert = 2;
      }
      if (timer4 < 70)
        {
          image (ballista,x,y - 175);
        }
      
      if (alert == 2)
      {
        timer4 = timer4 + 1;
        if (timer4 > 50 && timer4 <=70)
        {
          image (arrowL2, arrowLX, arrowLY);
          arrowLX = x + 80;
       arrowLY = y - 70; 
        }
        
        
        if (timer4 >= 70)
        {
          fire = 1;
         
        
        }
        
        if (timer4 >= 70 && timer4 <75)
        {
          image (ballista2, x, y - 175);
        }
        else if (timer4 >= 75 && timer4 < 80)
        {
          image (ballista3, x, y - 175);
        }
        else if (timer4 >= 80 && timer4 < 85)
        {
          image (ballista4, x, y -175);
        }
        else if (timer4 >= 85 && timer4 <= 300)
        {
          image (ballista5, x, y - 175);
        }
        else if (timer4 > 300 && timer4 < 500)
        {
          image (ballista4, x, y - 175);
        }
        else if (timer4 >= 500 && timer4 < 700)
        {
          image (ballista3, x, y - 175);
        }
        else if (timer4 >= 700 )
        {
          image (ballista2, x, y - 175);
        }
        
      }
        
      
      if (fire == 1)
      {
      
        timer6 = timer6 + 1;
        
        timer5 = timer5 + 1;
        arrowLX = arrowLX - arrowSpeed;
  
          image (arrowL2, arrowLX, arrowLY); 
          
        if (arrowLX > width/2 && arrowLX < width/2 + 20 && jumpHeight < 50)
        {
          health = health - 60;
          arrowLX = - 100000;
        }
       
      }
      if (timer6 > randomTimer)
      {
        arrowLY = arrowLY + 2;
        
         if (arrowLY > 950)
       {
        arrowLX = - 1000000;
       } 
       
      }
      
      if (arrowLY > y && timer4 > 900)
      {
        fire = 0;
        timer6 = 0;
        timer5 = 0;
        randomTimer = random (100, 300);
        timer4 = 0;
        arrowLY = y - 70;
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
       if ( sprintRecover < 10)
       {
         arrowSpeed = 6;
         arrowDirection = 0;
       }
        if (keyPressed && key == 'd' && screenStopRight == 0)
        {
          arrowSpeed = 9;
          arrowDirection = 1;
        }
        else if (keyPressed && key == 'a' && screenStopLeft == 0)
        {
          arrowSpeed = 3;
          arrowDirection = 2;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 1 && screenStopRight == 0 && sprintRecover > 5)
        {
          arrowDirection = 1;
          arrowSpeed = 11;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 2 && screenStopLeft == 0 && sprintRecover > 5)
        {
          arrowDirection = 2;
          arrowSpeed = 1;
        }
        else
        {
          arrowSpeed = 6;
          arrowDirection = 0;
        }
        if (screenStopRight == 1 || screenStopLeft == 1)
        {
          arrowSpeed = 6;
          arrowDirection = 0;
        }
      }
      
    }
  }
}


