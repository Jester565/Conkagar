ArrayList<Drawable> drawables;
ArrayList<Ground> ground;
ArrayList<InventoryItem> inventoryItems;
float timer44 = 0;
float bowDrawn = 0;
 float swordSwung = 0;
float arrowX = 900;
int swingDirection = 0;
float cfm = 0;
float arrowY = 2;
int shieldWay = 0;
int swingType = 0;
int removeCook = 0;
float hopSpeed = 5;
int removeFuel = 0;
float mpd;
float sprintCounter = 0;
int needleCount = 0;
int chestTransferValue = -1;
float swingTimer = 0;
int timer5 = 0;
int chestTransferValue2 = -1;
int removeCount = 0;
int chestTransferTimer = 0;
int wallRightStop = 0;
  int duck = 0;
  int hop = 0;
   int chestCap = 0;
int wallLeftStop = 0;
int fuelSlot = 0;
int cm = 0;
int stickCount = 4;
int characterPlace = 0;
 int fillTimer = 0;
int f1 = 0;
int storeType = 0;
int buildBlock = 0;
int blockType = 0;
int chestPlace = 0;
int characterTimer = 0;
Stick stick;
int chestMenu = 0;
int blockNumber = 0;
int fuelIn = 0;
int cookIn = 0;
Bacon bacon;
int furnaceMenu = 0;
int fuelType = 0;
int chestCount = 1;
int chestTransferType = 0;
float fm = 0;
float fire = 0;
PImage iron;
int stairHeight = 0;
float steamMotorPart1 = 0;
float dragBlock = 0;
float characterDirection;
int stairOn = 0;
float elevatorScene = 0;
float backWallActive = 0;
float steamMotorPart2 = 0;
float invisibleBlock = 0;
float mineCartTrap = 0;
float characterX2;
float placeGo = 0;
float block = 0;

float doorProject = 0;
float cobbleProject = 0;
int placeCount2 = 1;
int ironPickCount = 0;
int cookedBaconCount = 0;
int ironAxeCount = 0;

int ironCount = 0;
int arrowCount = 0;
int woodSwordCount = 0;
int stoneSwordCount = 0;
float stairLeftProject = 0;
float stairRightProject = 0;
float blockPos = 0;
float fortPos = 30000;
float fortHeight = 0;
float woodGrab = 0;
float newBiome;
int plankCount = 101;
int stairLeftCount = 0;
int stairRightCount = 0;
float biomeTimer;
int treeCount = 0;
int leatherCount = 0;
int honeyCount = 0;
int bandageCount = 0;
int stonePickCount = 0;
int furnaceCount = 2;
int stoneAxeCount = 0;
float place0;
int ironOreCount = 0;
int cobbleStoneCount = 100;
int campFireCount = 5;
int campFireMenu = 0;
float place1;
float place2;
float place3;
float jump = 0;
float place4;
int axeCount = 0;
float place5;
int baconCount = 2;
float place6;
float place7;
float place8;
float cookSlot = 0;
float cookType = 0;
float jumpFall = 4;
float cavePos1 = 14000;
float jumpHeight = 0;
float buttonDetect = 100;
float buttonDetect2 = 100;
float gateCutSceneLock = 0;
float project = 0;
float hosPos = 3000;
float hosDetect = 0;
float cutSceneTimer = 0;
int blockScan = -2;
int blockScanX = 0;
int blockPlace = 0;

float shopStep =  0;
float leatherGone;
float leftHosDetect = 0;
float mobStop = 0;
int pickCount = 0;
float holla;
int coalCount = 0;
float rightStop = 0;
float leftStop = 0;
float arrowDamage = 2;
float guardStopL = 0;
float freezeJump;
float characterY;
float guardStopR = 0;
float damage = 1;
float healthTimer = 500;
float doorCount = 0;
int globalDrag = 0;
float freezeJump0;

int redBudCount = 0;

float placedCount = 11;
float arrowStop = 0;
int aa = 101;
int blockLayer = 0;
float mobBlockTrack;
float mobBlockTrackY;
float rockGrab = 0;
float screenStopLeft = 0;
float gateButton = 0;
float charDirection;
float mby;
float screenStopRight= 0;
float arrowSpeedY;
float arrowSpeedX;
float maxHealth = 300;
float posionTimer = 600;
float caveLock = 0;
int rockCount = 0;
float cutSceneTimer2 = 0;
float characterPos = 8950;
float miningTownPos = 5000;
float mineQuestBegins = 0;
float mineCartPos = 800000;
float woodTimer = 0;
PImage wood;
PImage ic2;
PImage ic3;
PImage ic4;
PImage ic5;
Hud hud;
Protagonist protagonist;

void setup()
{
  size  (1900, 1000);
  ic2 = loadImage ("ic2.png");
  ic3 = loadImage ("ic3.png");
  ic4 = loadImage ("ic4.png");
  ic5 = loadImage ("ic5.png");
  wood = loadImage ("Wood.png");
  hud = new Hud(4);
  stick = new Stick();
  bacon = new Bacon();

  drawables = new ArrayList<Drawable>();
  ground = new ArrayList <Ground>();
  inventoryItems = new ArrayList <InventoryItem>();
  float groundX = 0;



  while (groundX < 900000)
  {
    float w;
    float h;
    println (mpd);
    float caveH;
    if (groundX > 100)
    {
      caveH = random (100, 400);
    }
    else
    {
      caveH = 0;
    }

    if (groundX < fortPos + 2700 && groundX >= fortPos - 1000)
    {
      w = 1500;
      h = 50;
    }
    // else if (groundX < miningTownPos + 1300 && groundX >= miningTownPos - 500)
    //{
    //w = 1500;
    // h = 50;

    // }

    else if (groundX <= 12000)
    {

      w = random (100, 700);
      h = random (80, 150);
      float tPos = random (groundX, groundX + w);
      float tPos2 = random (groundX, groundX + w);

      drawables.add (new Tree ( tPos, 70));
      drawables.add (new Rock (tPos, 70));
      drawables.add (new Plant (tPos2, 70));
    }
    else if (groundX > 10000 && groundX < 280000)
    {
      w = random (600, 2000);
      h = random (30, 60);
      float tPos = random (groundX, groundX + w);
      float tPos2 = random (groundX, groundX + w);
      drawables.add (new Tree ( tPos, 70));
      drawables.add (new Rock (tPos, 70));
    }
    else if (groundX >= 700000)
    {
      w = random ( 600, 2000);
      h = 100;
    }
    else if (groundX >= 280000 && groundX < 700000)
    {
      w = random (100, 600);
      h = random (50, 400);
      w = random (100, 700);
      h = random (80, 150);
      float tPos = random (groundX, groundX + w);
      float tPos2 = random (groundX, groundX + w);

      drawables.add(new Iron (tPos, 70));
    }
    else

    {
      w = 0;
      h = 0;
    }


    Ground g = new Ground(groundX, height - h, w, h, caveH);

    ground.add (g);
    drawables.add(g);


    groundX += w;
  }

  protagonist = new Protagonist(characterPos);

  drawables.add(new DesertGround (10000));
  drawables.add(new DesertGround (9950));
  drawables.add(new DesertGround (9900));
  drawables.add(new DesertGround (9850));
  drawables.add(new DesertGround (9800));
  drawables.add(new DesertGround (9750));
  drawables.add(new DesertGround (9700));
  drawables.add(new DesertGround (9650));
  drawables.add(new DesertGround (9600));
  drawables.add(new DesertGround (9550));
  drawables.add(new DesertGround (9500));
  drawables.add(new DesertGround (9450));
  drawables.add(new DesertGround (9400));
  drawables.add(new DesertGround (9350));
  drawables.add(new DesertGround (9300));
  drawables.add(new DesertGround (9250));
  drawables.add(new DesertGround (9200));
  drawables.add(new DesertGround (9150));
  drawables.add(new DesertGround (9100));
  drawables.add(new DesertGround (9050));
  drawables.add(new DesertGround (9000));
  drawables.add(new DesertGround (8950));
  drawables.add(new DesertGround (1050));
  drawables.add(new DesertGround (1100));
  drawables.add(new DesertGround (9100));
  drawables.add(new DesertGround (9050));
  drawables.add(new DesertGround (9000));
  drawables.add(new DesertGround (8950));


  drawables.add(new DesertGround (10050));
  drawables.add(new DesertGround (10100));
  drawables.add(new DesertGround (10150));
  drawables.add(new DesertGround (10200));
  drawables.add(new DesertGround (10250));
  drawables.add(new DesertGround (10300));
  drawables.add(new DesertGround (10350));
  drawables.add(new DesertGround (10400));
  drawables.add(new DesertGround (10450));
  drawables.add(new DesertGround (10500));
  drawables.add(new DesertGround (10550));
  drawables.add(new DesertGround (10600));
  drawables.add(new DesertGround (10650));
  drawables.add(new DesertGround (10700));
  drawables.add(new DesertGround (10750));
  drawables.add(new DesertGround (10800));
  drawables.add(new DesertGround (10850));
  drawables.add(new DesertGround (10900));
  drawables.add(new DesertGround (10950));
  drawables.add(new DesertGround (11000));
  drawables.add(new DesertGround (11050));
  drawables.add (new MiningGuard (8500));
  drawables.add (new MiningGuard (8700));
  drawables.add (new MiningGuard3 (mineCartPos + 10500));
  drawables.add (new MiningGuard3 (mineCartPos + 10600));
  drawables.add (new MiningGuard3 (mineCartPos + 13600));
  drawables.add (new MiningGuard3 (mineCartPos + 13800));
  drawables.add (new MiningGuard3 (mineCartPos + 14500));
  drawables.add(new MiningLeader (mineCartPos + 7150));
  drawables.add (new CMineGuard (mineCartPos + 13000));
  drawables.add (new CMineGuard (mineCartPos + 13200));
  drawables.add (new CMineGuard (mineCartPos + 13400));
  drawables.add (new CMineGuard (mineCartPos + 12000));
  drawables.add (new CMineGuard (mineCartPos + 18000));
  drawables.add (new CMineGuard (mineCartPos + 18020));
  drawables.add (new CMineGuard (mineCartPos + 19000));
  drawables.add (new Lamp (mineCartPos + 19000, 0));
  drawables.add (new Lamp (mineCartPos + 9500, 0));
  drawables.add (new Lamp (mineCartPos + 9000, 0));
  drawables.add (new Lamp (mineCartPos + 8200, 0));
  drawables.add (new Lamp (mineCartPos + 10000, 0));
  drawables.add (new Lamp (mineCartPos + 10700, 0));
  drawables.add (new Lamp (mineCartPos + 11200, 0));
  drawables.add (new Lamp (mineCartPos + 14000, 0));




  drawables.add (new CampFire (1));
  drawables.add (new CampFire (2));
  drawables.add (new CampFire (3));
  drawables.add (new CampFire (4));
  drawables.add (new CampFire (5));
  drawables.add (new CampFire (6));
  drawables.add (new CampFire (7));
  drawables.add (new CampFire (8));
  drawables.add (new CampFire (9));
  drawables.add (new CampFire (10));
  drawables.add (new CampFire (11));
  drawables.add (new CampFire (12));
  drawables.add (new CampFire (13));
  drawables.add (new CampFire (14));
  drawables.add (new Lamp (mineCartPos + 14500, 0));
  drawables.add (new Lamp (mineCartPos + 13200, 0));
  drawables.add (new Lamp (mineCartPos + 13700, 0));
  drawables.add (new Lamp (mineCartPos + 14000, 0));
  drawables.add (new Lamp (mineCartPos + 18000, 0));
  drawables.add (new Lamp (mineCartPos + 9600, 0));
  drawables.add(new MiningLeader (mineCartPos + 6920));

  drawables.add(new MiningLeader (mineCartPos + 7000));
  drawables.add(new MiningLeader (mineCartPos + 7050));
  drawables.add(new MiningLeader (mineCartPos + 7800));
  drawables.add (new SteamMotor (mineCartPos - 375, 45));
  drawables.add (new SteamMotor (mineCartPos + 4600, 45));

  drawables.add(new MineCart (mineCartPos));
  drawables.add(new MineCart (mineCartPos + 3800));
  drawables.add (new ArrowGuard (fortPos + 75));

  drawables.add (new MedKit (fortPos + 400, 45));


  drawables.add(new MiningArrowGuard (mineCartPos + 6290));

  drawables.add(new WatchTower (mineCartPos + 6200, 0));
  drawables.add (new MineCart (mineCartPos + 13000));

  drawables.add (new ArrowGuard (fortPos + 2000));
  drawables.add (new MiningArrowGuard (mineCartPos + 2590));
  drawables.add (new MiningArrowGuard (mineCartPos + 2930));
  drawables.add(new Pig(5500));
  drawables.add(new Pig(3000)); 
  drawables.add(new Pig(7000));
  drawables.add(new Pig(5800));
  drawables.add(new MiningLeader (mineCartPos + 3400));
  drawables.add(new Lamp (mineCartPos + 300, 0));
  drawables.add(new Lamp (mineCartPos + 2300, 0));
  drawables.add(new Lamp (mineCartPos - 800, 0));
  drawables.add(new Lamp (mineCartPos + 3800, 0));
  drawables.add(new Lamp (mineCartPos + 4700, 0));
  drawables.add(new Lamp (mineCartPos + 3100, 0));
  drawables.add(new Lamp (mineCartPos + 5200, 0));
  drawables.add(new Lamp (mineCartPos + 5650, 0));
  drawables.add (new CTrain (mineCartPos + 7900, 0));
  drawables.add(new FortBuildingInside (mineCartPos + 1600, 300));
  drawables.add(new FortBuildingInside (fortPos +750, 300));
  drawables.add (new FortBuilding (fortPos + 750, 300));
  drawables.add(new FortBuilding (mineCartPos + 1600, 300));

  drawables.add (new MiningTownInside (miningTownPos, 550));
  drawables.add(new MineBuildingInside2 (mineCartPos + 5500, 345));
  drawables.add(new MiningBuilding2 (mineCartPos + 5500, 345));
  drawables.add (new CaveEnterance (cavePos1, 70));
  drawables.add (new MineBuildingInside (mineCartPos + 2500, 375));
  drawables.add (new LootSpot (mineCartPos + 2700, 70, 3));
  drawables.add (new MiningBuilding (mineCartPos + 2500, 375));
  drawables.add (new MiningFort (mineCartPos + 2000, 70));
  drawables.add(new MiningTown (miningTownPos, 550));
  drawables.add(new Fort ( mineCartPos - 1000, 70));

  drawables.add(new StationaryTorch (mineCartPos - 100, 40));
  drawables.add(new StationaryTorch (mineCartPos + 700, 0));
  drawables.add(new StationaryTorch (mineCartPos + 1500, 60 ));
  drawables.add(new StationaryTorch (mineCartPos + 3200, 0));
  drawables.add(new Lamp (mineCartPos + 1250, 0));


  drawables.add(new Buffalo (5000));
  drawables.add(new Buffalo ( 5500));
  drawables.add(new Arrow (characterPos));

  drawables.add(new KingScorpion ( 13000));
  drawables.add(new Fort ( fortPos, 70));
  drawables.add(new Ballista (fortPos + 600));
  drawables.add(new Barrier (fortPos - 250, 180));
  drawables.add(new ArrowLauncherLeft (fortPos + 900));
  drawables.add(new BarrierLeft (fortPos + 2200, 180));
  drawables.add(new MiningLeader (mineCartPos + 3100));
  drawables.add (new MiningFort (mineCartPos + 2000, 70));
  //drawables.add(new BallistaLeft (fortPos + 1100));
  drawables.add(new FortLeft (fortPos + 1300, 70));

  drawables.add(new Snake (12000));
  drawables.add(new Turtle ( 12500));
  drawables.add(new Scorpion ( 13000));

  drawables.add(new MiningGuard2(mineCartPos + 1300));
  drawables.add(new MiningGuard (mineCartPos));
  drawables.add(new MiningGuard (mineCartPos + 300));
  drawables.add(new MiningGuard (mineCartPos + 150));
  drawables.add(new MiningGuard (mineCartPos - 100));
  drawables.add(new MiningGuard (mineCartPos + 3800));
  drawables.add(new MiningGuard (mineCartPos + 4100));
  drawables.add(new MiningGuard (mineCartPos + 3950));
  drawables.add(new MiningGuard (mineCartPos - 3700));
  drawables.add(new MiningLeader (mineCartPos - 400));
  drawables.add(new Ballista (mineCartPos + 1800));
  drawables.add(new LootSpot (7000, 50, 3));

  drawables.add (new MinecartC (mineCartPos + 9800, 0));
  drawables.add(hud);

  drawables.add(protagonist);

  //drawables.add (new MinecartC (7000, 0));
  //drawables.add(new Wall(borderLeft));
  //drawables.add (new Wall (borderLeft) );



  for (Drawable d : drawables) {
    d.setup();
  }
}

float groundPos (float xPos)
{
  for (Ground g : ground) {
    if ((xPos >= g.x) && (xPos <= g.x + g._w))
    {
      return g.y;
    }
  }
  return -1;
}
float direction = 0;
float sprintRecover = 500;
float speed = 3;
float borderLeft = 8000;
float borderRight = 9900;
color blue = color(0, 0, 235);
float health = 300;
float overRideSprint = 0;
void draw()
{

  if (buildBlock == 1 && blockScan == -2)
  {
    
    drawables.remove(protagonist);
    drawables.add (new Wall(1, blockNumber, blockType, blockLayer));
    if (blockType == 5)
    {
      blockNumber++;
      drawables.add (new Wall(1, blockNumber, 6, blockLayer));
    }
    drawables.add(protagonist);

    blockNumber ++;
    blockScan ++;
  
    buildBlock = 0;
    
  }
//  characterPlace++;
//  if (characterPlace ==3)
//  {
//    println("start");
//    drawables.add(new Protagonist(characterPos));
//    println("done");
//  }
  if (blockScan >= 0)
  {

    blockScan ++;
    buildBlock = 0;
    if (blockScan > blockNumber - 1)
    {
      blockScan = -2;
    }
  }
  if (blockScan > blockNumber - 2)
  {
    blockScan = -2;
  }

  //println(freezeJump);

  if (gateButton == 1)
  {
    cutSceneTimer2 = cutSceneTimer2 + 1;
  }
  frameRate(60);




  if (key == ' ' && keyPressed)
  {
    borderLeft = borderLeft;
    borderRight = borderRight;
  } 

  if (borderRight > cavePos1 && borderRight < cavePos1 + 10 && newBiome != 1 && newBiome != 2)
  {
    newBiome = 3;
  }

  if (newBiome == 3)
  {
    if (mouseX > width/2 - 10 && mouseX < mouseX + 300 && mouseY > 675 && mouseY <705)
    {
      buttonDetect = 1;
      if (mousePressed)
      {
        buttonDetect = 255;

        if (borderLeft > cavePos1 && borderLeft < cavePos1 + 10)
        {
          newBiome = 2;
          caveLock = 1;
        }
        else if (borderRight > cavePos1 && borderRight < cavePos1 + 10)
        {
          newBiome = 1;
          caveLock = 1;
        }
      }
      biomeTimer = 0;
    }
    else 
    {
      buttonDetect = 100;
    }

    if (mouseX > width/2 - 20 && mouseX < mouseX + 300 && mouseY > 705 && mouseY < 750)
    {
      buttonDetect2 = 255;
      if (mousePressed)
      {
        if (borderLeft > 10000 && borderLeft < 10010 || borderLeft > cavePos1 && borderLeft < cavePos1 + 10)
        {
          newBiome = 200;
          biomeTimer = 330;
        }
        else if (borderRight > 10000 && borderRight < 10010 || borderRight > cavePos1 && borderRight < cavePos1 + 10)
        {
          newBiome = 100;
          biomeTimer = 330;
        }
      }
    }
    else {
      buttonDetect2 = 100;
    }
  }
  if (gateButton == 1 && cutSceneTimer2 < 450)
  {
    borderRight = borderRight + 8;
    borderLeft = borderLeft + 8;
    newBiome = 50;
    gateCutSceneLock = 1;
  }

  if (gateButton == 1)
  {
    leftStop = 1;
    rightStop = 1;
    mobStop = 1;
  }
  if (gateButton == 1 && cutSceneTimer2 > 1700 )
  {
    borderRight = borderRight - 8;
    borderLeft = borderLeft - 8;
    newBiome = 50;
  }
  rightStop = 0;
  leftStop = 0;
  if (gateButton == 1 && cutSceneTimer2 > 2150)
  {
    gateButton = 0;
    cutSceneTimer = 0;
    mobStop = 0;
    newBiome = 0;
    rightStop = 0;
    leftStop = 0;
  }



  posionTimer = posionTimer + 1;
  if (posionTimer < 500)
  {
    health = health - .1;
  }

  if (sprintRecover <= 3)
  {
    direction = 0;
  }
  if (screenStopLeft == 1)
  {
    direction = 0;
  }
  if (screenStopRight == 1)
  {
    direction = 0;
  }
  if (newBiome == 2)
  {
    newBiome = 2;
  }

  if (newBiome != 0)
  {
    biomeTimer = biomeTimer + 1;
  }
  if (biomeTimer > 330)
  {
    newBiome = 0;
    biomeTimer = 0;
  }

  float notMoving = 0;
  if (mineCartTrap == 1)
  {

    if (key == 'd' && rightStop == 0 && keyPressed && hop == 0 && duck == 0) {
      borderLeft += 9;
      borderRight += 9;
    }
    else if ( key == 'a' && leftStop == 0 && keyPressed && hop == 0 && duck == 0) 
    {
      borderLeft += 5;
      borderRight += 5;
    }
    else
    {
      borderLeft +=7;
      borderRight += 7;
    }
  }
  if (leftStop == 1 || rightStop == 1 || wallRightStop == 1 || wallLeftStop == 1||timer5 !=0)
  {
    direction = 0;
  }

  if (keyPressed && newBiome == 0 && mineCartTrap == 0) {
    if (key == 'd' && overRideSprint == 0 && newBiome != 2 && screenStopRight == 0 && wallRightStop == 0 && hop == 0 && duck == 0&& swordSwung == 0 && timer5 == 0) {
      //if (blue == get (200, 900)) {
      borderLeft += speed;
      borderRight += speed;
      direction = 1;
    }
    //}


    else if (key == 'a' && overRideSprint == 0 && newBiome !=1 && screenStopLeft == 0 && wallLeftStop == 0 && duck == 0 && hop == 0 && swordSwung == 0 && timer5 == 0) {
      //if (blue == get (200, 900))
      //{
      borderLeft -= speed;
      borderRight -= speed;
      direction = -1;


      //}
    }
  } 
  else if (hop == 0)
  {
    direction = 0;
  }
  if (newBiome == 1)
  {
    direction = 7;
    borderLeft += 7;
    borderRight += 7;
  }

  if (newBiome == 2)
  {

    borderLeft = borderLeft - 7;
    borderRight = borderRight - 7;
  }



  if (key == 'r' && keyPressed && sprintRecover > 0 && direction == 1 && newBiome == 0 && mineCartTrap == 0 && wallRightStop == 0 && hop == 0 && duck == 0 && swordSwung == 0&& timer5 == 0)
  {
    borderLeft += 5;
    borderRight += 5;
    sprintRecover = sprintRecover - 5;
    overRideSprint = 1;
    bowDrawn = 0;
  } 

  else if (key == 'r' && keyPressed && sprintRecover > 0 && direction == -1 && newBiome == 0 && mineCartTrap == 0 && wallLeftStop == 0 && hop == 0 && duck == 0 && swordSwung == 0 && timer5 == 0)
  {
    borderLeft -= 5;
    borderRight -= 5;
    sprintRecover = sprintRecover - 5;
    overRideSprint = 1;
    bowDrawn = 0;
  }
  else
  {
    overRideSprint = 0;
  }
  if (hop == 1 && wallLeftStop == 0)
  {
    hopSpeed = hopSpeed - .1;
    borderLeft -= hopSpeed;
    borderRight -= hopSpeed;
   
  }
  if (hop == 2 && wallRightStop == 0)
  {
    hopSpeed = hopSpeed -.1;
    borderLeft += hopSpeed;
    borderRight +=hopSpeed;
    
  }
    
  

  if (sprintRecover <= 1)
  {
    direction = 0;
  }

  if (sprintRecover <= 500 && hop == 0)
  {
    sprintRecover = sprintRecover + 1;
  }

  if (borderRight < 299000)
  {
    background (0, 0, 235);
  }
  else
  {
    background (36, 34, 34);
  }




  for (Drawable d : drawables) {
    d.move(borderLeft, borderRight);

    d.draw();
  }

  if (mineQuestBegins == 1)
  {

    borderRight = 801900;
    borderLeft = 800000;
  }
  if (newBiome == 1)
  {
    if (borderRight > 10000 && borderRight < 12300)
    {
      fill (165, 125, 17);
      rect (0, 0, 2000, 1000);
      fill (0);
      textSize(40);
      text ("Entering Desert", 750, 500);
      rect (730, 600, 360, 40);
      fill (255, 0, 0);
      rect (740, 605, biomeTimer, 30);
      rightStop = 0;
      leftStop = 0;
    }

    if (borderRight > cavePos1 && borderRight < 302500 && caveLock == 1)
    {
      fill (121, 16, 16);
      rect (0, 0, 2000, 1000);
      fill (255);
      textSize(40);
      text ("Entering Caves", 750, 500);
      fill (0);
      rect (730, 600, 360, 40);
      fill (255, 0, 0);
      rect (740, 605, biomeTimer, 30);
      borderRight = 301900;
      borderLeft = 300000;
    }
    else
    {
      caveLock = 0;
    }
  }
  if (biomeTimer > 300)
  {
    caveLock = 0;
  }
  if (newBiome == 2)
  {
    if (borderLeft > 10000 && borderLeft < 12000)
    {
      fill (0, 255, 0);
      rect (0, 0, 2000, 1000);
      fill (0);
      textSize (40);
      text ("Entering Forest", 750, 500);
      rect (730, 600, 360, 40);
      fill (255, 0, 0);
      rect (740, 605, biomeTimer, 30);
      rightStop = 0;
      leftStop = 0;
    }
  }
  if (newBiome == 3)
  {
    fill (0, 0, 0, buttonDetect);
    rect (width/2 - 20, 675, 300, 30);
    textSize (30);
    fill (255, 0, 0);
    text("Enter New Biome?", width/2, 700);
    fill (0, 0, 0, buttonDetect2);
    rect (width/2 - 20, 720, 300, 30);
    fill (255, 0, 0);
    text ("Stay in Biome...", width/2, 745);
  }
}
void addCharacter()
{
  drawables.add(new Protagonist(characterPos));
}
