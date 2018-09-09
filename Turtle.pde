class Turtle extends GroundObject
{
  PImage turtleRight;
  PImage turtleLeft;
  
  PImage turtleRightRunning;
  PImage turtleLeftRunning;
  PImage turtleHide;
  

  PImage ts;
  float range;
  float current;
  float direction;
  float turtleRun =0;
  float deadturtlegy = 0;
  float timer = 0;
  float turtleHealth = 10;
  float timer2 = 0;
  color white = (225);
  float timer4 = 0;
  float alert = 0;
  void setup ()
  {
    turtleRight = loadImage("Turtle4.png");
    turtleLeft = loadImage("Turtle.png");
    
    turtleRightRunning = loadImage("Turtle3.png");
    turtleLeftRunning = loadImage("Turtle2.png");
    
    turtleHide = loadImage("Turtle5.png");
    ts = loadImage ("TurtleShell.png");
  }



  Turtle(float x)
  {
    super(x);
    range = random (0, 500);
    current = 0;
    direction = 1;
  }

  void draw()
  {
    if (visible()) {
      float x = xPos();

      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);
      y -= 70; 
      if (current > range) {
        direction = -.2;
      } 
      else if (current < -range) {
        direction = .2;
        image(turtleRight, x, y);
      }
      if (direction >= 0 && turtleRun == 0)
      {
        if (timer >= 50)
        {
          image(turtleRight, x, y - 20);
        }
        else
        {
          image (turtleRightRunning, x, y - 20);
        }
      }
      if (direction <= 0 && turtleRun == 0)
      {

        if (timer >= 50)
        {
          image(turtleLeft, x, y - 20);
        }
        else
        {
          image(turtleLeftRunning, x, y - 20);
        }
      }
      if (++timer > 100)
      {
        timer = 0;
      }
      if (arrowX < x + 50 && arrowX > x && arrowY < y + 100 && arrowY > y - 40 && fire == 1 && turtleRun == 0)
      {
        turtleHealth = turtleHealth - arrowDamage;
        arrowX = - 10000000;

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
      if (((x < width/2) && (x > width/2 - 100)) || (turtleRun == 1) || alert == 2)
      {
        turtleRun = 1;
        image (turtleHide,x,y);
        direction = 0;
        range = 1000000;
        fill (225, 0, 0);
        rect (x + 30, y - 30, 5, 20);
        ellipse (x + 33, y - 7, 4, 4);
      }
      if (((x > width/ 2) && (x < width/ 2 + 100)) || (turtleRun == 2) || alert == 1)
      {
        turtleRun = 2;
        image (turtleHide,x,y);
        direction = 0;
        range = 1000000;
        fill (225, 0, 0);
        rect (x + 30, y - 30, 5, 20);
        ellipse (x + 33, y - 7, 4, 4);
      }
      if (mouseX < x + 50 && mouseX > x && mouseY < y + 300 && mouseY > y + 100 && x - 110 < width / 2 && x + 110 > width/2 && deadturtlegy == 0 && timer2 > 20 && bowDrawn == 0)
      {
        fill (80, 8, 10);
        rect(mouseX, mouseY - 10, 6, 15);
        rect(mouseX - 2, mouseY - 10, 9, 3);
        fill (152, 138, 138);
        rect(mouseX, mouseY - 30, 5, 20);
        triangle(mouseX, mouseY - 30, mouseX + 6, mouseY- 30, mouseX + 3, mouseY - 35);
        if (mousePressed)
        {
          
          timer2 = 0;
        }
        if (direction > 3 && timer < 1000 && turtleHealth <= 9)
        {

          timer = timer + 1;
        }
        if (direction < -3 && timer < 1000 && turtleHealth <= 9) {
       
        }
      }
    if (mousePressed)
    {
      timer2 = timer2 + 1;
    }
  }
    
    if (turtleHealth <= 0 || deadturtlegy > 0)
    {

      deadturtlegy = deadturtlegy + 1;
      current = 10000000;

      if (get (660, 40) == color (225) && timer4 < 500) {
        image (ts, 640, 5);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          
        }
      }
      else if (get (710, 40) == color (225) && timer4 < 500) {
        image (ts, 690, 5);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          
        }
      }

      else if (get (760, 40) == color (225) && timer4 < 500) {
        image (ts, 740, 5);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
        {
          
        }
      }
      else if (get (810, 40) == color (225) && timer4 < 500) {
        image (ts, 790, 5);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
        {
          
        }
      }
      else if (get (860, 25) == color (225) && timer4 < 500) {
        image (ts, 840, 5);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          
        }
      }
      else if (get (910, 25) == color (225) && timer4 < 500) {
        image (ts, 890, 5);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
        {
          
          
        }
      }    
      else if (get (960, 25) == color (225) && timer4 < 500) {
        image (ts, 940, 5);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          
          
        }
      }
      else if (get (1010, 25) == color (225) && timer4 < 500) {
        image (ts, 990, 5);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          
        }
      }
      else if (get (1060, 25) == color (225) && timer4 < 500) {
        image (ts, 1040, 5);
        if (mouseX > 1050 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
         
        }
      }
      else if (get (1110, 25) == color (225) && timer4 < 500) {
        image (ts, 1090, 5);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
        {
          
          
        }
      }
      else
      {
      }
    }
  }
}

