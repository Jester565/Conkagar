class Lamp extends GroundObject
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

  Lamp(float x, float h)
  {
    super(x);

    _h = h;
  }

  
  void setup()
  {
    wood = loadImage ("Wood.png");
    lamp1 = loadImage ("LampTorch1.png");
    lamp2 = loadImage ("LampTorch2.png");
    lamp3 = loadImage ("LampTorch3.png");
    Light1 = loadImage ("LampPole1.png");
    Light2 = loadImage ("LampPole2.png");
  }
  void draw()
  {
    
    if (visible()) {
      float x = xPos();
      float y = yPos();

      y -= _h;
      if (randomLamp <= 1)
      {
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
      }
      if (randomLamp > 1 && randomLamp <= 2)
      {
      if (timer <= 10)
      {
      image (Light1, x,y - 212 );
      }
      
      else 
      {
        image (Light2,x,y - 212);
      }
      if (timer > 20)
      {
        timer = 0;
      }
      
    }
    timer = timer + 1;
    }
  }
}
