class WatchTower extends GroundObject
{
  float _w;
  float _h;
  float tarLock = 0;
  float tarHeight = 0;
  float tarOut = 0;
  float tarDown = 0;
  float lock = 0;
  PImage fort;
  PImage tarFort;
  PImage fire;
  PImage fire2;
  PImage fire3;
  PImage gate1;
  PImage gate2;
  PImage gate3;
  PImage gate4;
  PImage gate5;
  PImage gate6;
  float fireTimer = 0;
  float gateTimer = 0;
 

  WatchTower(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float treeDestroyed = 1;
  void setup()
  {
    fort = loadImage ("WatchTower1.png");
    
  }
  void draw()
  {

    if (visible()) {
      
      float x = xPos();
      float y = yPos();
      y -= _h;
      fill(80, 8, 10);
      
      image (fort, x, y - 365);
      /*
      if (storeAxeCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Axe, 840, 570);
            text(storeAxeCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Axe, 897, 570);
            text(storeAxeCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Axe, 953, 570);
            text(storeAxeCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Axe, 1014, 570);
            text(storeAxeCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Axe, 1067, 570);
            text(storeAxeCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Axe, 1126, 570);
            text(storeAxeCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Axe, 840, 623);
            text(storeAxeCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Axe, 895, 625);
            text(storeAxeCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Axe, 953, 625);
            text(storeAxeCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Axe, 1014, 625);
            text(storeAxeCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Axe, 1070, 625);
            text(storeAxeCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Axe, 1126, 625);
            text(storeAxeCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 13;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (ironCount >= 1)
    {
      if (get (650, 20) == color (225)) {
        image (iron, 650, 20);
        text (ironCount, 660, 57);
        if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);

          if (cm == 1 && mousePressed)
          {
            storeType = 3;
            chestPlace = 1;
          }
        }
      }
      else if (get (700, 20) == color (225)) {
        image (iron, 700, 20);
        text (ironCount, 710, 57);
        if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 3;
            chestPlace = 1;
          }
        }
      }

      else if (get (750, 20) == color (225)) {
        image (iron, 750, 20);
        text (ironCount, 760, 57);
        if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 3;
            chestPlace = 1;
          }
        }
      }
      else if (get (800, 20) == color (225)) {
        image (iron, 800, 20);
        text (ironCount, 810, 57);
        if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 3;
            chestPlace = 1;
          }
        }
      }
      else if (get (850, 20) == color (225)) {
        image (iron, 850, 20);
        text (ironCount, 860, 57);
        if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 3;
            chestPlace = 1;
          }
        }
      }
      else if (get (900, 20) == color (225)) {
        image (iron, 900, 20);
        text (ironCount, 910, 57);
        if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 3;
            chestPlace = 1;
          }
        }
      }    
      else if (get (950, 20) == color (225)) {
        image (iron, 950, 20);
        text (ironCount, 960, 57);
        if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 3;
            chestPlace = 1;
          }
        }
      }
      else if (get (1000, 20) == color (225)) {
        image (iron, 1000, 20);
        text (ironCount, 1010, 57);
        if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 3;
            chestPlace = 1;
          }
        }
      }
      else if (get (1050, 20) == color (225)) {
        image (iron, 1050, 20);
        text (ironCount, 1060, 57);
        if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 3;
            chestPlace = 1;
          }
        }
      }
      else if (get (1110, 25) == color (225)) {

        if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
        {
        }
      }
      else
      {

        image (iron, 1100, -80);
      }
    }
    if (stoneSwordCount >= 1)
    {
      if (get (650, 20) == color (225)) {
        image (stoneSword, 650, 20);
        text (stoneSwordCount, 660, 57);
        if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 27;
            chestPlace = 1;
          }
        }
      }
      else if (get (700, 20) == color (225)) {
        image (stoneSword, 700, 20);
        text (stoneSwordCount, 710, 57);
        if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 27;
            chestPlace = 1;
          }
        }
      }

      else if (get (750, 20) == color (225)) {
        image (stoneSword, 750, 20);
        text (stoneSwordCount, 760, 57);
        if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 27;
            chestPlace = 1;
          }
        }
      }
      else if (get (800, 20) == color (225)) {
        image (stoneSword, 800, 20);
        text (stoneSwordCount, 810, 57);
        if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 27;
            chestPlace = 1;
          }
        }
      }
      else if (get (850, 20) == color (225)) {
        image (stoneSword, 850, 20);
        text (stoneSwordCount, 860, 57);
        if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 27;
            chestPlace = 1;
          }
        }
      }
      else if (get (900, 20) == color (225)) {
        image (stoneSword, 900, 20);
        text (stoneSwordCount, 910, 57);
        if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 27;
            chestPlace = 1;
          }
        }
      }    
      else if (get (950, 20) == color (225)) {
        image (stoneSword, 950, 20);
        text (stoneSwordCount, 960, 57);
        if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 27;
            chestPlace = 1;
          }
        }
      }
      else if (get (1000, 20) == color (225)) {
        image (stoneSword, 1000, 20);
        text (stoneSwordCount, 1010, 57);
        if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 27;
            chestPlace = 1;
          }
        }
      }
      else if (get (1050, 20) == color (225)) {
        image (stoneSword, 1050, 20);
        text (stoneSwordCount, 1060, 57);
        if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (cm == 1 && mousePressed)
          {
            storeType = 27;
            chestPlace = 1;
          }
        }
      }
      else if (get (1110, 25) == color (225)) {

        if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
        {
        }
      }
      else
      {

        image (stoneSword, 1100, -80);
      }
    }
     */
    }
  }
}
      
      
      
     
     
