class MineCart extends GroundObject
{
  PImage mineCart;
  PImage pigRight;
  PImage pigLeft;
  PImage mineCart2;
  PImage furnace;
  PImage mineCart3;
  PImage mineCartTracks;
  PImage pigLeftRunning;
  PImage mineCart4;
  PImage bacon;
  PImage fire;
  PImage crusher1;
  PImage crusher2;
  PImage crusher3;
  PImage crusherInput;
  PImage crusherInput2;
 PImage crusherInput3;
  PImage crusherInput4;
  PImage crusherInput5;
 PImage crusherInput6;
  PImage crusherInputS;
  PImage crusherInputS2;
  PImage crusherInputS3;
  PImage crusher4;
  PImage crusher5;
  PImage crusher6;
  PImage crusherBack;
  PImage fire2;
  PImage furnace2;
  PImage furnace3;
  PImage fire3;
  PImage dust;
  PImage rocks;
  PImage iron;
  PImage furnaceCover;
  float ignotPos = x + 940;
  float ignotSpeed;
  float ignotDirection = .5;
  float range;
  float current;
  float deactive = 0;
  float direction;
  float pigRun =0;
  float deadPiggy = 0;
  float timer = 0;
  float pigHealth = 2;
  float timer2 = 0;
  PImage safe;
  color white = (225);
  float timer4 = 0;
  float alert = 0;
  float delay = 0;
  float lock = 0;
  float fireTimer = 0;
  float ignotTimer = 0;
  float randomIgnot = 1;
  PImage gold;
  float crusherTimer = 0;
  float crusherInputPos = x + 500;
  float crusherInputTimer = 0;
  float crushPos;
  float dustTimer = 0;
  float dustActive = 0;
  void setup ()
  {
   fire = loadImage ("Fire.png");
    fire2 = loadImage ("Fire2.png");
    fire3 = loadImage ("Fire3.png");
    mineCart = loadImage("MineCart.png");
    mineCartTracks = loadImage("MineCartTracks.png");
    rocks = loadImage ("Rocks.png");
    mineCart2 = loadImage("MineCart2.png");
    mineCart3 = loadImage("MineCart3.png");
    mineCart4 = loadImage("MineCart4.png");
    furnace = loadImage("Furnace.png");
     furnace2 = loadImage("Furnace2.png");
      furnace3 = loadImage("Furnace3.png");
      iron = loadImage("IronIgnot.png");
      furnaceCover = loadImage("Furnace5.png");
      gold = loadImage("GoldIgnot.png");
      crusher1 = loadImage("Crusher.png");
      crusher2 = loadImage("Crusher2.png");
      crusher3 = loadImage("Crusher3.png");
      crusher4 = loadImage("Crusher4.png");
      crusher5 = loadImage("Crusher5.png");
      crusher6 = loadImage("Crusher6.png");
      crusherInput = loadImage("CrusherInput1.png");
       crusherInput2 = loadImage("CrusherInput2.png");
        crusherInput3 = loadImage("CrusherInput3.png");
        crusherInput4 = loadImage("CrusherInput4.png");
        crusherInput5 = loadImage("CrusherInput5.png");
        crusherInput6 = loadImage("CrusherInput6.png");
      crusherBack = loadImage("CrusherBack.png");
      crusherInputS = loadImage("CrusherInputS1.png");
       crusherInputS2 = loadImage("CrusherInputS2.png");
        crusherInputS3 = loadImage("CrusherInputS3.png");
        dust = loadImage("IgnotDust.png");
        safe = loadImage ("ConkagarbSafe.png");
  }



  MineCart(float x)
  {
    super(x);
    range = 380;
    current = 0;
    direction = 1;
  }

  void draw()
  {
    if (visible()) {
      if (x == mineCartPos + 13000)
      {
        deactive = 1;
      }
      float x = xPos();
      image (mineCartTracks, x - 360, y +200);
      image (rocks, x - 500, y + 700);
      image (safe, x + 1125, y + 725);
      crushPos = crushPos + ignotSpeed;
      dustTimer = dustTimer + 1;
      ignotTimer = ignotTimer + 1;
      crusherInputTimer = crusherInputTimer + 1;
      crusherInputPos = crusherInputPos + ignotSpeed;
      
      if (ignotTimer > 230)
      {
        ignotPos = x + 940;
        ignotTimer = 0;
        randomIgnot = random (0,2);
        
      }
      if (dustTimer > 450)
      {
        crushPos = x + 700;
        dustTimer = 0;
        dustActive = 1;
      }
    
     if (sprintRecover < 5)
        {
          ignotSpeed = 0.5;
          ignotDirection = 0;
        }
     if (keyPressed && key == 'd' && screenStopRight == 0)
        {
          ignotSpeed = -2.5;
          ignotDirection = 1;
        }
        else if (keyPressed && key == 'a' && screenStopLeft == 0)
        {
          ignotSpeed = 3.5;
          ignotDirection = 2;
        }
        else if (keyPressed && key == 'r' && ignotDirection == 1 && screenStopRight == 0 && sprintRecover > 5)
        {
          ignotDirection = 1;
          ignotSpeed = -4.5;
        }
        else if (keyPressed && key == 'r' && ignotDirection == 2 && screenStopLeft == 0 && sprintRecover > 5)
        {
          ignotDirection = 2;
          ignotSpeed = 5.5;
        }
        else
        {
          ignotSpeed = .5;
          ignotDirection = 0;
        }
        
        if (screenStopLeft == 1 || screenStopRight == 1)
        {
          ignotSpeed = .5;
        }
        if (dustActive == 1 && gateButton == 0 && deactive == 0)
        {
        if (dustTimer < 100)
        {
        image (crusherInputS, crushPos, y + 840);
        }
        else
        {
          image (dust, crushPos, y + 845);
        }
        }
        if (crusherInputTimer < 236 && gateButton == 0 && deactive == 0)
      {
        image (crusherInput, crusherInputPos, y + 800);
      }
      
      if (crusherInputTimer > 50 && crusherInputTimer < 332 && deactive == 0)
      {
        image (crusherInput2, crusherInputPos - 50, y + 800);
      }
      if (crusherInputTimer > 100 && crusherInputTimer < 417 && deactive == 0)
      {
        image (crusherInput3, crusherInputPos - 100, y + 800);
      }
      
        
      
        ignotPos = ignotPos + ignotSpeed;
      fireTimer = fireTimer + 1;
      crusherTimer = crusherTimer + 1;
      
      if (crusherTimer > 60)
      {
        crusherTimer = 0;
      }
      if (crusherTimer < 10)
      {
         image (crusher1, x + 500, y + 640);
      }
      else if (crusherTimer >= 10 && crusherTimer < 20)
      {
        image (crusher2, x + 500, y + 640);
      }
      else if (crusherTimer >= 20 && crusherTimer < 30)
      {
         image (crusher3, x + 500, y + 640);
      }
      else if (crusherTimer >= 30 && crusherTimer < 40)
      {
         image (crusher4, x + 500, y + 640);
      }
      else if (crusherTimer >= 40 && crusherTimer < 50)
      {
         image (crusher5, x + 500, y + 640);
      }
      else
      {
        image (crusher6, x+500, y + 640);
      }
      if (fireTimer < 10)
      {
         image (furnace, x + 900, y + 715);
      
        
      }
      else if (fireTimer >= 10 && fireTimer< 20)
      {
        image (furnace2, x + 900, y + 715);
       
      }
      else
      {
        image (furnace3, x + 900, y + 715);
        
         
      }
      if (gateButton == 0 && deactive == 0)
      {
        if (randomIgnot < 1)
        {
        image (iron, ignotPos, y + 867);
        
        }else
        {
          image(gold,ignotPos , y + 867);
          
        }
      }
      image (furnaceCover, x + 900, y + 715);
     if (fireTimer < 10)
      {
         
        image (fire, x + 990, y + 875);
        image (fire2, x + 1050, y + 875);
        
      }
      else if (fireTimer >= 10 && fireTimer< 20)
      {
        
        image (fire2, x + 990, y + 875);
        image (fire3, x + 1050, y + 875);
        
      }
       else
      {
        
        image (fire3, x + 990, y + 875);
        image (fire, x + 1050, y + 875);
         
      }
      
     
      if (fireTimer > 30)
      {
        fireTimer = 0;
      }
      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);
      y -= 150; 
      if (width/2 > x + 300 && width/2 < x+ 400)
      {
        lock = 1;
      }
      if (lock == 1)
      {
        direction = 0;
        lock = 1;
        image (mineCart ,x,y-25);
      }
      if (current > range && delay < 400 ) {
        direction = 0;
        delay = delay + 1;
      } 
      else if (current < -range && delay > - 400) {
       direction = 0;
      delay = delay - 1;
     
      }
      if (delay > 600 || delay < - 600)
      {
        delay = 0;
      }
      if (delay <= -1 && delay > - 50)
      {
        image(mineCart,x,y-25);
      }
      if (delay <= - 50 && delay > - 150)
      {
        image(mineCart2,x,y - 25);
      }
      if (delay <= - 150 && delay > - 250)
      {
        image (mineCart3,x,y - 25);
      }
      if (delay <= -250 && delay >= - 400)
      {
        image (mineCart4,x,y - 25);
      }
      if (delay >= 1 && delay < 50)
      {
        image(mineCart4,x,y - 25);
      }
      if (delay >=  50 && delay <  150)
      {
        crusherInputTimer = 0;
        crusherInputPos = x + 200;
        image(mineCart3,x,y - 25);
      }
      if (delay >=  150 && delay <  250)
      {
        image (mineCart2,x,y - 25);
      }
      if (delay >= 250 && delay <=  400)
      {
        image (mineCart,x,y - 25);
      }
      if (delay >= 1)
      {
        delay = delay + 1;
      }
      if (delay > 400)
      {
        direction = - 1;
      }
      if (delay <= -1)
      {
        delay = delay - 1;
      }
      if (delay < - 400 )
      {
        direction = 1;
      }
      
      
      if (direction >= 1)
      {
        
          image(mineCart4, x, y - 25);
        
        
      }
      if (direction <= -1)
      {

        
          image(mineCart, x, y - 25);
        
        
      }
    }
  }
}
      
      
     
