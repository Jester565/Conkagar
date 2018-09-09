class MineBuildingInside extends GroundObject
{
  float _w;
  float _h;
  PImage fortBuildingInside;
  
  MineBuildingInside(float x, float h)
  {
    super(x);

    _h = h;
  }



  void setup()
  {
    
    fortBuildingInside= loadImage ("miningHouse1Inside1.png");
    
  }
  void draw()
  {

    if (visible()) {
      float x = xPos();
      float y = yPos();
      y -= _h + 10;
     image (fortBuildingInside,x,y);
    }
  }
}
      
