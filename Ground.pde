class Ground extends Drawable
{
  float _w;
  float _h;
 float green = random (100, 255);
 float red = random (150, 230);
 float desertGreen = random (100, 180);
 float blue = random ( 15, 25);
 float _ceilingH;
 float caveGreen = random (95, 105);
 float caveBlue = random (85, 95);
 float caveRed = random (85, 95);
float caveGreen2 = random (95, 105);
 float caveBlue2 = random (85, 95);
 float caveRed2 = random (85, 95);
float timer5 = 0;
  Ground(float x, float y, float w, float h, float caveH)
  {
    super(x, y);
    _w = w;
    _h = h;
    _ceilingH = caveH;
  }




  void draw()
  {
    
    
    float x = xPos();
    float y = yPos();
  
     if (borderRight > 11070 && borderRight < 299000)
    {
      fill (red,desertGreen,blue);
      rect (x,y,_w,_h);
     
    }
    else if (borderRight >= 299000)
    {
      
      fill (caveGreen, caveBlue, caveRed);
      rect(x,0,_w, _ceilingH);
      fill (caveGreen2, caveRed2, caveBlue2);
      rect (x, y, _w, _h);
      timer5 = timer5 + 1;
      
      
        
      

    }else
    {
     

      fill(0, green, 0);
    rect (x, y, _w, _h);
    

    }
   
  }
}

