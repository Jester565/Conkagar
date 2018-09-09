class LootSpot extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  PImage wood;
  PImage lemonade;
  PImage tree;
  PImage alcohol;
  PImage potato;
  PImage yogurt;
  PImage cookie;
  PImage cheese;
  PImage pop1;
  PImage pop2;
  PImage pop3;
  float lootMenu = 0;

  float placeX = 0;
  float placeY = 0;
  float timer4 = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;

  float placeTimer = 0;
  color brown = (103);
  float transperancy = 225;
  float treeSpawn = random (1, 4);
  float takeTimer = 0;
  float lootType = random (0,9);

  float taken = 0;
  LootSpot(float x, float h, float lootTypes)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float treeDestroyed = 1;
  void setup()
  {
    wood = loadImage ("Wood.png");
    lemonade = loadImage ("lemonade.png");
    wood = loadImage ("lemonade.png");
    alcohol = loadImage ("alcohol.png");
    potato = loadImage ("potato.png");
    pop1 = loadImage ("pop1.png");
    pop2 = loadImage ("pop2.png");
    pop3 = loadImage ("pop3.png");
    
    yogurt = loadImage ("yogurt.png");
    cheese = loadImage ("cheese.png");
  }
  void draw()
  {

    if (visible() && taken == 0 ) {
      float x = xPos();


      float y = groundPos (xLoc());
      y -= 40; 
      if (lootType <= 9 && lootType > 8)
      {
        image (yogurt, x, y);
      }
      if (lootType <= 8 && lootType > 7|| lootType <= 4 && lootType > 3)
      {
        image (cheese, x, y + 10);
      }
      if (lootType <= 7 && lootType > 6)
      {
        image (pop3, x, y - 49);
      }
      if (lootType <= 6 && lootType > 5)
      {
        image (pop2, x, y - 49);
      }
      if (lootType <= 5 && lootType > 4)
      {
        image (pop1, x, y - 49);
      } 
      
      if (lootType <=3 && lootType >2)
      {
        image (lemonade, x, y);
      }
      if (lootType <= 2 && lootType > 1)
      {
        image (alcohol, x, y - 10);
      }

      if (lootType <= 1)
      {
        image (potato, x, y );
      }     
      if ((width/2 < x + 30) && (width/2 > x))

      {
        fill (225);
        ellipse (x + 14, y - 50, 20, 20);
        fill (0);
        textSize (18);
        text ("X", x + 10, y - 45);
        if (keyPressed && key == 'x') { 
          lootMenu = 1;
        }
      }
      if (width/2 > x && width/2 < x + 30 )
      {

        if (lootMenu == 1)
        {
          if (lootType >=4 && lootType < 7)
          {
            takeTimer = takeTimer + 1;
            fill (0);
            rect (1700, 0, 300, 100);
            fill (225);
            textSize (18);
            text ("Soda", 1720, 20);
            text ("Increase Health:  10", 1730, 40);
          }
          if (lootType <= 8 && lootType > 7||lootType <= 4 && lootType > 3)
          {
            takeTimer = takeTimer + 1;
            fill (0);
            rect (1700, 0, 300, 100);
            fill (225);
            textSize (18);
            text ("Cheese", 1720, 20);
            text ("Increase Health:  30", 1730, 40);
          }
          if (lootType <= 9 && lootType > 8)
          {
            takeTimer = takeTimer + 1;
            fill (0);
            rect (1700, 0, 300, 100);
            fill (225);
            textSize (18);
            text ("Yogurt", 1720, 20);
            text ("Increase Health:  60", 1730, 40);
          }
          
         
        }

        if (lootMenu == 1 && lootType <= 1)
        {

          takeTimer = takeTimer + 1;
          fill (0);
          rect (1700, 0, 300, 100);
          fill (225);
          textSize (18);
          text ("Potato", 1720, 20);
          text ("Nothing", 1730, 40);
        }
        else if (lootMenu == 1 && lootType >= 1 && lootType < 2)
        {
          takeTimer = takeTimer + 1;
          fill (0);
          rect (1700, 0, 300, 100);
          fill (225);
          textSize (18);
          text ("Beer", 1720, 20);
          text ("Increase Health:  5", 1730, 40);
        }
        else if (lootMenu == 1 && lootType <= 3 && lootType > 2)
        {
          takeTimer = takeTimer + 1;
          fill (0);
          rect (1700, 0, 300, 100);
          fill (225);
          textSize (18);
          text ("Lemonade", 1720, 20);
          text ("Increase Health: 20", 1730, 40);
        }
        if (takeTimer > 100 && keyPressed && key == 'x')
        {
          taken = 1;
        }
      }
    }
    //
    //
    //
    else if (taken == 1 && lootType <=3 && lootType >2)
    {



      if (get (660, 40) == color (225) && timer4 < 200) {
        image (wood, 650, 20);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (710, 40) == color (225) && timer4 < 200) {
        image (wood, 700, 20);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }

      else if (get (760, 40) == color (225) && timer4 < 200) {
        image (wood, 750, 20);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (810, 40) == color (225) && timer4 < 200) {
        image (wood, 800, 20);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (860, 25) == color (225) && timer4 < 200) {
        image (wood, 850, 20);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (910, 25) == color (225) && timer4 < 200) {
        image (wood, 900, 20);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }    
      else if (get (960, 25) == color (225) && timer4 < 200) {
        image (wood, 950, 20);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1010, 25) == color (225) && timer4 < 200) {
        image (wood, 1000, 20);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1060, 25) == color (225) && timer4 < 200) {
        image (wood, 1050, 20);
        if (mouseX > 1050 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1110, 25) == color (225) && timer4 < 200) {
        image (wood, 1100, 20);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1093, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else
      {
      }
    }
    //
    //
    //
    else  if (taken == 1 && lootType <= 2 && lootType > 1)
    {
      if (get (660, 40) == color (225) && timer4 < 50) {
        image (alcohol, 647, 10);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (710, 40) == color (225) && timer4 < 50) {
        image (alcohol, 697, 10);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }

      else if (get (760, 40) == color (225) && timer4 < 50) {
        image (alcohol, 747, 10);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (810, 40) == color (225) && timer4 < 50) {
        image (alcohol, 797, 10);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (860, 25) == color (225) && timer4 < 50) {
        image (alcohol, 847, 10);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (910, 25) == color (225) && timer4 < 50) {
        image (alcohol, 897, 10);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }    
      else if (get (960, 25) == color (225) && timer4 < 50) {
        image (alcohol, 947, 10);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1010, 25) == color (225) && timer4 < 50) {
        image (alcohol, 997, 10);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1060, 25) == color (225) && timer4 < 50) {
        image (alcohol, 1047, 10);
        if (mouseX > 1045 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1110, 25) == color (225) && timer4 < 50) {
        image (alcohol, 1097, 10);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1093, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else
      {
      }
      //
      //
      //
    }
    else if (lootType <= 1 && taken == 1)
    {
      if (get (660, 40) == color (225) && timer4 < 1) {
        image (potato, 647, 10);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (710, 40) == color (225) && timer4 < 1) {
        image (potato, 697, 10);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }

      else if (get (760, 40) == color (225) && timer4 < 1) {
        image (potato, 747, 10);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (810, 40) == color (225) && timer4 < 1) {
        image (potato, 797, 10);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (860, 25) == color (225) && timer4 < 1) {
        image (potato, 847, 10);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (910, 25) == color (225) && timer4 < 1) {
        image (potato, 897, 10);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }    
      else if (get (960, 25) == color (225) && timer4 < 1) {
        image (potato, 947, 10);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1010, 25) == color (225) && timer4 < 1) {
        image (potato, 997, 10);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1060, 25) == color (225) && timer4 < 1) {
        image (potato, 1047, 10);
        if (mouseX > 1045 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1110, 25) == color (225) && timer4 < 1) {
        image (potato, 1097, 10);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1093, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else
      {
      }
    }


    else  if (lootType <= 5 && lootType > 4 && taken == 1)
    {
      if (get (660, 40) == color (225) && timer4 < 50) {
        image (pop1, 640, - 35);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (710, 40) == color (225) && timer4 < 50) {
        image (pop1, 690, -35);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }

      else if (get (760, 40) == color (225) && timer4 < 50) {
        image (pop1, 740, -35);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (810, 40) == color (225) && timer4 < 50) {
        image (pop1, 790, -35);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (860, 25) == color (225) && timer4 < 50) {
        image (pop1, 840, -35);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (910, 25) == color (225) && timer4 < 50) {
        image (pop1, 890, -35);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }    
      else if (get (960, 25) == color (225) && timer4 < 50) {
        image (pop1, 940, -35);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1010, 25) == color (225) && timer4 < 50) {
        image (pop1, 990, -35);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1060, 25) == color (225) && timer4 < 50) {
        image (pop1, 1040, -35);
        if (mouseX > 1045 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1110, 25) == color (225) && timer4 < 50) {
        image (pop1, 1090, -35);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1093, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else
      {
      }
    }
    else if (lootType <= 6 && lootType > 5 && taken == 1)
    {
      if (get (660, 40) == color (225) && timer4 < 50) {
        image (pop2, 640, -35);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (710, 40) == color (225) && timer4 < 50) {
        image (pop2, 690, -35);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }

      else if (get (760, 40) == color (225) && timer4 < 50) {
        image (pop2, 740, -35);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (810, 40) == color (225) && timer4 < 50) {
        image (pop2, 790, -35);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (860, 25) == color (225) && timer4 < 50) {
        image (pop2, 840, -35);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (910, 25) == color (225) && timer4 < 50) {
        image (pop2, 890, -35);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }    
      else if (get (960, 25) == color (225) && timer4 < 50) {
        image (pop2, 940, -35);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1010, 25) == color (225) && timer4 < 50) {
        image (pop2, 990, -35);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1060, 25) == color (225) && timer4 < 50) {
        image (pop2, 1040, -35);
        if (mouseX > 1045 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1110, 25) == color (225) && timer4 < 50) {
        image (pop2, 1090, -35);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1093, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else
      {
      }
    }
    else if (lootType <= 7 && lootType > 6 && taken == 1)
    {
      if (get (660, 40) == color (225) && timer4 < 50) {
        image (pop3, 640, -35);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (710, 40) == color (225) && timer4 < 50) {
        image (pop3, 690, -35);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }

      else if (get (760, 40) == color (225) && timer4 < 50) {
        image (pop3, 740, -35);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (810, 40) == color (225) && timer4 < 50) {
        image (pop3, 790, -35);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (860, 25) == color (225) && timer4 < 50) {
        image (pop3, 840, -35);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (910, 25) == color (225) && timer4 < 50) {
        image (pop3, 890, -35);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }    
      else if (get (960, 25) == color (225) && timer4 < 50) {
        image (pop3, 940, -35);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1010, 25) == color (225) && timer4 < 50) {
        image (pop1, 990, -35);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1060, 25) == color (225) && timer4 < 50) {
        image (pop3, 1040, -35);
        if (mouseX > 1045 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1110, 25) == color (225) && timer4 < 10) {
        image (pop3, 1090, -35);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1093, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else
      {
      }
    }
    else if (lootType <= 9 && lootType > 8 && taken == 1)
    {
     if (get (660, 40) == color (225) && timer4 < 200) {
        image (yogurt, 650, 10);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (710, 40) == color (225) && timer4 < 200) {
        image (yogurt, 700, 10);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }

      else if (get (760, 40) == color (225) && timer4 < 200) {
        image (yogurt, 750, 10);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (810, 40) == color (225) && timer4 < 200) {
        image (yogurt, 800, 10);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (860, 25) == color (225) && timer4 < 200) {
        image (yogurt, 850, 10);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (910, 25) == color (225) && timer4 < 200) {
        image (yogurt, 900, 10);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }    
      else if (get (960, 25) == color (225) && timer4 < 200) {
        image (yogurt, 950, 10);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1010, 25) == color (225) && timer4 < 200) {
        image (yogurt, 1000, 10);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1060, 25) == color (225) && timer4 < 200) {
        image (yogurt, 1050, 10);
        if (mouseX > 1050 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1110, 25) == color (225) && timer4 < 200) {
        image (yogurt, 1100, 10);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1093, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else
      {
      }
    } else if (lootType <= 8 && lootType > 7 && taken == 1|| lootType <= 4 && lootType > 3 && taken == 1)
    {
      if (get (660, 40) == color (225) && timer4 < 200) {
        image (cheese, 650, 20);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (710, 40) == color (225) && timer4 < 200) {
        image (cheese, 700, 20);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }

      else if (get (760, 40) == color (225) && timer4 < 200) {
        image (cheese, 750, 20);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (810, 40) == color (225) && timer4 < 200) {
        image (cheese, 800, 20);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (860, 25) == color (225) && timer4 < 200) {
        image (cheese, 850, 20);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (910, 25) == color (225) && timer4 < 200) {
        image (cheese, 900, 20);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }    
      else if (get (960, 25) == color (225) && timer4 < 200) {
        image (cheese, 950, 20);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1010, 25) == color (225) && timer4 < 200) {
        image (cheese, 1000, 20);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1060, 25) == color (225) && timer4 < 200) {
        image (cheese, 1050, 20);
        if (mouseX > 1050 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else if (get (1110, 25) == color (225) && timer4 < 200) {
        image (cheese, 1100, 20);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1093, 13, 45, 45, 100);
          if (mousePressed && timer4 < 500 && health < maxHealth)
          {
            health = health + 1;
            timer4 = timer4 + 10;
          }
        }
      }
      else
      {
      }
    }
  }
}

