class DesertGround extends GroundObject
{
  
  float range;
  float current;
  float direction;
  
  void setup ()
  {
   
  }



  DesertGround(float x)
  {
    super(x);
    range = random (0, 500);
    current = 0;
    direction = 0;
  }

  void draw()
  {
    if (visible() && mobStop == 0) {
      float x = xPos();

      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);
      fill (224, 191 , 20);
      noStroke();
      rect (x,y , 50, 500); 
      stroke(0);
      }
    }
  }

