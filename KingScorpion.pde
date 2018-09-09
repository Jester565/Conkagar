class KingScorpion extends GroundObject
{
  PImage scorpionIdle;
  PImage scorpionLeft;
  PImage scorpionLeft2;

  PImage scorpionRight;
  PImage scorpionRight2;
  PImage ball1;
  PImage ball2;
  PImage ball3;
  PImage ball4;
  PImage scorpionStrikeR1;
  PImage scorpionStrikeR2;
  PImage scorpionStrikeL1;
  PImage scorpionStrikeL2;
  PImage scorpionPunchR;
  PImage scorpionPunchL;
  PImage scorpionSpitL1;
  PImage scorpionSpitL2;
  float attack = 1;
  float range;
  float current;
  float direction;
  float scorpionRun =0;
  float deadscorpion = 0;
  float timer = 0;
  float scorpionHealth = 50;
  float timer2 = 0;
  float timer3 = 0;
  float timer4 = 0;
  float detect = 0;
  float detect2 = 0;
  float alert = 0;
  float fortHeight = 47;
  float lock = 0;
  float spit = 0;
  float spitTimer = 0;
  float ballFall = random (150, 300);
  float ballX = x + 300;
  float ballY = y + 200;
  float speed = 3;
  color brown = (80);
  float arrowDirection = 0;
  float ballTimer = 0;
  float ball = 0;
  float ballFire = 0;
  float attackGo = 0;
  float grabTimer = 0;
  void setup ()
  {
    scorpionIdle = loadImage("Char_primary.png");
  scorpionLeft = loadImage ("ScorpionKing3.png");
    scorpionLeft2 = loadImage("ScorpionKing4.png");
    scorpionRight =  loadImage("ScorpionKing1.png");
    scorpionRight2 = loadImage("ScorpionKing2.png");
    scorpionStrikeR1 = loadImage("ScorpionKing5.png");
    
    scorpionStrikeL1 = loadImage("ScorpionKing6.png");
    scorpionStrikeR2 = loadImage("ScorpionKing7.png");
    scorpionStrikeL2 = loadImage("ScorpionKing8.png");
    scorpionPunchR = loadImage ("ScorpionKing9.png");
    scorpionPunchL = loadImage ("ScorpionKing10.png");
   scorpionSpitL1 = loadImage ("ScorpionKing14.png");
   scorpionSpitL2 = loadImage ("ScorpionKing15.png");
   ball1 = loadImage ("ScorpionProjectile.png");
   ball2 = loadImage ("ScorpionProjectile2.png");
   ball3 = loadImage ("ScorpionProjectile3.png");
   ball4 = loadImage ("ScorpionProjectile4.png");
  }



 KingScorpion(float x)
  {
    super(x);
    
    current = 0;
    direction = 1;
  }

  void draw()
  {
    if (visible() && mobStop == 0) {
      
      float x = xPos();

      current += direction;
      x += current;
      float y = groundPos (xLoc() + current);
      y -= 325; 
       if (x > width/2 +20 && x < width/2 + 300 && attackGo == 0 || alert == 1 && attackGo == 0)
        {
          direction = -4;
          timer4 = 0;
          range = 1000000;
          spitTimer = spitTimer + 1;
          grabTimer = grabTimer + 1;
        }
        else if (x <= width/2 - 20 && x > width/2 - 500 && attackGo == 0|| alert == 2 && attackGo == 1)
        {
          direction = 4;
          timer4 = 0;
         range = 1000000000;
        }
        else if (detect == 1 && attack < 2)
        {
        direction = 0;
       attackGo = 1;
         timer4 = timer4 + 1;
         if (timer4 < 30)
          {
            image (scorpionStrikeL1,x,y);
            direction = 0;
          }
          if (timer4 >= 30)
          {
            image (scorpionStrikeL2,x,y);
            health = health - 30;
            direction = 0;
           
          }
        }
        else if (detect == 1 && attack >=2)
        {
          direction = 0;
       attackGo = 1;
         timer4 = timer4 + 1;
         if (timer4 < 30)
          {
            image (scorpionLeft,x,y);
            direction = 0;
          }
          if (timer4 >= 30)
          {
            image (scorpionPunchL,x,y);
            health = health - 15;
            direction = 0;
           
          }
        }
   if (spitTimer > 400)
      {
        spit = 1;
      }
      if (spitTimer > 420)
      {
        ballFire = 1;
      }
      if (spitTimer > 416 && spitTimer < 421)
      {
        ballX = x + 100;
        ballY = y + 270;
      }
      if (spitTimer > 560)
      {
        spitTimer = 0;
        spit = 0;
       
      }
      
      if (direction >= 1 && spit == 0)
      {
        if (timer >= 10)
        {
         image(scorpionRight, x, y); 
        }
        else 
        {
          image(scorpionRight2,x,y);
        }
      }
      
      if (direction <= -.1 && spit == 0)
      {

        if (timer >= 10 )
        {
          image(scorpionLeft, x, y);
        
        }
        else 
        {
          image(scorpionLeft2, x, y);
        }
      }
        if (spit == 1 && timer >= 10 && direction <= -.1)
        {
          image (scorpionSpitL1,x,y);
        }
        else if(spit == 1 && direction <= -1)
        {
          image (scorpionSpitL2, x, y);
        }
      
     
      

      if (++timer > 20)
      {
        timer = 0;
      }
     
      if (ballFire == 1)
      {
       
        if (keyPressed && key == 'd' && screenStopRight == 0)
        {
          speed = 4;
          arrowDirection = 1;
        }
        else if (keyPressed && key == 'a' && screenStopLeft == 0)
        {
         speed = 10;
          arrowDirection = 2;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 1 && screenStopRight == 0)
        {
          arrowDirection = 1;
         speed = 2;
        }
        else if (keyPressed && key == 'r' && arrowDirection == 2 && screenStopLeft == 0)
        {
          arrowDirection = 2;
         speed = 12;
        }
        else
        {
          speed = 7;
        }
        
         ballX = ballX - speed;
        ballTimer = ballTimer + 1;
        ballFire = 1;
        if (ballX > width/2 && ballX < width/2 + 20)
      {
        health = health - 20;
        ballX = - 100000;
      }
      if (mouseX > ballX && mouseX < ballX + 50 && mouseY > ballY && mouseY < ballY + 60 && mousePressed)
      {
        ballX = - 10000;
      }
        if (ballTimer > ballFall)
        {
          ballY = ballY + 2;
        }
        ball = ball + 1;
        
          image (ball1, ballX, ballY);
        
        
        if (ballY > 1000);
        {
          ballFire = 0;
          ballTimer = 0;
          ballFall = random (150, 300);
          
          
        }
      }
      if (arrowX < x + 150 && arrowX > x && arrowY > y + 200 && arrowY < y + 500 && fire == 1)
      {
        scorpionHealth = scorpionHealth - arrowDamage;
        detect = 1;
        arrowX = - 1000000;
        if (width/2 < x + 300 && alert == 0)
        {
          alert = 1;
        }
        if (width/2 > x + 300 && alert == 0)
        {
          alert = 2;
        }
      }
      

      //fill (239, 141, 240);
      //rect (x, y, 30, 15);
      //rect (x + 1, y + 12, 5, 8);
      //rect (x + 25, y + 12, 5, 8);
      //rect (x + 28, y, 10, 10);
      //fill (0, 0, 0);
      // rect (x + 33, y + 2, 3, 3);
      //rect (x + 34, y + 6, 4, 2);
      if ((x > width/2 -300 ) && (x < width/2 + 300) && detect2 == 0 || detect == 1)
      {

        detect = 1;
        range = 1000;
         fill (0);
        rect (x + 165, y - 225, 120, 20);
        fill (225, 0, 0);
        rect (x + 200, y - 130, 5, 20);
        rect (x + 170, y - 220, scorpionHealth * 2, 10);
        
        ellipse (x + 203, y - 107, 4, 4);
        lock = 1;
       
      }

       
        
          if (timer4 >= 60)
          {
            timer4 = 0;
            attackGo = 0;
            attack = random (1,5);
          }
        
        //if ( x <= width/ 2  && x - 10 >= width/2)
        //{
          //timer4 = timer4 + 1;
          //direction = 0;
          //if (timer4 < 10)
          //{
           // image (scorpionStrikeR1,x,y);
          //}
          //if (timer4 >= 10)
          //{
          // image (scorpionRight,x,y);
           // health = health - 1;
            
         // }
          //if (timer4 >= 20)
          //{
          //  timer4 = 0;
          //}
        //}
        
  
      
      
      

      if (mouseX < x + 400 && mouseX > x + 100 && mouseY < y + 500 && mouseY > y + 200 && x - 110 < width / 2 && x + 110 > width/2 && timer2 > 20 && bowDrawn == 0)
      {
        
        fill (80, 8, 10);
        rect(mouseX, mouseY - 10, 6, 15);
        rect(mouseX - 2, mouseY - 10, 9, 3);
        fill (152, 138, 138);
        rect(mouseX, mouseY - 30, 5, 20);
        triangle(mouseX, mouseY - 30, mouseX + 6, mouseY- 30, mouseX + 3, mouseY - 35);
        if (mousePressed)
        {
          scorpionHealth = scorpionHealth - damage;
          timer2 = 0;
        }
        if (direction > 3 && timer < 1000 && scorpionHealth <= 9)
        {
         
          timer = timer + 1;
        }
        if (direction < -3 && timer < 1000 && scorpionHealth <= 9) {

        }
      }
      
    if (mousePressed)
    {
      timer2 = timer2 + 1;
    }
  }
    
    if (scorpionHealth <= 0)
    {
      deadscorpion = deadscorpion + 1;
      current = 10000000;
    }
  }
}

