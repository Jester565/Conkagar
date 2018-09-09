class Drawable 
{
  protected float x;
  protected float y;
  protected float borderLeft;
  protected float borderRight;
 //hi
  Drawable (float xPos, float yPos)
  {
    x = xPos;
    y = yPos;
  }

  void move(float left, float right)
  {
    borderLeft = left;
    borderRight = right;
  }

  boolean visible()
  {
    return ((x + 2000 > borderLeft) && (x - 2000 < borderRight));
  }

  float xPos()
  {
    return x - borderLeft;
  }

  float yPos()
  {
    return y;
  }

  void draw()
  {
  }
  
  void setup()
  {
  }

  float xLoc()
  {
    return x;
  }
}

