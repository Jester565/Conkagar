class FortLeft extends GroundObject
{
  float _w;
  float _h;
  float tarLock = 0;
  float tarHeight = 0;
  float tarOut = 0;
  float tarDown = 0;
  PImage fort;
  PImage tarFort;
  PImage fire;
  PImage fire2;
  PImage fire3;
  PImage gate1;
  PImage gate2;
  PImage gate3;
  PImage gate4;
  PImage gate5;
  PImage gate6;
  float fireTimer = 0;
  float gateTimer = 0;
 float fortType = random (0,3);

  FortLeft(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float treeDestroyed = 1;
  void setup()
  {
    fort = loadImage ("Fort1TowerL.png");
    tarFort = loadImage ("Fort2TowerL.png");
    fire = loadImage ("Fire.png");
    fire2 = loadImage ("Fire2.png");
    fire3 = loadImage ("Fire3.png");
    gate1= loadImage ("GateL1.png");
    gate2= loadImage ("GateL2.png");
    gate3 = loadImage ("GateL3.png");
    gate4 = loadImage ("GateL4.png");
    gate5 = loadImage ("GateL5.png");
    gate6 = loadImage ("GateL6.png");
  }
  void draw()
  {

    if (visible()) {
      float x = xPos();
      float y = yPos();
      y -= _h;
      fill(80, 8, 10);
       
       if (arrowX > x + 610 && arrowX < x + 630 && arrowY > y - 210 && arrowY < y - 180 && gateTimer < 6)
      {
       gateTimer = 1;
       arrowX = -1000000;
      }
      if (gateTimer > 0 && gateTimer < 600)
      {
        gateTimer = gateTimer + 1;
      }
      if (gateTimer < 10)
      {
        image (gate1,x + 280 ,y - 125);
      }
      if (gateTimer >=1 && gateTimer < 50)
      {
        image(gate2,x + 280, y - 125);
      }
      if (gateTimer >=50 && gateTimer < 100)
      {
        image(gate3,x+280,y-125);
      }
      if (gateTimer >= 100 && gateTimer < 150)
      {
        image(gate4,x+280,y-125);
      }
      if (gateTimer >= 150 && gateTimer < 200)
      {
        image (gate5,x+280, y -125);
      }
      if (gateTimer >= 200)
      {
        image (gate6,x+280,y-125);
        guardStopL = 0;
      }
      else
      {
        guardStopL  = 1;
      }
      if (fortType <= 1)
      {
      image (fort, x, y - 510);
      
      
      
     
      }
      else
      {
        image (tarFort,x,y - 510);
        if (width/2 > x + 700 && width/2 < x + 950 && tarOut < 1700|| tarLock == 1)
        {
          tarLock = 1;
          fireTimer = fireTimer + 1;
          tarOut = tarOut + 1;
       
          if (fireTimer >= 1 && fireTimer <= 10)
          {
          image (fire, x + 435, y + 25);
          }
          else if (fireTimer > 10 && fireTimer <= 20)
          {
            image(fire2, x + 435, y + 25);
          }
          else if (fireTimer > 20 && fireTimer <= 30)
          {
            image(fire3, x + 435, y + 25);
          }
          if (fireTimer > 30)
          {
            fireTimer = 1;
          }
          if (tarOut > 1700)
          {
            tarLock = 0;
          }
          if (tarOut > 1300)
         {
          tarHeight = tarHeight - .5;
         tarDown = tarDown + .5;
         } 
          if (tarHeight < 200 && tarOut < 1000)
          {
          tarHeight = tarHeight + 1;
          }
          rect (x + 744, y - 130 + tarDown, 10, tarHeight);
          
          if (width/2 > x + 744 && width/2  < x + 764 && tarOut > 300)
          {
            health = health - 50;
          }
        }
      }
      if (width/2 > x + 730 && width/2 < x + 740 && gateTimer < 200)
      {
        leftStop = 1;
      }
      else if (width/2 < x + 760)
      {
        leftStop = 0;
      }
     
     if (gateTimer < 200 && arrowX >= x + 730 && arrowX < x + 740 && arrowY > y - 180)
     {
       arrowX = -10000000;
     }
     else if (arrowX >= x + 730 && arrowX < x + 740 && arrowY > y - 180 && arrowY < y - 110)
     {
       arrowX = - 10000000;
     }
      //rect (x, y, 100, _h);
      //rect ( x + 100, y + _h , 300, _h);
      //rect (x + 400, y + _h, 300, _h);
      //rect (x + 700, y, 100, _h);
    }
  }
}
