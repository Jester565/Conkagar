    class Tree extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  PImage wood;
  PImage tree;
  float countTimer = 0;
  float placeX = 0;
  float placeY = 0;
  float treeType;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;
  color brown = (103);
  float hit = .25;
  float transperancy = 225;
  float treeSpawn = random (1,4);
PImage cactus;
PImage cactus2;
PImage cactus3;
  Tree(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float treeDestroyed = 0;
  void setup()
  {
    wood = loadImage ("Wood.png");
    tree = loadImage ("Tree.png");
    cactus = loadImage ("Cactus.png");
    cactus2 = loadImage ("Cactus2.png");
    cactus3 = loadImage ("Cactus3.png");
  }
  void draw()
  {
    if (x > 11000)
    {
      treeType = 2;
    }
    if (x <= 11000)
    {
      treeType = 1;
    }
    if (visible() && treeDestroyed == 0 && treeSpawn < 2) {
      float x = xPos();
      float y = yPos();

      y -= _h;
      if (treeType == 1)
      {
      image (tree, x,y - 200 - _h);
      }
      
     
      if (mouseX >= x + 70 && mouseX <= x + 140 && mousePressed && treeDestroyed == 0)
      {
        if ((width/2 < x + 300) && (width/2 > x))

        {
          if (mouseY < y + _h && mouseY > y) { 
            tT = tT - hit;
          }
        }
      }
      if (treeType == 1)
      {
      if (tT < 225 )
      {
        fill (0, 0, 0, 0);
        rect (x + 110, y + _h / 2, 5, 10);
      }
      if (tT < 200 )
      {
        rect (x + 107.5, y + _h / 2 - 5, 10, 20);
      }
      if (tT <  175 )
      {
        rect ( x + 105, y + _h/ 2 - 12, 15, 35);
      }
      if (tT < 150)
      {
        rect ( x + 102.5, y + _h/ 2 - 18, 20, 45);
      }
      if (tT < 125)
      {
        rect (x + 100, y + _h/2 - 24, 25, 55);
      }
      }
      if (treeType == 2)
      {
        
        if (tT > 200)
        {
          image (cactus, x, y - 200 - _h);
        }
        if (tT <= 200 && tT > 150)
        {
          image (cactus2, x, y - 200 - _h);
        }
        if (tT <= 150)
        {
          image (cactus3, x, y - 200 - _h);
        }
      }
      if (tT <= 100 )
      {
        treeDestroyed = 1;
      }
    }
    
      if (treeDestroyed >= 1)
      {
        countTimer = countTimer + 1;
        if (countTimer == 2 && treeType == 1)
        {
           hud.inventory().item(Inventory.TREE2).addItem(1);
        }
        if (countTimer == 2 && treeType == 2)
        {
         hud.inventory().item(Inventory.NEEDLE).addItem(1);
        }
      }
      
     
  }
}
