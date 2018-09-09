class Snake extends GroundObject
{
  PImage guardIdle;
  PImage snakeLeft;
  PImage snakeLeft2;

  PImage snakeRight;
  PImage snakeRight2;

  PImage snakeStrikeR1;
  PImage snakeStrikeR2;
  PImage snakeStrikeL1;
  PImage snakeStrikeL2;

  
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
    guardIdle = loadImage("Char_primary.png");
    snakeLeft = loadImage ("snake1.png");
    snakeLeft2 = loadImage("snake2.png");
    snakeRight =  loadImage("snake3.png");
    snakeRight2 = loadImage("snake4.png");
    snakeStrikeR1 = loadImage("snake5.png");
    snakeStrikeR2 = loadImage("snake8.png");
    snakeStrikeL1 = loadImage("snake6.png");
    snakeStrikeL2 = loadImage("snake7.png");

   
  }



 Snake(float x)
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
      y -= 120; 
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
         image(snakeRight, x, y); 
        }
        else
        {
          image(snakeRight2,x,y);
        }
      }
      
      if (direction <= -1)
      {

        if (timer >= 10)
        {
          image(snakeLeft, x, y);
        }
        else
        {
          image(snakeLeft2, x, y);
        }
      }
      if (direction == 0 && lock == 0)
      {
        image(snakeLeft,x,y);
      }

      if (++timer > 20)
      {
        timer = 0;
      }
     

      if (arrowX < x + 150 && arrowX > x && arrowY > y && arrowY < y + 150 && fire == 1)
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
        if ( x >= width/2  && x <= width/2 + 10)
        {
        direction = 0;
         timer4 = timer4 + 1;
         if (timer4 < 50)
          {
            image (snakeStrikeL1,x,y);
          }
          if (timer4 >= 50)
          {
            image (snakeStrikeL2,x,y);
            health = health - 1;
            posionTimer = 0;
          }
          if (timer4 >= 75)
          {
            timer4 = 0;
          }
        }
        if ( x <= width/ 2  && x - 10 >= width/2)
        {
          timer4 = timer4 + 1;
          direction = 0;
          if (timer4 < 50)
          {
            image (snakeStrikeR1,x,y);
          }
          if (timer4 >= 50)
          {
            image (snakeStrikeR2,x,y);
            health = health - 1;
            posionTimer = 0;
          }
          if (timer4 >= 75)
          {
            timer4 = 0;
          }
        }
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
          guardHealth = guardHealth - damage;
          timer2 = 0;
        }
        if (direction > 3 && timer < 1000 && guardHealth <= 9)
        {
         
          timer = timer + 1;
        }
        if (direction < -3 && timer < 1000 && guardHealth <= 9) {

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

