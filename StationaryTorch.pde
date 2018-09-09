class StationaryTorch extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  PImage wood;
  PImage tree;
   PImage Light1;
  PImage Light2;
  float placeX = 0;
 
  float randomLamp = random(0,2);
  float placeY = 0;
  float timer = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;
  PImage lamp1;
  PImage lamp2;
  PImage lamp3;
  color brown = (103);
  float transperancy = 225;
  float treeSpawn = random (1,4);

  StationaryTorch(float x, float h)
  {
    super(x);

    _h = h;
  }

  
  void setup()
  {
    wood = loadImage ("Wood.png");
    lamp1 = loadImage ("StationaryTorch.png");
    lamp2 = loadImage ("StationaryTorch2.png");
    lamp3 = loadImage ("StationaryTorch3.png");
    Light1 = loadImage ("LampPole1.png");
    Light2 = loadImage ("LampPole2.png");
  }
  void draw()
  {
    
    if (visible()) {
      float x = xPos();
      float y = yPos();

      y -= _h;
     
      if (timer <= 10)
      {
      image (lamp1, x,y - 212 );
      }
      else if (timer > 10 && timer <= 20)
      {
        image (lamp2,x,y - 212);
      }
      else 
      {
        image (lamp3,x,y - 212);
      }
      if (timer > 30)
      {
        timer = 0;
      }
      
     timer = timer + 1;
  }
  }
}
