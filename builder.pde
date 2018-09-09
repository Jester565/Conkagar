class Rock extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  PImage wood;
  PImage tree;
  PImage rock;
  PImage rock2;
  float countTimer = 0;
  float placeX = 0;
  float placeY = 0;
  float hit = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;
  color brown = (103);
  float transperancy = 225;
  float treeSpawn = random (1, 4);
  float rG = random (0, 4);
  float cG = random (0, 4);
  int rGF;
  int cGF = 0;
  int iGF = 0;
  float iG = random (0,8);
  Rock(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float treeDestroyed = 0;
  void setup()
  {
    wood = loadImage ("rock1.png");
    tree = loadImage ("Rock.png");
    rock = loadImage ("Rock11.png");
    rock2 = loadImage ("Rock111.png");
  }
  void draw()
  {

    if (visible() && treeDestroyed == 0 && treeSpawn < 1.5) {
      float x = xPos();
      float y = yPos();

      y -= _h;
      if (stonePickCount >= 1)
      {
        hit = .5;
      }
      if (pickCount >= 1)
      {
        hit = 1;
      }
      if (tT > 225)
      {
        image (tree, x, y - 200 - _h);
      }
      if (mouseX >= x && mouseX <= x + 80 && mousePressed && treeDestroyed == 0)
      {
        if ((width/2 < x + 300) && (width/2 > x))

        {
          if (mouseY < y + _h && mouseY > y) { 
            tT = tT - hit;
          }
        }
      }
      if (tT < 225 && tT > 175)
      {
        image (rock, x, y - 200 - _h);
      }

      if (tT <= 175 && tT > 100)
      {
        image (rock2, x, y - 200 - _h);
      }

      if (tT <= 100 )
      {
        treeDestroyed = 1;
      }
    }
    if (rG < 1)
    {
      rGF = 1;
    }
    if (rG >= 1 && rG < 2)
    {
      rGF = 2;
    }
    if (rG >=2 && rG < 3)
    {
      rGF = 3;
    }
    if (rG >= 3 && rG < 4)
    {
      rGF = 4;
    }
    if (cG < 2)
    {
      cGF = 1;
    }
    if (iG < 1)
    {
      iGF = 1;
    }
    if (treeDestroyed >= 1)
    {
      countTimer = countTimer + 1;
      if (countTimer == 2)
      {
           hud.inventory().item(Inventory.IRONORE).addItem(iGF);
       
      hud.inventory().item(Inventory.ROCK2).addItem(rGF);
       hud.inventory().item(Inventory.COAL).addItem(cGF);
      }
    
  }
}
}
