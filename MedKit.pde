class MedKit extends GroundObject
{
  float _w;
  float _h;
  float block = 0;
  PImage medKit;

  float placeX = 0;
  float placeY = 0;
  float cancelAction = 0;
  float alreadyPressed = 0;
  float placeTimer = 0;
  color brown = (103);
  float transperancy = 225;
  float healTimer = 0;


  MedKit(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float medKitHere = 1;
  void setup()
  {
    medKit = loadImage ("HealthKit.png");
  }
  void draw()
  {

    if (visible() && medKitHere == 1) {
      float x = xPos();
      float y = yPos();
    
      y -= 50;
image (medKit,x,y);
      if (mouseX >= x + 30 && mouseX <= x + 60 && mousePressed && medKitHere == 1)
      {
        if ((x < width / 2 + 100) && (x> width / 2 - 100))

        {
          if (mouseY < y + 45 && mouseY > y && health < maxHealth) 
          { 
            healTimer = healTimer + 1;
            health = health + 1;
            if (healTimer > 150)
            {
              medKitHere = 0;
            }
          }
          }
        }
      }
    }
  }

