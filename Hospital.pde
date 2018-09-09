class Hospital extends GroundObject
{
  float _w;
  float _h;
  PImage megan;
  float visible = 255;
  float redRect = 0;
  PImage deadMan;
  float shopStep = -1;
  float optionColor1 = 0;
  float optionColor2 = 0;
  float exitTimer = 0;
  Hospital(float x, float h)
  {
    super(x);

    _h = h;
  }

  float tT = 250;
  float treeDestroyed = 1;
  void setup()
  {
    megan = loadImage ("Megan Sprite.png");
    deadMan = loadImage ("Char_bowBlood2.png");
  }
  void draw()
  {
if (exitTimer < 0)
        {
          exitTimer = exitTimer + 1;
        }
    if (cutSceneTimer > 0)
    {
      cutSceneTimer = cutSceneTimer + 1;
    }
    if (cutSceneTimer == 100)
    {
      hosDetect = 1;
    }

    if (visible()) {
      float x = xPos();
      float y = yPos();
      y -= _h;
      if (cutSceneTimer > 110 && cutSceneTimer < 400)
      {
        fill ( 255);
        ellipse ( x - 175, y - 60, 350, 40);
        fill (0);
        textSize (20);
        text ("What do you mean no leather?", x - 320, y - 50);
      }
      if (cutSceneTimer > 410 && cutSceneTimer < 700)
      {
        fill ( 255);
        ellipse ( x - 175, y - 100, 500, 80);
        fill (0);
        textSize (20);
        text ("I expect to get healed for free", x - 320, y - 100); 
        text ("for takin' on all the wildlife here.", x - 320, y - 70);
      }
      if (cutSceneTimer > 710 && cutSceneTimer < 900)
      {
        fill ( 255);
        ellipse ( x - 275, y - 60, 600, 40);
        fill (0);
        textSize (20);
        text ("Don't ever walk in here unless you got leather", x - 500, y - 50);
      }
      if (cutSceneTimer > 910 && cutSceneTimer < 1100)
      {
        fill ( 255);
        ellipse ( x - 325, y - 60, 700, 40);
        fill (0);
        textSize (20);
        text ("IF YOU'RE NOT GONNA HEAL ME THEN YOU'RE DEAD!!!", x - 600, y - 50);
      }
      if (cutSceneTimer > 1110 && cutSceneTimer < 1300)
      {
        fill ( 255);
        ellipse ( x - 175, y - 60, 350, 40);
        fill (0);
        textSize (20);
        text ("Awww *stabbing sound", x - 290, y - 50);
      }
      if (cutSceneTimer > 0)
      {
        newBiome = 50;
        mobStop = 1;
      }

      if (cutSceneTimer > 1500)
      {
        cutSceneTimer = 0;
        mobStop = 0;
      }
      if (cutSceneTimer == 0 && mouseX > x + 160 && mouseX < x + 240 && mouseY > y + 20 && width/ 2 > x + 160 && width/2 < x + 240 && exitTimer == 0)
      {
        redRect = 1;
        if (mousePressed)
        {
          visible = 100;
           shopStep = 0;
          
        }
      }
      else
      {
        redRect = 0;
      }
      if (visible == 100)
      {
        visible = 100;
        exitTimer = exitTimer + 1;
       if (x >= width/2)
       {
         leftStop = 1;
       }
       else
       {
         leftStop = 0;
       if (x + 400 <= width/2)
       {
         rightStop = 1;
       }
       else
       {
         rightStop = 0;
       }
       
        if (shopStep == 0)
        {
          mobStop = 1;
        }
        
          fill ( 255);
          ellipse ( x - 175, y - 60, 450, 40);
          fill (0);
          textSize (20);
          text ("If you want healing you need leather", x - 320, y - 50);
         fill (0);
          rect (x + 500, y - 45, 300, 17);
         fill (optionColor1, 0, 0);
          rect (x+ 500, y - 85, 300, 17);
          
            fill (optionColor2, 0, 0);
          rect (x + 500, y - 125, 300, 17);
          fill (225);
          textSize (15);
          text ("Sorry I don't have leather. I'll leave now.", x + 500, y - 70);
          text ("(Click leather in inventory to heal)", x + 500, y - 30); 
          text ("Just heal me!", x + 500, y - 110);
          if (mouseX > x + 500 && mouseX < x + 800 && mouseY > y - 45)
          {
            optionColor1 = 255;
            if (mousePressed)
            {
              shopStep = 2;
            }
          }
          else
          {
            optionColor1 = 0;
          }
        }
        if (cutSceneTimer == 0 && mouseX > x + 160 && mouseX < x + 240 && mouseY > y + 20 && width/ 2 > x + 160 && width/2 < x + 240 && visible == 100 && exitTimer > 100)
      {
        redRect = 1;
        if (mousePressed)
        {
          visible = 255;
           shopStep = 0;
           exitTimer = - 100;
           mobStop = 0;
        }
      }
      else
      {
        redRect = 0;
      }
        if (shopStep == 2)
        {
          shopStep = 2;
          fill (255);
          ellipse ( x - 175, y - 60, 350, 40);
          fill (0);
          textSize (20);
          text ("Ok then, GET OUT!!!", x - 320, y - 50);
        }
        if (mouseX > x + 500 && mouseX < x + 800 && mouseY < y - 45)
        {
          optionColor2 = 255;
          if (mousePressed)
          {
            shopStep = 3;
          }
        }
        else
        {
          optionColor2 = 0;
        }

        if (shopStep == 3)
        {
          shopStep = 3;

          fill ( 255);
          ellipse ( x - 175, y - 60, 350, 40);
          fill (0);
          textSize (20);
          text ("Thats IT you are all DEAD", x - 320, y - 50);
          health = health - 10000;
        }
        
        if (healthTimer <= 300)
        {
          healthTimer = healthTimer + 1;
          if (health < maxHealth)
          {
            
            health = health + 1;
          }
        }
      if (health > 299)
      {
      shopStep = 2; 
      } 
      }
      
 

        image (megan, x + 50, y + 5);
        image (deadMan, x, y+ 25);
        fill (83, 64, 12, visible);
        rect (x, y - 25, 400, _h + 25);
        fill(129, 101, 25, visible);
        rect ( x + 160, y + 20, 40, 50);
        rect (x + 200, y + 20, 40, 50);
        if (redRect == 1)
        {
          fill (255, 0, 0);
          rect( x + 160, y + 20, 40, 50);
          rect (x + 200, y + 20, 40, 50);
        }
        fill (130, 130, 130, visible);
        ellipse (x + 190, y + 45, 10, 10);
        ellipse (x + 210, y + 45, 10, 10);
        fill (0, 0, 0, visible);
        triangle (x - 20, y - 25, x + 200, y - 90, x + 420, y - 25);
      
    }
  }
}

