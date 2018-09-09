class MiningTown extends GroundObject
{
  float _w;
  float _h;
  float tarLock = 0;
  float tarHeight = 0;
  float tarOut = 0;
  float tarDown = 0;
  PImage miningTownRed;
  PImage miningTown;
  float fireTimer = 0;
  float gateTimer = 0;
  float fortType = random (0, 3);
  float openTimer = 0;
  float indoors = 0;
  PImage door1;
  PImage door2;
  PImage mineQuest;
  float stopQuest = 0;
  PImage miningTown2Red;

  MiningTown(float x, float h)
  {
    super(x);

    _h = h;
  }
  void setup()
  {
    miningTown = loadImage ("MiningTown.png");
    miningTownRed = loadImage ("MiningTownRed.png");
    door1 = loadImage ("Door.png");
    door2 = loadImage ("Door2.png");
    mineQuest = loadImage ("MineQuest.png");
    miningTown2Red = loadImage ("MiningTown2Red.png");
  }
  void draw ()
  {
    if (visible()) {
      float x = xPos();
      float y = yPos();
      y -= _h;

      openTimer = openTimer + 1;
      


      if (indoors == 0 && openTimer > 20)
      {
        mobStop = 0;
        image (miningTown, x, y);
        if (width/2 >= x + 700 && width/2 < x + 775)
        {
          if (mouseX >= x + 700 && mouseX < x + 775 ) {

            image (miningTownRed, x, y);
            if (mousePressed)
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
        if (width/2 > x +450 && width/2 < x + 600 && stopQuest < 500)
        {
          fill (0,0,0, 225);
          image (mineQuest, x + 400, y - 200);
          stopQuest = stopQuest + 1;
        } 
        if (width/2 > x + 900 && width/2 < x + 975 && mouseX > 900 && mouseX < 975)
        {
          image (miningTown2Red,x,y);
          if (mousePressed)
          {
            mineQuestBegins = 1;
            
          }
        }
        if (mineQuestBegins == 1)
        {
          indoors = 0;
          mobStop = 0;
        }
       
       
        
        if (width/2 > x + 1110 )
        {
          rightStop = 1;
        }
        else
        {
          rightStop = 0;
        }
        if (width/2 < x + 450) 
        {
          leftStop = 1;
        }
        else
        {
          leftStop = 0;
        }


        openTimer = openTimer + 1;

        if (width/2 >= x + 700 && width/2 < x + 775)
        {
          image (door1, x + 690, y +485);


          if (mouseX >= x + 700 && mouseX < x + 775 ) {

            image (door2, x + 725, y + 485);
            if (mousePressed)
            {
              indoors = 0;
              openTimer = 0;
            }
          }
        }
      }
    }
  }
}

