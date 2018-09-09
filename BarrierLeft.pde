class BarrierLeft extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  PImage barrier;
  PImage barrier2;
  PImage barrier3;
  PImage barrier4;
  PImage barrier5;
  PImage barrier6;
  PImage barrier7;
  float placeX = 0;
  float placeY = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;
  color brown = (103);
  float transperancy = 225;


  BarrierLeft(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float barrierDestroyed = 1;
  void setup()
  {
    barrier = loadImage ("BarrierL.png");
    barrier2 = loadImage ("BarrierL2.png");
    barrier3 = loadImage ("BarrierL3.png");
    barrier4 = loadImage ("BarrierL4.png");
    barrier5 = loadImage ("BarrierL5.png");
    barrier6 = loadImage ("BarrierL6.png");
    barrier7 = loadImage ("BarrierL7.png");
  }
  void draw()
  {
    
    if (visible() && barrierDestroyed == 1) {
      float x = xPos();
      float y = yPos();
      
      y -= _h;
     
      if (tT >= 225)
      {
        
      image (barrier,x,y);
      }
      if (width/2 > x + 175 && width/2 < x + 220)
      {
        leftStop = 1;
        health = health - 5;
      }
      else
      {
        leftStop = 0;
      }
      if (mouseX >= x && mouseX <= x + 300 && mousePressed && barrierDestroyed == 1)
      {
        if (width/2 < x + 300 && width/2 > x + 200) 

        {
          if (mouseY < y + _h && mouseY > y) { 
            tT = tT - .5;
          }
        }
      }
      if (tT < 225 && tT >= 200 && barrierDestroyed == 1)
      {
        image (barrier2, x, y);
      }
      if (tT < 200 && tT >= 175 && barrierDestroyed == 1)
      {
        image (barrier3, x, y);
      }
      if (tT <  175 &&  tT >= 150 && barrierDestroyed == 1)
      {
        image (barrier4, x, y);
      }
      if (tT < 150 && tT >=125 && barrierDestroyed == 1)
      {
        image (barrier5, x, y);
      }
      if (tT < 125 && tT >= 100 && barrierDestroyed == 1)
      {
        image (barrier6, x, y);
      }
      if (tT < 100 && tT >= 75)
      {
        image (barrier7,x,y);
      }
      if (tT < 75)
      {
        barrierDestroyed = 0;
      }
    }
  }
}

