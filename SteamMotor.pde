class SteamMotor extends GroundObject
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


  SteamMotor(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float textTimer = 0;
  float medKitHere = 1;
  void setup()
  {
    medKit = loadImage ("SteamEnginePart1.png");
  }
  void draw()
  {

    if (visible() && medKitHere == 1) {
      float x = xPos();
      float y = yPos();

      y -= 85;
      image (medKit, x, y);
      if (mouseX >= x && mouseX <= x + 220 && mousePressed && medKitHere == 1)
      {
        if ((x < width / 2 + 200) && (x> width / 2 - 200))

        {
          if (mouseY < y + 200 && mouseY > y ) 
          { 
            healTimer = healTimer + 1;

            if (steamMotorPart1 == 1)
            {
              steamMotorPart2 = 1;
            }
            if (healTimer > 1)
            {
              medKitHere = 0;
            }
          }
        }
      }
    }
    if (medKitHere ==0 && textTimer < 200 && steamMotorPart1 == 0)
    {
      fill (255);
      text ("Part 1 retrieved!", 900, 300);
      textTimer = textTimer + 1;
    }
     if (medKitHere ==0 && textTimer < 200 && steamMotorPart2 == 1)
    {
      fill (255);
      text ("Part 2 retrieved!", 900, 300);
      textTimer = textTimer + 1;
    }
    if (textTimer > 198)
    {
      steamMotorPart1 = 1;
    }
  }
}

