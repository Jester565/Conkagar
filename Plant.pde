class Plant extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  PImage wood;
  PImage tree;
  PImage rock;
  float harvest = 0;
  PImage rock2;
  float countTimer = 0;
  float placeX = 0;
  float placeY = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;
  color brown = (103);
  float transperancy = 225;
  float treeSpawn = random (1, 4);
  float rG = random (0, 4);
  float cG = random (0, 4);
  float rGF = 0;
  PImage rock1;
  float cGF = 0;
  float iGF = 1;
  float iG = random (0, 8);
  Plant(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float treeDestroyed = 0;
  void setup()
  {
    tree = loadImage ("Plant1.png");

    rock = loadImage ("Plant1e.png");
    rock1 = loadImage ("PlantP.png");
  }
  void draw()
  {

    if (visible()  && treeSpawn < 1.5) {
      float x = xPos();
      float y = yPos();

      y -= _h;
      if (harvest == 1)
    {
      image (rock1, x, y - 250 - _h);
    }
      if (harvest == 0 )
      {
        image (tree, x, y - 250 - _h);
      }

      if ((width/2 < x + 100) && (width/2 > x) && harvest == 0)

      {

        image (rock, x, y - 250 - _h);
        if (key == 'e' && keyPressed)
        {
          harvest = 1;
        }
      }
    }
    

      if (harvest >= 1)
      {
        countTimer = countTimer + 1;
        if (countTimer == 2)
        {
          hud.inventory().item(Inventory.REDBUD).addItem(1);
        }
      }
    }
  }

