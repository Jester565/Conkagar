class Pig extends GroundObject
{
  PImage pigRight;
  PImage pigLeft;
  PImage pigRightHit;
  PImage pigLeftHit;
  PImage pigRightRunning;
  PImage pigLeftRunning;
  PImage bacon1;
  PImage bacon;
  float range;
  float current;
  float direction;
  float pigRun =0;
  float deadPiggy = 0;
  float timer = 0;
  float pigHealth = 2;
  float timer2 = 0;
  color white = (225);
  float timer4 = 0;
  float countTimer = 0;
  float alert = 0;
  void setup ()
  {
    pigRight = loadImage("Pig_right.png");
    pigLeft = loadImage("Pig_left.png");
    pigRightHit = loadImage("Pig_rightHit.png");
    pigLeftHit = loadImage("Pig_leftHit.png");
    pigRightRunning = loadImage("Pig_rightStep.png");
    pigLeftRunning = loadImage("Pig_leftStep.png");
    bacon = loadImage("Bacon.png");
    bacon1 = loadImage("Bacon.png");
  }



  Pig(float x)
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
      y -= 20; 
      if (current > range && alert == 0) {
        direction = -1;
      } 
      else if (current < -range && alert == 0) {
        direction = 1;
      }
      //swag
      if (direction >= 0 )
      {
        if (timer >= 10)
        {
          image(pigRight, x, y - 20);
        }
        else
        {
          image (pigRightRunning, x, y - 20);
        }
      }
      if (direction <= -1 )
      {

        if (timer >= 10)
        {
          image(pigLeft, x, y - 20);
        }
        else
        {
          image(pigLeftRunning, x, y - 20);
        }
      }
      if (++timer > 20)
      {
        timer = 0;
      }
      if (arrowX < x + 50 && arrowX > x && arrowY < y && arrowY > y - 40 && fire == 1)
      {
        pigHealth = pigHealth - arrowDamage;
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
      if (((x < width/2) && (x > width/2 - 100)) || (pigRun == 1) || alert == 2)
      {
        pigRun = 1;
        direction = -3.2;
        alert = 2;
        fill (225, 0, 0);
        rect (x + 30, y - 30, 5, 20);
        ellipse (x + 33, y - 7, 4, 4);
      }
      if (((x > width/ 2) && (x < width/ 2 + 100)) || (pigRun == 2) || alert == 1)
      {
        pigRun = 2;
        alert = 1;
        direction = 3.2;
        range = 1000000;
        fill (225, 0, 0);
        rect (x + 30, y - 30, 5, 20);
        ellipse (x + 33, y - 7, 4, 4);
      }
      if (mouseX < x + 50 && mouseX > x && mouseY < y + 40 && mouseY > y && x - 110 < width / 2 && x + 110 > width/2 && deadPiggy == 0 && timer2 > 20 && bowDrawn == 0)
      {
        fill (80, 8, 10);
        rect(mouseX, mouseY - 10, 6, 15);
        rect(mouseX - 2, mouseY - 10, 9, 3);
        fill (152, 138, 138);
        rect(mouseX, mouseY - 30, 5, 20);
        triangle(mouseX, mouseY - 30, mouseX + 6, mouseY- 30, mouseX + 3, mouseY - 35);
        if (mousePressed)
        {
          pigHealth = pigHealth - damage;
          timer2 = 0;
        }
        if (direction > 3 && timer < 1000 && pigHealth <= 9)
        {
          image(pigRightHit, x, y - 20);
          timer = timer + 1;
        }
        if (direction < -3 && timer < 1000 && pigHealth <= 9) {
          image(pigLeftHit, x, y - 20);
        }
      }
      if (mousePressed)
      {
        timer2 = timer2 + 1;
      }
    }

    if (pigHealth <= 0 || deadPiggy > 0)
    {

      deadPiggy = deadPiggy + 1;
      current = 10000000;
      countTimer = countTimer + 1;
      if (countTimer == 2)
      {
        hud.inventory().item(Inventory.BACON).addItem();
      }
      //wassup
    }
  }
 }

