class Buffalo extends GroundObject
{
  PImage buphaloRight;
  PImage buphaloLeft;
  PImage buphaloRightCharge;
  PImage buphaloLeftCharge;
  PImage buphaloRightRunning;
  PImage buphaloLeftRunning;
  PImage buphaloRightRunCharge;
  PImage buphaloLeftRunCharge;
  PImage buphaloLeftHit;
  PImage buphaloRightHit;
  PImage hide;
  float range;
  float current;
  float direction;
  float buphaloRun =0;
  float deadBuphalo = 0;
  float timer = 0;
  float buphaloHealth = 5;
  float timer2 = 0;
  float timer3 = 0;
  float detect = 0;
  float detect2 = 0;
  float alert = 0;
  float byeBuphalo = 0;
  void setup ()
  {
    buphaloRight = loadImage("Buphalo_right.png");
    buphaloLeft = loadImage("Buphalo_left.png");
    buphaloRightRunning = loadImage("Buphalo_rightSprint.png");
    buphaloLeftRunning = loadImage("Buphalo_leftSprint.png");
    buphaloRightRunCharge = loadImage("Buphalo_rightSprintCharge.png");
    buphaloLeftRunCharge = loadImage("Buphalo_sprintCharge.png");
    buphaloRightCharge = loadImage("Buphalo_rightCharge.png");
    buphaloLeftCharge = loadImage("Buphalo_charge.png");
    buphaloRightHit = loadImage("Buphalo_rightHit.png");
    buphaloLeftHit = loadImage ("Buphalo_leftHit.png");
    hide = loadImage ("Hide.png");
  }



  Buffalo(float x)
  {
    super(x);
    range = random (0, 500);
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
      y -= 17; 
      if (current > range) {
        direction = -1;
      } 
      else if (current < -range) {
        direction = 1;
        image(buphaloRight, x, y);
      }
      
      if (direction == 1)
      {
        if (timer >= 10)
        {
          image(buphaloRight, x, y - 20);
        }
        else
        {
          image (buphaloRightRunning, x, y - 20);
        }
      }
      if (direction == -1)
      {

        if (timer >= 10)
        {
          image(buphaloLeft, x, y - 20);
        }
        else
        {
          image(buphaloLeftRunning, x, y - 20);
        }
      }
      if (direction == 3.2)
      {
        if (timer >= 10)
        {
          image(buphaloRightCharge, x, y - 20);
        }

        else
        {
          image (buphaloRightRunCharge, x, y - 20);
        }
      }



      if (direction == -3.2)
      {

        if (timer >= 10)
        {
          image(buphaloLeftCharge, x, y - 20);
        }
        else
        {
          image(buphaloLeftRunCharge, x, y - 20);
        }
      }
      if (++timer > 20)
      {
        timer = 0;
      }

           
    
    if (arrowX < x + 50 && arrowX > x && arrowY < y && arrowY > y - 40 && fire == 1)
      {
        buphaloHealth = buphaloHealth - arrowDamage;
        detect = 1;
        arrowX = -10000000;
        if (width/2 < x)
        {
          alert = 1;
        }
        if (width/2 > x)
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
        fill (225, 0, 0);
        rect (x + 30, y - 30, 5, 20);
        ellipse (x + 33, y - 7, 4, 4);


        if (x >= width/2 + 250 && x<= width/2 + 260 || alert == 1)
        {
          direction = -3.2;
     
        }
        if (x <= width/2 - 250 && x>= width/2 -260 || alert == 2)
        {
          direction = 3.2;
        
        }
        if ( x >= width/2 - 254 && x <= width/2 + 254)
        {
          alert = 0;
       
        }
      }


      if (mouseX < x + 50 && mouseX > x && mouseY < y + 40 && mouseY > y && x - 110 < width / 2 && x + 110 > width/2 && deadBuphalo == 0 && timer2 > 20 && bowDrawn == 0)
      {
        fill (80, 8, 10);
        rect(mouseX, mouseY - 10, 6, 15);
        rect(mouseX - 2, mouseY - 10, 9, 3);
        fill (152, 138, 138);
        rect(mouseX, mouseY - 30, 5, 20);
        triangle(mouseX, mouseY - 30, mouseX + 6, mouseY- 30, mouseX + 3, mouseY - 35);
        if (mousePressed)
        {
          buphaloHealth = buphaloHealth - damage;
          timer2 = 0;
        }
        if (direction > 3 && timer < 1000 && buphaloHealth <= 9)
        {
          image(buphaloRightHit, x, y - 20);
          timer = timer + 1;
        }
        if (direction < -3 && timer < 1000 && buphaloHealth <= 9) {
          image(buphaloLeftHit, x, y - 20);
        }
      }
      if (width / 2 < x + 50 && width/2 > x - 5)
      {
        health = health - 2;
      }
    }
    if (deadBuphalo == 1)
    {
      leatherGone = 0;
    }
    if ( mousePressed)
    {
      timer2 = timer2 + 1;
    }
    if (buphaloHealth <= 0)
    {
      deadBuphalo = deadBuphalo + 1;
      if (deadBuphalo == 2)
      {
        leatherCount = leatherCount + 1;
      }
      current = 10000000;
       if (leatherCount >= 1)
       {
      if (get (650, 20) == color (225)) {
        image (hide, 650, 20);
        if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (643, 13, 45, 45, 100);
          if (mousePressed)
          {
            healthTimer = 1;
            byeBuphalo = 1;
          }
        }
      }
      else if (get (700, 20) == color (225)) {
        image (hide, 700, 20);
        if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (693, 13, 45, 45, 100);
          if (mousePressed )
          {
           healthTimer = 1;
           byeBuphalo = 1;
          }
        }
      }

      else if (get (750, 20) == color (225) ) {
        image (hide, 750, 20);
        if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70 )
        {
          fill (225, 0, 0, 100);
          rect (743, 13, 45, 45, 100);
          if (mousePressed )
          {
            healthTimer = 1;
             byeBuphalo = 1;
          }
        }
      }
      else if (get (800, 20) == color (225) ) {
        image (hide, 800, 20);
        if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70 )
        {
          fill (225, 0, 0, 100);
          rect (793, 13, 45, 45, 100);
          if (mousePressed )
          {
           healthTimer = 1;
            byeBuphalo = 1;
          }
        }
      }
      else if (get (850, 20) == color (225)) {
        image (hide, 850, 20);
        if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (843, 13, 45, 45, 100);
          if (mousePressed)
          {
           healthTimer = 1;
            byeBuphalo = 1;
          }
        }
      }
      else if (get (900, 20) == color (225) ) {
        image (hide, 900, 20);
        if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70 )
        {
          fill (225, 0, 0, 100);
          rect (893, 13, 45, 45, 100);
          if (mousePressed)
          {
            healthTimer = 1;
             byeBuphalo = 1;
          }
        }
      }    
      else if (get (950, 20) == color (225) ) {
        image (hide, 950, 20);
        if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70 )
        {
          fill (225, 0, 0, 100);
          rect (943, 13, 45, 45, 100);
          if (mousePressed && shopStep == 1)
          {
            healthTimer = 1;
             byeBuphalo = 1;
          }
        }
      }
      else if (get (1000, 20) == color (225) ) {
        image (hide, 1000, 20);
        if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (993, 13, 45, 45, 100);
          if (mousePressed)
          {
            healthTimer = 1;
             byeBuphalo = 1;
          }
        }
      }
      else if (get (1050, 20) == color (225) ) {
        image (hide, 1050, 20);
        if (mouseX > 1050 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
        {
          fill (225, 0, 0, 100);
          rect (1043, 13, 45, 45, 100);
          if (mousePressed )
          {
            healthTimer = 1;
             byeBuphalo = 1;
          }
        }
      }
      else if (get (1100, 20) == color (225) ) {
        image (hide, 1100, 20);
        if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70 )
        {
          fill (225, 0, 0, 100);
          rect (1093, 13, 45, 45, 100);
          if (mousePressed )
          {
            healthTimer = 1;
             byeBuphalo = 1;
          }
        }
      }
      else
      {
      }
    }
    }
  }
}

