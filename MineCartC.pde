class MinecartC extends GroundObject
{
  float _w;
  float _h;
  float timer =0;
  float range;
  float current;
  float timer2 = 0;
  float timer3 = 0;
  float direction;
  float cutSceneC = 0;
  float sceneC = 0;
  PImage train1;
  PImage train2;
  PImage train3;
  PImage train4;
  PImage train5;
  float instruction = 0;
  PImage kingC;
  PImage tracks;
  PImage train6;
  PImage train7;
  PImage train8;
  PImage controls;
  PImage train9;
  PImage train10;
  PImage train11;
  PImage train12;
  float intruction = 0;
  PImage train13;
  PImage train14;
  PImage train15;
  PImage train16;
  PImage train17;
  PImage train18;
  PImage train19;
  PImage train20;
  PImage fire1;
  float visibleLock = 0;
  PImage fire2;
  PImage trainInside;
  PImage c1;
  PImage c2;
  PImage c3;
  PImage c4;
  PImage c5;
  PImage c6;
  PImage c7;
  PImage c8;
  PImage c9;
  PImage c10;
  MinecartC(float x, float h)
  {

    super(x);
    range = random (0, 500);
    current = 0;
    direction = 0;
    _h = h;
  }



  void setup()
  {
    train1 = loadImage ("MineCartC.png");
    train2 = loadImage ("MineCartC2.png");
    train3 = loadImage ("MineCartC3.png");
    train4 = loadImage ("MineCartC4.png");
    train5 = loadImage ("MineCartC5.png");
    tracks = loadImage ("MineCartTracks.png");
    controls = loadImage ("MineCartControls.png");
    kingC = loadImage ("KingCL.png");
  }
  void draw()
  {

    if (visible() || visibleLock == 1) {
      
      float x = xPos();
      
       float y = groundPos (xLoc() + current);
    image (tracks,x - 2000, y - 700);
    image (tracks,x - 1400, y - 700);
    image (tracks,x - 800, y - 700);
    image (tracks,x, y - 700);
    image (tracks,x + 800, y - 700);
    image (tracks,x + 1600, y - 700);
    image (tracks,x + 2400, y - 700);
    image (tracks,x + 3200, y - 700);
    image (tracks,x + 4000, y - 700);
    image (tracks,x + 4800, y - 700);
    image (tracks,x + 5600, y - 700);
    image (tracks,x + 6400, y - 700);
    image (tracks,x + 7200, y - 700);
    image (tracks,x + 8000, y - 700);
    image (tracks,x + 8800, y - 700);
    image (tracks,x + 9600, y - 700);
    image (tracks,x + 10400, y - 700);
    image (tracks,x + 11200, y - 700);
    image (tracks,x + 12000, y - 700);
    image (tracks,x + 12800, y - 700);
    image (tracks,x + 13600, y - 700);
    image (tracks,x + 14400, y - 700);
    image (tracks,x - 1400, y - 700);
      current += direction;
      x += current;
      
      y -= 375; 

      timer = timer + direction;

     
      //image (trainInside, x, y);
      if (timer < 10)
      {
        image (train1, x, y);
      }
      if (timer >= 10 && timer < 20)
      {
        image (train2, x, y);
      }
      if (timer >= 20  && timer < 30)
      {
        image (train3, x, y);
      }
      if (timer >=  30 && timer < 40)
      {
        image (train4, x, y);
      }
      if (timer >= 40  && timer < 50)
      {
        image (train5, x, y);
      }

      if (timer >= 44)
      {
        timer = 0;
      }
      if (width/2 > x + 300 && width/2 < x + 350 || mineCartTrap == 1)
      {
        mineCartTrap = 1;
        visibleLock = 1;
        instruction = instruction + 1;
        if (instruction < 500)
        {
          image (controls, x, y - 300);
        }
        if (key == 'd'  && keyPressed) {
      direction = 9;
    }
    else if ( key == 'a'  && keyPressed) 
    {
      direction = 5;
    }
    else
    {
      direction = 7;
    }
      }
    }
  }
}

