class Scorpion extends GroundObject
{
  PImage scorpionIdle;
  PImage scorpionLeft;
  PImage scorpionLeft2;

  PImage scorpionRight;
  PImage scorpionRight2;

  PImage scorpionStrikeR1;
  PImage scorpionStrikeR2;
  PImage scorpionStrikeL1;
  PImage scorpionStrikeL2;

  
  float range;
  float current;
  float direction;
  float scorpionRun =0;
  float deadscorpion = 0;
  float timer = 0;
  float scorpionHealth = 5;
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
    scorpionIdle = loadImage("Char_primary.png");
  scorpionLeft = loadImage ("Scorpion3.png");
    scorpionLeft2 = loadImage("Scorpion4.png");
    scorpionRight =  loadImage("Scorpion1.png");
    scorpionRight2 = loadImage("Scorpion2.png");
    scorpionStrikeR1 = loadImage("Scorpion5.png");
    
    scorpionStrikeL1 = loadImage("Scorpion6.png");
    

   
  }



 Scorpion(float x)
  {
    super(x);
    range = random (100, 500);
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
      y -= 60; 
    if (current > range) {
        direction = -1;
      } 
      else if (current < -range) {
        direction = 1;
        
      }
      if (direction >= 1)
      {
        if (timer >= 10)
        {
         image(scorpionRight, x, y); 
        }
        else
        {
          image(scorpionRight2,x,y);
        }
      }
      
      if (direction <= -1)
      {

        if (timer >= 10)
        {
          image(scorpionLeft, x, y);
        }
        else
        {
          image(scorpionLeft2, x, y);
        }
      }
      if (direction == 0 && lock == 0)
      {
        image(scorpionLeft,x,y);
      }

      if (++timer > 20)
      {
        timer = 0;
      }
     

      if (arrowX < x + 150 && arrowX > x && arrowY > y && arrowY < y + 150 && fire == 1)
      {
        scorpionHealth = scorpionHealth - arrowDamage;
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
        if ( x >= width/2 - 10  && x <= width/2)
        {
        direction = 0;
         timer4 = timer4 + 1;
         if (timer4 < 10)
          {
            image (scorpionStrikeL1,x,y);
          }
          if (timer4 >= 10)
          {
            image (scorpionLeft,x,y);
            health = health - 1;
           
          }
          if (timer4 >= 20)
          {
            timer4 = 0;
          }
        }
        //if ( x <= width/ 2  && x - 10 >= width/2)
        //{
          //timer4 = timer4 + 1;
          //direction = 0;
          //if (timer4 < 10)
          //{
           // image (scorpionStrikeR1,x,y);
          //}
          //if (timer4 >= 10)
          //{
          // image (scorpionRight,x,y);
           // health = health - 1;
            
         // }
          //if (timer4 >= 20)
          //{
          //  timer4 = 0;
          //}
        //}
        if ( x >= width/2 - 10 && x <= width/2 + 10)
        {
          alert = 0;
        }
      }
      
      

      if (mouseX < x + 150 && mouseX > x && mouseY < y + 150 && mouseY > y + 50 && x - 110 < width / 2 && x + 110 > width/2 && timer2 > 20 && bowDrawn == 0)
      {
        
        fill (80, 8, 10);
        rect(mouseX, mouseY - 10, 6, 15);
        rect(mouseX - 2, mouseY - 10, 9, 3);
        fill (152, 138, 138);
        rect(mouseX, mouseY - 30, 5, 20);
        triangle(mouseX, mouseY - 30, mouseX + 6, mouseY- 30, mouseX + 3, mouseY - 35);
        if (mousePressed)
        {
          scorpionHealth = scorpionHealth - damage;
          timer2 = 0;
        }
        if (direction > 3 && timer < 1000 && scorpionHealth <= 9)
        {
         
          timer = timer + 1;
        }
        if (direction < -3 && timer < 1000 && scorpionHealth <= 9) {

        }
      }
      
    if (mousePressed)
    {
      timer2 = timer2 + 1;
    }
  }
    
    if (scorpionHealth <= 0)
    {
      deadscorpion = deadscorpion + 1;
      current = 10000000;
    }
  }
}

