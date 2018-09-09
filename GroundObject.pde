class GroundObject extends Drawable
{
  GroundObject (float xPos)
  {
    super (xPos, 0);
  }
 
  float yPos()
  {
    return groundPos (x);
  }
}
