class FortBuildingInside extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  float expand = 0;
  float colorLock = 0;
  PImage fortBuilding;
  PImage fortBuildingInside;
  PImage fortBuildingInside2;
  PImage fortBuildingInside3;
  PImage fortBuildingInside4;
  float greenC = 225;
  float redC = 225;
  float blueC = 225;
  float placeX = 0;
  float placeY = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;
  color brown = (103);
  float transperancy = 225; 
  float indoors = 0;
  float circleWidth = 20;
  float circlePlaceX = 0;
  float pickTimer = 0;
  float randomDamage = random (1, 3);
  float damageMenu = 0;
  float openTimer = 0;
  float takeTimer = 0;
  float taken = 0;
  float takenTimer = 0;
  float saveDamage = 0;
  float saveCurrentDamage = 0;
  float randomBowDamage = random (1, 4);
  float equipment = random (1,4);
  float randomMaxHealth = random (300, 350);
  FortBuildingInside(float x, float h)
  {
    super(x);

    _h = h;
  }



  void setup()
  {
    fortBuilding = loadImage ("FortBuilding.png");
    fortBuildingInside= loadImage ("FortBuildingInside.png");
    fortBuildingInside2 = loadImage ("FortBuildingInside4.png");
    fortBuildingInside3 = loadImage ("FortBuildingInside5.png");
    fortBuildingInside4 = loadImage ("FortBuildingInside6.png");
  }
  void draw()
  {

    if (visible()) {
      float x = xPos();
      float y = yPos();

      y -= _h + 10;



      if (indoors == 0)
      {
        fill (135, 45, 45);
        rect (x + 45, y + 220, 365, 90);
        image (fortBuildingInside2, x, y);

        if (width/2 >= x + 200 && width/2 < x + 275)
        {
          if (mouseX >= x + 200 && mouseX < x + 275 ) {

            image (fortBuildingInside2, x, y);
            if (mousePressed)
            {
              indoors = 1;
              openTimer = 0;
            }
          }
        }
      }
      if (indoors == 1  && circleWidth <= 40 && openTimer > 20)
      {
        
        fill (135, 45, 45);
        rect (x + 45, y + 220, 365, 90);
        image (fortBuildingInside2, x, y);
        if (width/2 >= x + 200 && width/2 < x + 275)
        {
          if (mouseX >= x + 200 && mouseX < x + 275 ) {

            
            if (mousePressed)
            {
              indoors = 0;
              openTimer = 0;
            }
          }
        }
        if (width/2 > x + 70 && width/2 < x + 130)
        {


          if (redC > 100 && colorLock == 0)
          {
            redC = redC - .2;
          }
          if (redC < 102)
          {
            colorLock = 1;
          }
          if (colorLock == 1)
          {
            greenC =  greenC - .2;
            redC = redC + 1;
          }
          if (greenC < 102)
          {
            colorLock = 2;
          }
          if (colorLock == 2)
          {
            blueC = blueC - .2;
            greenC = greenC + 1;
          }
          if (blueC < 102)
          {
            blueC = 225;
            redC = 225;
            greenC = 225;
            colorLock = 0;
          }
          if (keyPressed && key == 'x')
          {
            expand = 1;
            fill (0, 0, 0, 0);
            ellipse ( x +94, y + 240, 40, 40);
          }
          else
          {
            expand = 0;
            circleWidth = 20;
          }
          if (expand == 1)
          {
            pickTimer = pickTimer + 1;
            circleWidth = circleWidth + .05;
          }




          fill (redC, greenC, blueC);
          ellipse (x + 94, y + 240, circleWidth, circleWidth);
          fill (0);
          textSize (18);
          text ("X", x + 90, y + 245);
        }
      }
      else if (indoors == 1)
      {
        openTimer = openTimer  + 1;
        fill (135, 45, 45);
        rect (x + 45, y + 220, 365, 90);
        if (equipment < 2)
        {
        image (fortBuildingInside, x, y);
        }else if (equipment < 3 && equipment > 2)
        {
          image (fortBuildingInside3,x,y);
        }else if (equipment > 3)
        {
          image (fortBuildingInside4,x,y);
        }
        if (width/2 > x + 70 && width/2 < x + 130)
        {
          if (damageMenu == 0 && openTimer > 200)
          {
          fill (225);
          ellipse (x + 94, y + 240, 20, 20);
          fill (0);
          textSize (18);
          text ("X", x + 90, y + 245);
          }
          if (keyPressed && key == 'x' && openTimer > 200)
          {
            damageMenu = 1;
           
          }
          if (damageMenu == 1 && equipment < 2)
          {
            takeTimer = takeTimer + 1;
            fill (0);
            rect (1700, 0, 300, 100);
            fill (225);
            textSize (18);
            text ("Sword Stats:", 1720, 20);
            text ("Damage:", 1730, 40);
            text (randomDamage, 1820, 40);
            textSize (10);
            text ("Current Damage:", 1730, 80);
            
            text (damage, 1820, 80);
            text ("Press X to swap", 1730, 100);
            
          }
          else if (damageMenu == 1 && equipment > 2 && equipment < 3)
          {
             takeTimer = takeTimer + 1;
            fill (0);
            rect (1700, 0, 300, 100);
            fill (225);
            textSize (18);
            text ("Bow Stats:", 1720, 20);
            text ("Damage:", 1730, 40);
            text (randomBowDamage, 1820, 40);
            textSize (10);
            text ("Current Damage:", 1730, 80);
            
            text (arrowDamage, 1820, 80);
            text ("Press X to swap", 1730, 100);
          }
          else if (damageMenu == 1 && equipment > 3)
          {
             takeTimer = takeTimer + 1;
            fill (0);
            rect (1700, 0, 300, 100);
            fill (225);
            textSize (18);
            text ("Armor Stats:", 1720, 20);
            text ("Max Health:", 1730, 40);
            text (randomMaxHealth, 1860, 40);
            textSize (10);
            text ("Current Max Health:", 1730, 80);
            
            text (maxHealth, 1860, 80);
            text ("Press X to swap", 1730, 100);
          }
          if (takeTimer > 100 && keyPressed && key == 'x')
          {
            taken = 1;
          }
          
          if (taken == 1)
          {
            takenTimer = takenTimer + 1;
       
           if (takenTimer > 0 && takenTimer <= 2 && equipment < 2)
           {
            
             saveCurrentDamage = damage;
             saveDamage = randomDamage;
           }
           else if (takenTimer > 0 && takenTimer <= 2 && equipment > 2 && equipment < 3)
           {
             
             saveCurrentDamage = arrowDamage;
             saveDamage = randomBowDamage;
           }
           else if (takenTimer > 0 && takenTimer <=2 && equipment > 3)
           {
             saveCurrentDamage = maxHealth;
             saveDamage = randomMaxHealth;
           }
            if (takenTimer >= 6 && takenTimer <= 8 && equipment < 2)
            {
              damage = saveDamage;
              randomDamage = saveCurrentDamage;
            }
            else if (takenTimer >= 6 && takenTimer <= 8 && equipment > 2 && equipment < 3)
            {
              arrowDamage = saveDamage;
              randomBowDamage = saveCurrentDamage;
            }
            else if (takenTimer >=6 && takenTimer <= 8 && equipment > 3)
            {
              maxHealth = saveDamage;
              randomMaxHealth = saveCurrentDamage;
            }
            if (takenTimer > 40)
            {
              taken = 0;
              takenTimer = 0;
              openTimer = 0;
              damageMenu = 0;
               takeTimer = 0;
             
          }
          }
        }
      }
    }
  }
}

