class FortBuilding extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  float openTimer = 0;
  float indoors = 0;
  PImage fortBuilding;
  PImage fortBuildingInside;
  PImage fortBuilding2;
  PImage door1;
  PImage door2;
  float placeX = 0;
  float placeY = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;

  float transperancy = 225;
  PImage guardIdle;
  PImage guardRight;
  PImage guardRightStep;

  PImage guardLeft;
  PImage guardLeftStep;

  PImage swingSword1;
  PImage swingSword2;
  PImage swingSwordL1;
  PImage swingSwordL2;
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
  float roomBorder;
  color brown = (80);
  float equipment = random (1,4);

  FortBuilding(float x, float h)
  {
    super(x);

    _h = h;
  }



  void setup()
  {
    fortBuilding = loadImage ("FortBuilding.png");
    fortBuildingInside= loadImage ("FortBuildingInside.png");
    fortBuilding2 = loadImage ("FortBuilding2.png");
    door1 = loadImage ("Door.png");
    door2 = loadImage ("Door2.png");
    guardIdle = loadImage("Char_primary.png");
    guardRight = loadImage ("Char_run1.png");
    guardRightStep = loadImage("Char_run2.png");

    guardLeft = loadImage("Char_Lrun1.png");
    guardLeftStep = loadImage("Char_Lrun2.png");

    swingSword1 = loadImage("Char_swordStrike1.png");
    swingSword2 = loadImage("Char_swordStrike2.png");
    swingSwordL1 = loadImage ("Char_LswordStrike1.png");
    swingSwordL2 = loadImage ("Char_LswordStrike2.png");
  }
  void draw()
  {

    if (visible()) {
      float x = xPos();
      float y = yPos();
      openTimer = openTimer + 1;
      y -= _h + 10;
      
   
      if (indoors == 0 && openTimer > 20)
      {
       
        image (fortBuilding, x, y);
        if (width/2 >= x + 200 && width/2 < x + 275)
        {
          if (mouseX >= x + 200 && mouseX < x + 275 ) {

            image (fortBuilding2, x, y);
            if (mousePressed && gateButton == 0)
            {
              indoors = 1;
              openTimer = 0;
            }
          }
        }
      }
      if (indoors == 1 && openTimer >= 20)
      {
        mobStop = 1;
      if (width/2 > x + 375 )
      {
        rightStop = 1;
      }
       else
       {
         rightStop = 0;
       }
       if (width/2 < x + 60) 
       {
         leftStop = 1;
      
       }
       else
       {
         leftStop = 0;
       }
      

        openTimer = openTimer + 1;

        if (width/2 >= x + 200 && width/2 < x + 275)
        {
          image (door1, x + 175, y + 245);


          if (mouseX >= x + 200 && mouseX < x + 275 ) {

            image (door2, x + 210, y + 245);
            if (mousePressed)
            {
              indoors = 0;
              openTimer = 0;
               mobStop = 0;
            }
          }
        }




   
        current += direction;
        x += current;
        y += 250;
        x += 30;

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
        if (detect == 0)
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
        if (direction == 0 && lock == 0)
        {
          image (guardIdle, x, y - 15);
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
          if ( x >= width/2 && x <= width/2 + 10)
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
          if ( x <= width/ 2  && x - 10 >= width/2)
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



        if (mouseX < x + 50 && mouseX > x && mouseY < y + 40 && mouseY > y && x - 110 < width / 2 && x + 110 > width/2 && timer2 > 20 && bowDrawn == 0)
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
        if (width / 2 < x + 50 && width/2 > x - 5)
        {
          health = health - 2;
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
}


