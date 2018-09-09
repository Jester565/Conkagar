class Arrow extends GroundObject
{
  float current;
  float direction;
  float tracker = 0;
 float timer = 0;
  
  
  
  void setup ()
  {
  
  }



  Arrow(float x)
  {
    super(x);
    
    current = 0;
    direction = 1;
  }

  void draw()
  {
   float x = xPos();

    current += direction;
    x += current;
      
    float y = groundPos (xLoc() + current ) ;
    if (arrowX < 950)
    {
    direction = charDirection - arrowSpeedX;
    }
    if ( arrowX > 950)
    {
   direction = charDirection + arrowSpeedX;
    }
   
    
    if (arrowY > y )
    {
      arrowStop = 1;
      
      
    }
    if (fire == 0 && x > 952)
    {
      direction = -16;
    }
    if ( fire == 0 && x < 948)
    {
    direction = 16;
  }
  }
}
