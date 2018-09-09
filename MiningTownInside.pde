class MiningTownInside extends GroundObject
{
  float _w;
  float _h;
  float tarLock = 0;
  float tarHeight = 0;
  float tarOut = 0;
  float tarDown = 0;
 
  PImage miningTown2;
  float fireTimer = 0;
  float gateTimer = 0;
 float fortType = random (0,3);

  MiningTownInside(float x, float h)
  {
    super(x);

    _h = h;
  }
  void setup()
  {
    miningTown2 = loadImage ("MiningTown2.png");
  }
  void draw ()
  {
    if (visible()) {
      float x = xPos();
      float y = yPos();
      y -= _h;
      image (miningTown2, x,y);
    }
  }
}

