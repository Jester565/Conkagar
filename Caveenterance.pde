class CaveEnterance extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  PImage wood;
  PImage tree;

  float placeX = 0;
  float placeY = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;
  color brown = (103);
  float transperancy = 225;
 

  CaveEnterance(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float treeDestroyed = 1;
  void setup()
  {
    wood = loadImage ("Wood.png");
    tree = loadImage ("Cave.png");
  }
  void draw()
  {

    if (visible()) {
      
      float x = xPos();
      float y = yPos();
      y -= _h;

     
      image (tree, x - 1150, y - 280);
     
    }
  }
}


