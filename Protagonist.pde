class Protagonist extends GroundObject
{
  PImage characterIdle;
  PImage characterRight;
  PImage characterRightStep;

  PImage characterLeft;
  float timer4 = 0;
  PImage characterLeftStep;
  int w = 0;
  PImage swingSword1;
  float switchTimer = -1;
  int mouseLocX = 0;
  float swingRandom = 0;

  int mouseLocY = 0;
  PImage swingSword2;
  PImage swingSwordL1;
  // int nrKeys = 0;
  private int hopTimer = 0;
  private float hopHeight = 2;
  PImage swingSwordL2;
  float arrowSlope;
  PImage bowR1;
  PImage bowR2;
  float plunge = 0;
  PImage bowR3;
  PImage bowR4;
  PImage bowR5;
 
  
  private int swingTypeTimer = 0;

  float  gravity = 1;
  float friction = 1;
  PImage bowJumpL;

  float ascX;
  float ascY = 40;

  PImage bowJumpR;
  PImage characterJump;
  PImage bowR6;
  PImage bowL1;
  PImage bowL2;
  PImage characterJump2;
  PImage bowL3;
  PImage bowL4;
  PImage bowL5;
  PImage bowL6;
  PImage torchLight;
  PImage torchLight2;
  PImage characterFalling;
  PImage arrowL;
  PImage arrowR;
  PImage bowWalkL1;
  PImage bowWalkL2;
  PImage bowWalkR1;
  PImage jumpAttackR1;
  PImage jumpAttackL1;
  float plungeAttack = 0;
  float plungeTimer = 0;
  PImage jumpAttackR2;
  PImage jumpAttackL2;
  PImage bowWalkR2;
  float current;
  float direction;
  float timer = 0;
  float timer2 = 0;
  float jumpTimer = 0;
  float timer3 = 0;
 
  int stairTimer = 0;
  PImage heavyAttackR1;
  PImage heavyAttackL1;
  PImage heavyAttackR2;
  PImage heavyAttackL2;
  PImage heavyAttackR3;
  PImage heavyAttackL3;
  PImage heavyAttackR4;
  PImage heavyAttackL4;
  PImage heavyAttackR5;
  PImage heavyAttackL5;
  PImage heavyAttackR6;
  PImage heavyAttackL6;
  PImage lungeAttackR1;
  PImage lungeAttackL1;
 

  float blockWalkTimer = 0;
  PImage jumpR;
  PImage blockRun1;
  PImage blockRun2;
  PImage blockRun3;
  PImage blockRun4;
  PImage jumpL;
  float stopNoob = 0;
  PImage upperCutAttackR1;
  PImage upperCutAttackL1;
  PImage block1;
  PImage block2;
  PImage block3;
  PImage block4;
  float shot = 0;
  float timerCave = 0;
  float fallingTimer = 0;
  float freezeTimer = 0;
  float freezeJumpOff = 0;
  float maxAltitude = 0;
  float dropTimer = 0;
  float fallingCharacter = - 100;
  float targetX = 0;
  float targetY = 0;
  Protagonist(float x)
  {
    super(x);
    current = 0;
    direction = 0;
  }
  void setup ()
  {
    //
    block1 = loadImage ("shield1.png");
    block2 = loadImage ("shield1L.png");
    block3 = loadImage ("shield2.png");
    block4 = loadImage ("shield2L.png");
    blockRun1 = loadImage ("shieldRun1.png");
    blockRun2 = loadImage ("shieldRun1L.png");
    blockRun3 = loadImage ("shieldRun2.png");
    blockRun4 = loadImage ("shieldRun2L.png");
    characterIdle = loadImage("Char_primary.png");
    characterRight = loadImage ("Char_run1.png");
    characterRightStep = loadImage("Char_run2.png");
    characterJump = loadImage ("CharJump.png");
    characterJump2 = loadImage ("CharJump2.png");
    jumpR = loadImage ("jump1.png");
    jumpL = loadImage ("jump1L.png");
    characterLeft = loadImage("Char_Lrun1.png");
    characterLeftStep = loadImage("Char_Lrun2.png");
    characterFalling = loadImage("CharDuelFall.png");
    jumpAttackR1 = loadImage ("jumpAttack1.png");
    jumpAttackR2 = loadImage ("jumpAttack2.png");
    jumpAttackL1 = loadImage ("jumpAttack1L.png");
    jumpAttackL2 = loadImage ("jumpAttack2L.png");
    upperCutAttackR1 = loadImage ("Char_upperCut1R.png");
    upperCutAttackL1 = loadImage ("Char_upperCut1L.png");
    lungeAttackR1 = loadImage ("Char_lungestrikeR.png");
    lungeAttackL1 = loadImage ("Char_lungestrikeL.png");
    heavyAttackR1 = loadImage ("Char_heavyAttack1R.png");
    heavyAttackL1 = loadImage ("Char_heavyAttack1L.png");
    heavyAttackR2 = loadImage ("Char_heavyAttack2R.png");
    heavyAttackL2 = loadImage ("Char_heavyAttack2L.png");
    heavyAttackR3 = loadImage ("Char_heavyAttack3R.png");
    heavyAttackL3 = loadImage ("Char_heavyAttack3L.png");
    heavyAttackR4 = loadImage ("Char_heavyAttack4R.png");
    heavyAttackL4 = loadImage ("Char_heavyAttack4L.png");
    heavyAttackR5 = loadImage ("Char_heavyAttack5R.png");
    heavyAttackL5 = loadImage ("Char_heavyAttack5L.png");
    heavyAttackR6 = loadImage ("Char_heavyAttack6R.png");
    heavyAttackL6 = loadImage ("Char_heavyAttack6L.png");
    swingSword1 = loadImage("Char_swordStrike1.png");
    swingSword2 = loadImage("Char_swordStrike2.png");
    swingSwordL1 = loadImage ("Char_LswordStrike1.png");
    swingSwordL2 = loadImage ("Char_LswordStrike2.png");
    bowJumpL = loadImage ("CharBowJumpL.png");
    bowJumpR = loadImage ("CharBowJumpR.png");
    bowR1 = loadImage ("Char_dualBowshot1.png");
    bowR2 = loadImage ("Char_dualBowshot2.png");
    bowR3 = loadImage ("Char_dualBowshot3.png");
    bowR4 = loadImage ("Char_dualBowshot4.png");
    bowR5 = loadImage ("Char_dualBowshot5.png");
    bowR6 = loadImage ("Char_dualBowshot6.png");
    bowL1 = loadImage ("Char_LdualBowshot1.png");
    bowL2 = loadImage ("Char_LdualBowshot2.png");
    bowL3 = loadImage ("Char_LdualBowshot3.png");
    bowL4 = loadImage ("Char_LdualBowshot4.png");
    bowL5 = loadImage ("Char_LdualBowshot5.png");
    bowL6 = loadImage ("Char_LdualBowshot6.png");

    bowWalkL1 = loadImage ("CharBowWalkLeft1.png");
    bowWalkL2 = loadImage ("CharBowWalkLeft2.png");
    bowWalkR1 = loadImage ("CharBowWalkRight1.png");
    bowWalkR2 = loadImage ("CharBowWalkRight2.png");

    arrowR = loadImage ("ArrowR.png");
    arrowL = loadImage ("ArrowL.png");
    torchLight = loadImage ("TorchLight.png");
    torchLight2 = loadImage ("TorchLight2.png");
  }

  void draw()
  {


    if (caveLock == 1)
    {
      x = 300875;
      current = 0;
    }
    if (mineQuestBegins == 1)
    {
      x = 800925;
      current = 0;
      fallingTimer = fallingTimer + 1;
    }
    x = borderRight - 950;
    float x = xPos();



    float y = groundPos (xLoc() + current) - jumpHeight ;
  
    if (mineCartTrap == 1)
    {
      y -= 50;
    }

    characterDirection = direction;
    if (fallingTimer > 1 && fallingCharacter < y - 40)
    {
      fallingCharacter = fallingCharacter + 7;
      image (characterFalling, width/2 - 50, fallingCharacter);
    }
    else if (fallingTimer > 9)
    {
      fallingTimer = 0;
      fallingTimer = 0;
      mineQuestBegins = 0;
    }

    if (caveLock == 1)
    {
      x = 950;
    }
    if (mineQuestBegins == 1)
    {
      x = 950;
    }
    if (sprintRecover <= 3)
    {
      direction = 0;
    }
    if (leftStop == 1)
    {
      direction = 0;
      screenStopLeft = 1;
    }
    else
    {
      screenStopLeft = 0;
    }
    if (rightStop == 1)
    {
      direction = 0;
      screenStopRight = 1;
    }
    else
    {
      screenStopRight = 0;
    }
    if (key == 'w' && keyPressed && jump == 0 && bowDrawn == 0 && swordSwung == 0 || key == 'w' && keyPressed && freezeJump0 ==1 && bowDrawn == 0 && swordSwung == 0 )
    {
      block = 1;
    }
    else 
    {
      block = 0;
      shieldWay = 0;
    }

    if (block == 1)
    {
      blockWalkTimer = blockWalkTimer + 1;
      if (switchTimer < 12)
      {
        switchTimer = switchTimer + 1;
      }
      if (blockWalkTimer > 20 || direction == 0)
      {
        blockWalkTimer = 0;
      }
      if (mouseX >= 950 && mouseY > y - 70 && direction == 0 || mouseX > 950 && mouseY > y - 70 && blockWalkTimer <=10)
      {
        blockPos = 1;
        image (block1, width/2 - 20, y - 50);
        shieldWay = 1;
      }
      else if (mouseX > 950 && mouseY > y - 70 && blockWalkTimer >10)
      {
        blockPos = 1;
        image (blockRun1, width/2- 20, y - 50);
        shieldWay = 1;
      }
      else if (mouseX < 950 && mouseY > y - 70 && direction == 0 || mouseX < 950 && mouseY > y - 70 && blockWalkTimer <= 10)
      {
        blockPos = 2;
        image (block2, width/2 - 20, y -50);
        shieldWay = 2;
      }
      else if ( mouseX < 950 && mouseY > y - 70&& blockWalkTimer > 10)
      {
        blockPos = 2;
        image (blockRun2, width/2 - 20, y -50);
        shieldWay = 2;
      }
      else if (mouseX >= 950 && mouseY <= y - 70 && direction == 0 || mouseX >= 950 && mouseY <= y - 70 && blockWalkTimer <= 10)
      {
        blockPos = 3;
        image (block3, width/2 - 20, y - 75);
        shieldWay = 3;
      }
      else if (mouseX >= 950 && mouseY <= y - 70 && blockWalkTimer > 10)
      {
        blockPos = 3;
        image (blockRun3, width/2 - 20, y - 75);
        shieldWay = 3;
      }
      else if (mouseX < 950 && mouseY <= y - 70 && direction == 0 || mouseX < 950 && mouseY <= y - 70&& blockWalkTimer <= 10)
      {
        blockPos = 4;
        image (block4, width/2 - 20, y - 75);
        shieldWay = 4;
      }
      else if (mouseX < 950 && mouseY <= y - 70 && blockWalkTimer > 10)
      {
        blockPos = 4;
        image (blockRun4, width/2 - 20, y - 75);
        shieldWay = 4;
      }
    }
    else if (switchTimer > - 2)
    {
      switchTimer = switchTimer - 1;
    }


    if (mineCartTrap == 1)
    {

      if (key == 'd' && keyPressed) {
        direction = 9;
      }
      else if ( key == 'a' && keyPressed) 
      {
        direction = 5;
      }
      else
      {
        direction = 7;
      }
    }
    if (newBiome == 0 && keyPressed && fallingTimer == 0 && mineCartTrap == 0 && duck == 0 && hop == 0)
    {
      if (key == 'd' && rightStop == 0 ) {
        direction = 3;
      }
      else if ( key == 'a' && leftStop == 0 ) {
        direction = -3;
      }

      else if (key == 'r' && sprintRecover > 0 && direction >= 1 && jump == 0)
      {
        direction = 5;
        bowDrawn = 0;
      } 
      //
      else if (key == 'r' && sprintRecover > 0 && direction <= -1 && jump == 0)
      {
        direction = -5;
        bowDrawn = 0;
      }
      else if (keyPressed && key == ' ' && jump == 0 && sprintRecover > 250 && fallingTimer == 0 && mineCartTrap == 0 && direction <= -1 && block == 0 && duck == 0 && hop == 0)
      {
        jump = 1;
        direction = 0;
      }  
      else if (keyPressed && key == ' ' && jump == 0 && sprintRecover > 250 && fallingTimer == 0 && mineCartTrap == 0 && direction >=1 && block == 0&& duck == 0 && hop == 0)
      {
        jump = 1;
        direction = 0;
      }  
      else if (keyPressed && key == ' ' && jump == 0 && sprintRecover > 250 && fallingTimer == 0 && mineCartTrap == 0 && block == 0 && duck == 0 && hop == 0)
      {
        jump = 1;
        direction = 0;
      }
      else if (jumpTimer < 1 && bowDrawn == 0 && jump == 0 && block == 0 && swordSwung == 0 && hop == 0 && duck == 0|| jumpTimer > 20 && bowDrawn == 0 && jump == 0 && block == 0 && block == 0 && swordSwung == 0 ) 
      {

        direction = 0;
        image (characterIdle, width/2-20, y - 60);
      }
      else if (jump == 0 && duck == 0 && hop == 0)
      {
        direction = 0;
      }
    }

    else if (timer2 == 0 && bowDrawn == 0 && fallingTimer == 0 && jumpTimer < 1 && mineCartTrap == 0 && block == 0 && swordSwung == 0 && hop == 0 && duck == 0|| swordSwung == 0 && timer2 == 0 && bowDrawn == 0 && fallingTimer == 0 && jumpTimer > 20 && mineCartTrap == 0 && jump == 0 && block == 0 && hop == 0 && duck == 0) {
      direction = 0;

      image (characterIdle, width/2-20, y - 60);
    }
    else if (mineCartTrap == 0)
    {
      direction = 0;
    }
    if (mineCartTrap == 1 && keyPressed && key == 'r')
    {
      image (characterJump2, width/2 - 20, y - 35);
    }
    else if (timer2 == 0 && bowDrawn == 0 && fallingTimer == 0 && jumpTimer < 1 && mineCartTrap == 1 && hop == 0 && duck == 0 && swordSwung == 0|| timer2 == 0 && bowDrawn == 0 && fallingTimer == 0 && jumpTimer > 20 && mineCartTrap == 1 && hop == 0 && duck == 0 && swordSwung == 0)
    {

      image (characterIdle, width/2-20, y - 60);
    }

    charDirection = direction;  


    if (jump == 1 && stopNoob == 0)
    {
      jumpTimer = jumpTimer + 1;
    }

    if (jump == 1 && jumpTimer >= 1 && stopNoob == 0)
    {
      jumpHeight = jumpHeight + jumpFall;
      if (jumpFall > -4)
      {
        jumpFall = jumpFall - .1;
      }
    }

    if (freezeJump0 >= 1 && freezeJumpOff == 0 )
    {
      jumpHeight = jumpHeight;
      stopNoob = 1;
    }
    else
    {
      stopNoob = 0;
    }
    if (key == ' ' && sprintRecover > 250 && fallingTimer == 0 && mineCartTrap == 0 && keyPressed && freezeJump0 == 1)
    {
      freezeJumpOff = 1;
      jumpFall = 4;
      jumpTimer = 0;
      direction = 0;
      stopNoob = 0;
    }

    else if (freezeTimer > 50)
    {
      freezeJumpOff = 0;
      freezeTimer = 0;
    }
    if (freezeJumpOff == 1)
    {
      freezeTimer = freezeTimer + 1;
    }
    if (stairOn == 1)
    {
      stairTimer ++;
      if (stairTimer == 2)
      {
        jumpTimer = 4;
      }
    }
    if (stairOn == 1 && jumpTimer == 6)
    {
      stairOn = 0;
      stairTimer = 0;
    }
    if (jumpTimer == 3 && sprintCounter == 0)
    {

      sprintRecover = sprintRecover - 250;

      stairOn = 0;
    }
    if (jumpTimer >= 1 && jumpTimer < 20 && bowDrawn == 0 && freezeJump0 == 0)
    {
      image (characterJump2, width/2 -20, y - 55);
    }
    if (jumpTimer >= 1  && bowDrawn == 1 && mouseX > x && fire == 0 && freezeJump0 == 0)
    {
      image (bowJumpR, width/2, y - 45);
    }
    if (jumpTimer >= 1  && bowDrawn == 1 && mouseX < x && fire == 0 && freezeJump0 == 0)
    {
      image (bowJumpL, width/2, y - 45);
    }
    if (jumpFall < 0 && jumpHeight <= 0)
    {
      jumpHeight = 0;
      jump = 0;
      jumpFall = 4;
      jumpTimer = 0;

      plungeAttack = 0;
      plungeTimer = 0;
    }


    if (newBiome ==3 || newBiome == 50)
    {
      direction = 0;
      image (characterIdle, width/2-20, y - 60);
    }
    if (newBiome == 1)
    {
      direction = 7;
    }
    if (newBiome == 2)
    {
      direction = - 7;
    }
    if ( cobbleProject == 1|| stairLeftProject == 1||  doorProject == 1 )
    {
      rect (width/2 - 52, y - 28, 28, 28);
    }

    if (mousePressed && jump == 1 && jumpHeight >= 30 && freezeJump0 == 0)
    {


      plungeAttack = 1;
    }
    else if (jump == 1 && direction < 0 && jumpTimer > 3 && bowDrawn == 0 && freezeJump0 == 0)
    {
      image(jumpL, width/2 - 40, y - 47);
    }
    else if (jump == 1 && direction > 0 && jumpTimer > 3 && bowDrawn == 0 && freezeJump0 == 0)
    {
      image (jumpR, width/2 - 20, y-47);
    }
    else if (jump == 1 && direction == 0 && jumpTimer > 20 && plungeAttack == 0 && bowDrawn == 0 && freezeJump0 == 0 && duck == 0 && hop == 0)
    {
      image (characterIdle, width/2 - 20, y -47);
    }
    else if (jump == 1 && freezeJump0 == 1 && direction == 0 && bowDrawn == 0 && timer2 == 0 && duck == 0 && hop == 0 && swordSwung == 0)
    {
      image (characterIdle, width/2 - 20, y - 60);
    }
    if (freezeJump0 == 1)
    {
      plungeAttack = 0;
    }
    if (plungeTimer < 10)
    {
      plunge = 0;
    }
    else if (plungeTimer < 10)
    {
      plunge = 1;
    }
    if (plungeAttack == 1 && plunge == 0 && bowDrawn == 0)
    {
      plungeTimer = plungeTimer + 1;

      if (plungeTimer < 10)
      {
        image(jumpAttackR1, width/2 - 20, y - 47);
      }
      if (plungeTimer == 10)
      {
        jumpFall = -1;
      }
      if (plungeTimer >= 10 )
      {
        image(jumpAttackR2, width/2 - 20, y - 47);
        if (jumpFall > - 4)
        {
          jumpFall = jumpFall - .2;
        }
      }
    } 
    if (plungeAttack == 1 && plunge == 1 && bowDrawn == 0)
    {
      plungeTimer = plungeTimer + 1;

      if (plungeTimer < 10)
      {
        image(jumpAttackL1, width/2 - 20, y - 47);
      }
      if (plungeTimer == 10)
      {
        jumpFall = -1;
      }
      if (plungeTimer >= 10)
      {
        image(jumpAttackL2, width/2 - 20, y - 47);
        if (jumpFall > - 4)
        {
          jumpFall = jumpFall - .2;
        }
      }
    }

    if (swordSwung == 0 && mineCartTrap == 0 && jump == 0 && block == 0 && hop == 0 && duck == 0|| bowDrawn == 0 && mineCartTrap == 0 && freezeJump0 == 1 && block == 0 && hop == 0 && duck == 0) {
      if (direction >= 3 && timer3 > 4)
      {
        if (timer >= 10 && bowDrawn == 0)
        {
          image(characterRight, width/2 - 20, y - 47);
        }
        else if (bowDrawn == 0)
        {
          image (characterRightStep, width/2- 20, y - 47);
        }
      }
      if (direction <= -3 && timer3 > 4)
      {

        if (timer >= 10 && bowDrawn == 0)
        {
          image(characterLeft, width/2 - 20, y - 47);
        }
        else if (bowDrawn == 0) 
        {
          image (characterLeftStep, width/2 - 20, y - 47);
        }
      }
    }
    if (bowDrawn == 1 && swordSwung == 0 && timer5 <= 0 && mineCartTrap == 0 && jump == 0 && block == 0 && duck == 0 && hop == 0|| bowDrawn == 1 && swordSwung == 0 && timer5 <= 0 && mineCartTrap == 0 && freezeJump0 == 1 && hop == 0 && duck == 0) {
      if (direction >= 3 && timer3 > 4)
      {
        if (timer >= 10 )
        {
          image(bowWalkR1, width/2 - 20, y - 47);
        }
        else 
        {
          image (bowWalkR2, width/2- 20, y - 47);
        }
      }
      if (direction <= -3 && timer3 > 4)
      {

        if (timer >= 10 )
        {
          image(bowWalkL1, width/2 - 20, y - 47);
        }
        else  
        {
          image (bowWalkL2, width/2 - 20, y - 47);
        }
      }
    }

    characterY = y;
    if (++timer > 20)
    {
      timer = 0;
    }
    if (mousePressed && swingTimer == 0 && mouseX > width/2 && bowDrawn == 0 && mineQuestBegins == 0 && jump == 0 && block == 0 && direction == 0 && hop == 0 && duck == 0|| mousePressed && timer2 <= 5 && mouseX > width/2 && bowDrawn == 0 && mineQuestBegins == 0 && swingTimer == 0&& freezeJump0 == 1 && hop == 0 && duck == 0 && block == 0 && direction == 0)
    {

      swingTypeTimer ++;
      if (swingTypeTimer == 1)
      {
        mouseLocX = mouseX;

        mouseLocY = mouseY;
      }
    }
    else if (swingTypeTimer > 0 && swingTimer == 0 && mouseLocX >= x + 10)
    {
      direction = 0;

      if (mouseX > mouseLocX + 150)
      {
        swingType = 1;
        swingTimer ++;
      }
      else if (mouseY < mouseLocY - 150)
      {
        swingType = 2;
        swingTimer ++;
      }
      else if (mouseY > mouseLocY + 50)
      {
        swingType = 3;
        swingTimer ++;
      }
       else
    {
      swingTypeTimer = 0;
    }
    }
   
    if (swingTimer > 0 && mouseLocX >= x + 10)
    {
      if (swingTimer == 1)
      {
        swordSwung = 1;
      }
      swingTimer ++;
      swingDirection = 2;
      if (swingType == 1)
      {
        if (swingTimer < 40)
        {
          image (lungeAttackR1, x, y - 50);
        }
        if (swingTimer >= 20)
        {
          swordSwung = 0;
          swingTypeTimer = 0;
          swingTimer = 0;
        }
      }
      if (swingType == 2)
      {
        if (swingTimer < 20)
        {
          image(upperCutAttackR1, x- 40, y - 70);
        }
        if (swingTimer >= 20 && swingTimer < 25)
        {
          image(heavyAttackR6, x - 40, y - 60);
        }
        if (swingTimer >= 25 && swingTimer < 35)
        {
          image(heavyAttackR5, x - 40, y - 70);
        }
        if (swingTimer >= 35)
        {
          image (heavyAttackR4, x - 40, y - 70);
        }
        if (swingTimer >= 45)
        {
          swordSwung = 0;
          swingTypeTimer = 0;
          swingTimer = 0;
        }
      }
      if (swingType == 3)
      {
        if (swingTimer < 20)
        {
          image(heavyAttackR1, x- 35, y - 70);
        }
        if (swingTimer >= 20 && swingTimer < 25)
        {
          image(heavyAttackR2, x - 40, y - 70);
        }
        if (swingTimer >= 25 && swingTimer < 30)
        {
          image(heavyAttackR3, x - 40, y - 70);
        }
        if (swingTimer >= 30 && swingTimer < 35)
        {
          image (heavyAttackR4, x - 40, y - 70);
        }
        if (swingTimer >= 35 && swingTimer < 40)
        {
          image(heavyAttackR5, x - 40, y - 70);
        }
        if (swingTimer >= 40)
        {
          image (heavyAttackR6, x - 40, y - 60);
        }
        if (swingTimer >= 55)
        {
          swordSwung = 0;
          swingTypeTimer = 0;
          swingTimer = 0;
        }
      }

      
    }




    if (swingTimer >= 60)
    {
      swordSwung = 0;
      swingTypeTimer = 0;
      swingTimer = 0;
    }

    if (mousePressed && swordSwung == 0&& mouseX < width/2 && bowDrawn == 0 && mineQuestBegins == 0 && jump == 0 && block == 0 && hop == 0 && duck == 0 && swingTimer == 0|| swingTimer == 0 && mousePressed && duck == 0 && hop == 0 && timer2 <= 5 && mouseX < width/2 && bowDrawn == 0 && swordSwung == 0 && mineQuestBegins == 0 && freezeJump0 == 1 && block == 0 )
    {
      swingTypeTimer ++;
      if (swingTypeTimer == 1)
      {
        mouseLocX = mouseX;

        mouseLocY = mouseY;
      }
    }
    else if (swingTypeTimer > 0 && swingTimer == 0 && mouseLocX < x + 10)
    {
      direction = 0;

      if (mouseX < mouseLocX - 150)
      {
        swingType = 1;
         swingTimer ++;
      }
      else if (mouseY < mouseLocY - 150)
      {
        swingType = 2;
         swingTimer ++;
      }
      else if (mouseY > mouseLocY + 50)
      {
        swingType = 3;
         swingTimer ++;
      }
      else
    {
      swingTypeTimer = 0;
    }
     
    }
    if (swingTimer > 0 && mouseLocX < x+ 10)
    {
      if (swingTimer == 1)
      {
        swordSwung = 1;
      }
      swingDirection = 1;
      swingTimer++;
      if (swingType == 1)
      {
        if (swingTimer < 40)
        {
          image (lungeAttackL1, x - 40, y - 50);
        }
        if (swingTimer >= 20)
        {
          swordSwung = 0;
          swingTypeTimer = 0;
          swingTimer = 0;
        }
      }
      if (swingType == 2)
      {
        if (swingTimer < 20)
        {
          image(upperCutAttackL1, x- 40, y - 70);
        }
        if (swingTimer >= 20 && swingTimer < 25)
        {
          image(heavyAttackL6, x - 40, y - 60);
        }
        if (swingTimer >= 25 && swingTimer < 35)
        {
          image(heavyAttackL5, x - 40, y - 70);
        }
        if (swingTimer >= 35)
        {
          image (heavyAttackL4, x - 40, y - 70);
        }
        if (swingTimer >= 45)
        {
          swordSwung = 0;
          swingTypeTimer = 0;
          swingTimer = 0;
        }
      }
      if (swingType == 3)
      {
        if (swingTimer < 20)
        {
          image(heavyAttackL1, x- 25, y - 70);
        }
        if (swingTimer >= 20 && swingTimer < 25)
        {
          image(heavyAttackL2, x - 25, y - 70);
        }
        if (swingTimer >= 25 && swingTimer < 30)
        {
          image(heavyAttackL3, x - 25, y - 70);
        }
        if (swingTimer >= 30 && swingTimer < 35)
        {
          image (heavyAttackL4, x - 50, y - 70);
        }
        if (swingTimer >= 35 && swingTimer < 40)
        {
          image(heavyAttackL5, x - 53, y - 70);
        }
        if (swingTimer >= 40)
        {
          image (heavyAttackL6, x - 55, y - 63);
        }
        if (swingTimer >= 55)
        {
          swordSwung = 0;
          swingTypeTimer = 0;
          swingTimer = 0;
        }
      }
    }
    if (key == 's' && keyPressed && jump == 0 && bowDrawn == 0 && hop == 0|| key == 's' && keyPressed && jump == 1 && freezeJump0 == 1 && bowDrawn == 0 && hop == 0)
    {
      image (characterJump2, x - 10, y -63);
      duck = 1;
    }
    else if (duck >= 1)
    {
      if (hop == 0)
      {
        image (characterJump2, x - 10, y -63);
      }
      duck ++;
      if (hop != 0)
      {
        sprintRecover = sprintRecover;
      }
      if (keyPressed && key == 'a' && sprintRecover > 100 && hop == 0)
      {
        sprintRecover = sprintRecover - 100;
         hop = 1;
      }
      if (keyPressed && key == 'd' && sprintRecover > 100 && hop == 0)
      {
        sprintRecover = sprintRecover - 100;
         hop = 2;
      }
      if (duck > 5)
      {
        duck = 0;
      }
    }
    if (hop > 0)
    {
      hopTimer ++;
      hopHeight = hopHeight - .1;
      jumpHeight = jumpHeight + hopHeight;
      if (hopTimer < 10)
      {
        image (characterJump2, x - 10, y - 63);
      }
      else
      {
        image (characterRight, x - 10, y - 63);
      }
    }
    if (hopTimer > 2)
    {
      if (jumpHeight <= 0)
      {
        hopHeight = 2;
        hop = 0;
        hopSpeed = 5;
        hopTimer = 0;
      }
    }
    if (timer2 >= 20)
    { 
      timer2 = 0;
      swordSwung = 0;
    }
    if (swordSwung == 0)
    {
      timer3 = timer3 + 1;
    }
    if (swordSwung > 0)
    {
      timer3 = 0;
    }
    if (keyPressed && key == 'f' && hop == 0 && duck == 0|| bowDrawn == 1)
    {
      timer4 = timer4 + 1;
      bowDrawn = 1;
      if (timer4 < 15 && direction == 0)
      {
        image (bowR1, width/2, y - 47);
      }
      else if (timer4 > 15 && mouseX < width/ 2 && timer5 == 0 && direction == 0 && jumpTimer < 1 || timer4 > 15 && mouseX < width/ 2 && timer5 == 0 && direction == 0 && jumpTimer > 20)
      {
        image (bowL2, width/2, y - 47);
      }
      else if (timer4 > 15 && mouseX > width/2 && timer5 == 0 && direction == 0 && jumpTimer > 20 || timer4 > 15 && mouseX > width/2 && timer5 == 0 && direction == 0 && jumpTimer < 1)
      {
        image (bowR2, width/2, y - 47);
      }
      if (mineCartTrap == 1)
      {
        if (timer4 > 15 && mouseX < width/ 2 && timer5 == 0 && jumpTimer < 1 || timer4 > 15 && mouseX < width/ 2 && timer5 == 0 && jumpTimer > 20)
        {
          image (bowL2, width/2, y - 47);
        }
        else if (timer4 > 15 && mouseX > width/2 && timer5 == 0  && jumpTimer > 20 || timer4 > 15 && mouseX > width/2 && timer5 == 0 && jumpTimer < 1)
        {
          image (bowR2, width/2, y - 47);
        }
      }
      if (mousePressed && timer4 > 15 && mouseX > width /2 && shot != 2 && fire == 0|| shot == 1 && fire == 0)
      {
        shot = 1;
        if (fire == 0)
        {
          timer5 = timer5 + 1;
        }
        if (timer5 == 50)
        {
          targetX = mouseX;
          targetY = mouseY;
          arrowY = y - 30;
        }
        if (timer5 > 0 && timer5 < 10 && fire == 0)
        {
          image(bowR3, width/2, y - 47);
        }
        if (timer5 > 10 && timer5 < 20);
        {
          image (bowR4, width/2, y - 47);
        }
        if (timer5 > 20 && timer5 < 30)
        {
          image (bowR5, width/2, y - 47);
        }
        if (timer5 > 30 && timer5 < 50)
        {
          image (bowR6, width/2, y-47);
        }
        if (timer5 > 50)
        {
          timer5 =0;
          shot = 0;
          fire = 1;
        }
      }
      if (mousePressed && timer4 > 15 && mouseX < width /2 && shot != 1 && fire == 0|| shot == 2 && fire == 0)
      {
        shot = 2;

        if (fire == 0)
        {
          timer5 = timer5 + 1;
        }
        if (timer5 == 50)
        {
          targetX = mouseX;
          targetY = mouseY;
          arrowY = y - 30;
        }
        if (timer5 > 0 && timer5 < 10 && fire == 0)
        {
          image(bowL3, width/2, y - 47);
        }
        if (timer5 > 10 && timer5 < 20);
        {
          image (bowL4, width/2, y - 47);
        }
        if (timer5 > 20 && timer5 < 30)
        {
          image (bowL5, width/2, y - 47);
        }
        if (timer5 > 30 && timer5 < 50)
        {
          image (bowL6, width/2 - 10, y-47);
        }
        if (timer5 > 50)
        {
          timer5 =0;
          shot = 0;
          fire = 1;
        }
      }
    }
    if (timer4 > 15 && keyPressed && key == 'r' || mineQuestBegins == 1)
    {
      bowDrawn = 0;
      timer4 = 0;
    }
    if (fire == 1 && targetX < width/2)
    {
      image (arrowL, arrowX, arrowY);
    }
    if (fire == 1 && targetX > width/2)
    {
      image (arrowR, arrowX, arrowY);
    }

    if (fire == 1 && targetX < 950 && mineCartTrap == 0)
    {

      arrowSpeedY = (targetY - y + 20)/ (-y + 20) * ascX * 20 * gravity;
      arrowSpeedX = ((x - targetX) / (x)) * ascX * 20 * friction + direction;
    }

    else if (fire == 1 && targetX > 900 && mineCartTrap == 0)
    {
      arrowSpeedY = (targetY - y + 20)/ (-y + 20) * ascX * 20 * gravity;
      arrowSpeedX = ((x - targetX) / (x)) * ascX * 20 * friction - direction;
    }

    if (fire == 1 && targetX < 950)
    {
      arrowX = arrowX - arrowSpeedX ;
      arrowY = arrowY - arrowSpeedY;
      friction = friction - .001;
      if (targetY < y + 20)
      {
        gravity = gravity - .015;
      }
      else
      {
        gravity = gravity + .015;
      }
    }
    if (fire == 1 && targetX > 950)
    {
      arrowX = arrowX + arrowSpeedX;
      arrowY = arrowY + arrowSpeedY;
      friction = friction - .001;
      gravity = gravity -.015;
    }

    ascX = 425 / (x - targetX);
    ascY = (y / 2) / (y - targetY + 20);  

    //if (fire == 1 && targetX > 900 && mineCartTrap == 0)
    //{
    //  arrowX = arrowX + 6 - direction;
    // }
    if (fire == 1 && targetX > 900 && mineCartTrap > 0)
    {
     arrowX = arrowX + direction + 5;
    }
    if (dropTimer >= 200)
    {
      arrowY = arrowY + 1;
    }


    if (arrowX > width || arrowX < 0 || arrowY == y || arrowStop == 1)
    {
      arrowX = 900;
      fire = 0;
      arrowY = y - 30;
      maxAltitude = 0;
      dropTimer = 0;
      gravity = 1;
      friction = 1;
      arrowStop = 0 ;
      arrowSpeedX = 0;
    }
    if (fire == 1)
    {
      dropTimer = dropTimer + 2;
    }

    // ellipse (800, y - 100, 200, 200);
  }
}
