class CampFire extends GroundObject 
{
  float current;

  float direction;
  float randomY = random (200, 500);

  float placed = 0; 
  float placeTimer3 = 0;
  int storetreeCount = 0;
  float fireTimer = 0;
  float cookTimer5 = 0;
  int storeNeedleCount = 0;
  PImage Needle;
  float noPlace = 0;
  int slot1 = 0;
  PImage WoodSword;
  PImage StoneSword;
  int slot2 = 0;
  int slot3 = 0;
  int slot4 = 0;
  int storeStickCount = 0;
  float chestPlaceTimer = 0;
  PImage exit1;
  PImage exit2;
  float storeRetreiveTimer = 0;
  int storeArrowCount = 0;
  int storeRetreiveType = 0;
  int storeIronCount = 0;
  int storeStoneAxeCount = 0;
  int storeStonePickCount = 0;
  int storeRetreive = 0;
  int storeIronOreCount   = 0;
  int  storeRockCount  = 0;
  int   storeCoalCount = 0;
  int   storeRedBudCount = 0;
  int   storeBaconCount = 0;
  int    storePickCount = 0;
  int   storeCookedBaconCount = 0;
  int   storeAxeCount = 0;
  int   storeBandageCount = 0;
  int  storeDoorCount = 0;
  int   storeIronAxeCount = 0;
  int      storeStairLeftCount = 0;
  int   storeCobbleStoneCount = 0;
  int  storeStairRightCount = 0;
  int  storeCampFireCount = 0;
  int   storeFurnaceCount  = 0;
  int  storeIronPickCount = 0;
  int   storeChestCount = 0;
  int  storePlankCount = 0;
  int storeWoodSwordCount = 0;
  int storeStoneSwordCount = 0;
  int storeTreeCount = 0;
  int slot5 = 0;
  int slot6 = 0;
  int slot7 = 0;
  int slot8 = 0;
  int slot9 = 0;
  int slot10 = 0;
  int slot11 = 0;
  int slot12 = 0;
  int itemX = 0;
  int itemY = 0;
  PImage CobbleStone;
  PImage StonePick;
  PImage CampFire;

  PImage StoneAxe;
  PImage Bandage;
  PImage Furnace;
  PImage Stone;




  PImage Rock;
  PImage RedBud;


  PImage Arrow;


  PImage Axe;

  PImage IronPick;



  PImage IronAxe;







  PImage Door;


  PImage Plank;
  PImage Check;

  PImage Pick;




  PImage StairRight;
  PImage StairLeft;




  float placeTimer = 0;
  int chestMenu = 0;

  int cookBaconCount = 0;
  int cookedBaconCountC = 0;
  int burn = 0;
  float cookType2 = 0;
  float furnaceMenu = 0; 
  float fuelType2 = 0;
  PImage Iron;
  PImage cF1;
  int cookIronCount = 0;
  PImage Chest;
  PImage chest2;
  float recoverFuel = 0;
  float fuelRecoverTimer = 0;
  PImage chestMenu1;
  PImage cF2;
  float cookRecoverTimer = 0;
  float cookRecover = 0;
  PImage cF3;
  float jumpHert = 0;
  float cookTimer3 = 0;
  PImage CookedBacon;
  int cookIronOreCount = 0;
  int fuelStickCount = 0;
  int fuelCoalCount = 0;
  PImage IronOre;
  float cook = 0;
  float getCooks = 0;
  float retreiveTimer = 0;
  float cookTimer4 = 0;
  float campFireMenu = 0;
  float cookSlot2 = 0;
  PImage tree;
  float fuelSlot2 = 0;
  float one = 0;
  PImage furnaceMenu1;
  PImage furnaceMenu2;
  PImage furnaceMenu3;
  float two = 0;
  float blockType = 0;
  float three = 0;
  float four = 0;
  float fuelTimer = 0;
  float five = 0;
  float six = 0;
  float seven = 0;
  float eight = 0;
  float nine = 0;
  float ten = 0;
  float eleven = 0;
  float twelve = 0;
  PImage campFireMenu1;
  PImage campFireMenu2;
  PImage campFireMenu3;
  PImage stick;
  PImage Coal;
  PImage Bacon;
  float cooking = 0;
  PImage furnace1;
  PImage furnace2;
  PImage furnace3;
  CampFire(float x)
  {
    super(x);
    current = 0;
    direction = 0;
  }

  void setup()
  {
    cF1 = loadImage ("campFire1.png");
    cF2 = loadImage ("campFire2.png");
    cF3 = loadImage ("campFire3.png");
    Bacon = loadImage ("Bacon.png");
    chestMenu1 = loadImage ("chestMenu1.png");
    campFireMenu1 = loadImage ("campFireMenu1.png");
    CookedBacon = loadImage ("BaconCooked.png");
    CampFire = loadImage ("campFire.png");
    exit1 = loadImage ("exitCampFire1.png");
    exit2 = loadImage ("exitCampFire2.png");
    campFireMenu2 = loadImage ("campFireMenu2.png");
    campFireMenu3 = loadImage ("campFireMenu3.png");
    furnaceMenu1 = loadImage ("furnaceMenu1.png");
    IronOre = loadImage ("ironOre.png");
    furnaceMenu2 = loadImage ("furnaceMenu2.png");
    furnaceMenu3 = loadImage ("furnaceMenu3.png");
    furnace1 = loadImage ("furnace1.png");
    Chest = loadImage ("chest1.png");
    chest2 = loadImage ("chest2.png");
    Needle = loadImage ("cactusNeedles.png");
    furnace2 = loadImage ("furnace1.2.png");
    furnace3 = loadImage ("furnace1.3.png");
    Iron = loadImage ("IronIgnot.png");
    stick = loadImage ("stick1.png");
    Coal = loadImage ("coal.png");
    IronOre = loadImage ("ironOre.png");

    StairRight = loadImage ("stairRight.png");
    StairLeft = loadImage ("stairLeft.png");

    Plank = loadImage ("plank.png");

    Bandage = loadImage ("bandage.png");
    Axe = loadImage ("woodAxe.png");
    Pick = loadImage ("woodPick.png");
    tree = loadImage ("Wood.png");

    Rock = loadImage ("rock1.png");
    Arrow = loadImage ("Arrow.png");

    IronPick = loadImage ("ironPick.png");
    Door = loadImage ("DoorPlace.png");



    CobbleStone = loadImage ("cobbleStone.png");

    StoneAxe = loadImage ("stoneAxe.png");
    StonePick = loadImage ("stonePick.png");
    Furnace = loadImage ("furnace1.png");
    IronAxe = loadImage ("ironAxe.png");
    RedBud = loadImage ("redBud.png");
  }
  void draw()
  {
    if (x == 1)
    {
      one = 1;
    }
    if (x == 2)
    {
      two = 1;
    }
    if (x == 3)
    {
      three = 1;
    }
    if ( x == 4)
    {
      four = 1;
    }
    if (x == 5)
    {
      five = 1;
    }
    if (x == 6)
    {
      six = 1;
    }
    if (x == 7)
    {
      seven = 1;
    }
    if (x == 8)
    {
      eight = 1;
    }
    if ( x== 9)
    {
      nine = 1;
    }
    if ( x== 10)
    {
      ten = 1;
    }
    if ( x== 11)
    {
      eleven = 1;
    }
    if (x ==12)
    {
      twelve = 1;
    }

    if (jump == 1 && freezeJump0 == 0)
    {
      noPlace = 1;
    }
    else
    {
      noPlace = 0;
    }
    if (placeGo >= 1 && placed == 0)
    {
      placeTimer = placeTimer + 1;

      woodTimer = 0;
      if (placeTimer == 2)
      {
        if (noPlace == 0)
        {
          if (placeCount2 == 1 && one == 1 ||placeCount2 == 2 && two == 1 || placeCount2 == 3 && three == 1 || placeCount2 == 4 && four == 1 || placeCount2 == 5 && five == 1 || placeCount2 == 6 && six == 1 || placeCount2 == 7 && seven == 1 || placeCount2 == 8 && eight == 1 || placeCount2 == 9 && nine == 1 || placeCount2== 10 && ten== 1 ||placeCount2 == 11 && eleven == 1 || placeCount2 == 12 && twelve == 1 )
          {
            x =  borderLeft + 940;
            y = characterY - 150;
            direction = 0;
            jumpHert = jumpHeight;
            if (placeGo == 1)
            {
              campFireCount = campFireCount - 1;
              blockType = 1;
            }
            if (placeGo == 2)
            {
              furnaceCount = furnaceCount - 1;
              blockType = 2;
            }
            if (placeGo == 3)
            {
              chestCount = chestCount - 1;
              blockType = 3;
            }

            placed = 1;
          }
        }
      }

      if (placeTimer == 20)
      {

        placeGo = 0;
        placeTimer = 0;
      }
    }
    if (placed == 1)
    {
      placeTimer3 = placeTimer3 + 1;
      if (placeTimer3 == 3)
      {
        placeCount2 = placeCount2 + 1;
      }
    }


    float x = xPos();
    float y = yPos();
    current += direction;
    x += current;
    y -= 26 + jumpHert; 
    if (placed == 1)
    {
      if (mouseX > x && mouseX < x + 30 && mouseY > y && mouseY < y + 30)
      {
        if (mousePressed && campFireMenu == 0 && width/2 < x + 100 && width/2 > x - 100 && blockType == 1 && fm == 0 && cm == 0 && cfm == 0)
        {
          campFireMenu = 1;
          cfm = 1;
        }
      }
      if (mouseX > x && mouseX < x + 30 && mouseY > y && mouseY < y + 30)
      {
        if (mousePressed && campFireMenu == 0 && width/2 < x + 100 && width/2 > x - 100 && blockType == 2 && cfm == 0 && cm == 0 && fm == 0)
        {
          furnaceMenu = 1;
          fm = 1;
        }
      }
      if (mouseX > x && mouseX < x + 30 && mouseY > y && mouseY < y + 30)
      {
        if (mousePressed && chestMenu == 0 && width/2 < x + 100 && width/2 > x - 100 && blockType == 3 && cfm == 0 && cm == 0 && fm == 0)
        {
          chestMenu = 1;
          cm = 1;
        }
      }
      if (width/2 > x + 100 && width/2 < x +110 || width/2 < x - 100 && width/2 > x - 110)
      {
        campFireMenu = 0;
        cfm = 0;
        furnaceMenu = 0;
        chestMenu = 0;
        cm = 0;
        fm = 0;
        cfm = 0;
      }
      if (campFireMenu == 1)
      {
        if (cook == 0)
        {
          image (campFireMenu1, 800, 500);
        }
      }
      if (furnaceMenu == 1)
      {
        if (cook == 0)
        {
          image (furnaceMenu1, 800, 500);
        }
      }
      if (fuelSlot2 == 1 && cookSlot2 == 1 || cookTimer3 > 2)
      {
        burn = 1;
        cookTimer4 = cookTimer4 + 1;
        cookTimer3 = cookTimer3 + 1;

        if (cookTimer3 == 6)
        {
          if (fuelType2 == 1)
          {
            fuelStickCount = fuelStickCount - 1;
          }
          if (fuelType2 == 2)
          {
            fuelCoalCount = fuelCoalCount - 1;
          }
          if (cookType2 == 1)
          {
            cookBaconCount = cookBaconCount - 1;
          }
          if (cookType2 == 2)
          {
            cookIronOreCount = cookIronOreCount - 1;
          }
        }
        if (cookType2 == 1 && cookTimer3 ==3000)
        {
          cookedBaconCountC = cookedBaconCountC + 1;
        }
        if (cookType2 == 2 && cookTimer3 == 3000)
        {
          cookIronCount = cookIronCount + 1;
        }
        if (cookTimer3 == 3010)
        {
          cookTimer3 = 0;
        }


        if (campFireMenu == 1)
        {
          if (cookTimer4 < 10)
          {
            image (campFireMenu2, 800, 500);
          }
          else
          {
            image (campFireMenu3, 800, 500);
          }
        }
        if (furnaceMenu == 1)
        {
          if (cookTimer4 < 10)
          {
            image (furnaceMenu2, 800, 500);
          }
          else
          {
            image (furnaceMenu3, 800, 500);
          }
        }
        if (cookTimer4 > 20 )
        {
          cookTimer4 = 0;
        }
      }
      else 
      {
        cook = 0;
        burn = 0;
      }






      if (cookSlot == 1 && campFireMenu == 1|| cookSlot == 1 &&furnaceMenu == 1)
      {
        cookTimer5 = cookTimer5 + 1;
        if (cookTimer5 == 2)
        {
          if (cookType == 1)
          {
            cookBaconCount = baconCount;
          }
          if (cookType == 2)
          {
            cookIronOreCount = ironOreCount;
          }
          if (campFireMenu == 1 || furnaceMenu == 1)
          {
            cookType2 = cookType;
            cookSlot2 = 1;
          }
        }
        if (cookTimer5 == 4)
        {
          if (cookType == 1)
          {
            baconCount = 0;
          }
          if (cookType == 2)
          {
            ironOreCount = 0;
          }
          cookType = 0;
          cookSlot = 0;
          cookTimer5 = 0;
        }
      }
      if (cookType2 == 1 && campFireMenu == 1 && cookBaconCount >= 1 && cookSlot2 == 1)
      {
        fill (0, 225, 0);
        textSize (20);
        image (Bacon, 990, 575);
        text (cookBaconCount, 1010, 585);
      }
      if (cookType2 == 2 && furnaceMenu == 1 && cookIronOreCount >= 1 && cookSlot2 == 1)
      {
        fill (0, 225, 0);
        textSize (20);
        image (IronOre, 990, 575);
        text (cookIronOreCount, 1010, 585);
      }
      if (mouseX > 990 && mouseX < 1020 && mouseY > 575 && mouseY < 615 && campFireMenu == 1 || mouseX > 990 && mouseX < 1020 && mouseY > 575 && mouseY < 615 && furnaceMenu == 1)
      {
        if (mousePressed)
        {
          cookRecover = 1;
        }
      }
      if (cookRecover == 1)
      {
        cookRecoverTimer = cookRecoverTimer + 1;
        if (cookRecoverTimer == 2)
        {
          if (cookBaconCount >= 1)
          {
            baconCount = cookBaconCount + baconCount;
          }
          if (cookIronOreCount >= 1)
          {
            ironOreCount = cookIronOreCount + ironOreCount;
          }
        }
        if (cookRecoverTimer == 4)
        {
          if (cookBaconCount >=1)
          {
            cookBaconCount = 0;
          }
          if (cookIronOreCount >= 1)
          {
            cookIronOreCount = 0;
          }
          cookSlot2 = 0;
        }
        if (cookRecoverTimer == 6)
        {
          cookRecoverTimer = 0;
          cookRecover = 0;
          cookSlot = 0;
        }
      }
      if (cookedBaconCountC >= 1 && campFireMenu == 1)
      {
        fill (0, 225, 0);
        textSize (20);
        image (CookedBacon, 840, 570);
        text (cookedBaconCountC, 860, 600);
        if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600)
        {
          if (mousePressed)
          {
            getCooks = 1;
          }
        }
      }
      if (cookIronCount >= 1 && furnaceMenu == 1)
      {
        fill (0, 225, 0);
        textSize (20);
        image (Iron, 840, 570);
        text (cookIronCount, 860, 600);
        if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600)
        {
          if (mousePressed)
          {
            getCooks = 1;
          }
        }
      }
      if (getCooks == 1)
      {
        retreiveTimer = retreiveTimer + 1;
        if (retreiveTimer == 2)
        {
          if (cookedBaconCountC >= 1)
          {
            cookedBaconCount = cookedBaconCountC + cookedBaconCount;
          }
          if (cookIronCount >= 1)
          {
            ironCount = cookIronCount + ironCount;
          }
        }

        if (retreiveTimer == 4)
        {
          if (cookedBaconCountC >= 1)
          {
            cookedBaconCountC = 0;
          }
          if (cookIronCount >= 1)
          {
            cookIronCount = 0;
          }
        }
        if (retreiveTimer == 6)
        {
          retreiveTimer = 0;
          getCooks = 0;
        }
      }
      if (fuelSlot == 1 && campFireMenu == 1 || fuelSlot == 1 && furnaceMenu == 1)
      {
        fuelTimer = fuelTimer+ 1;
        if (fuelTimer == 2)
        {
          if (fuelType == 1)
          {
            fuelStickCount = stickCount;
          }
          if (fuelType == 2)
          {
            fuelCoalCount = coalCount ;
          }
          if (campFireMenu == 1 || furnaceMenu == 1)
          {
            fuelType2 = fuelType;
          }
          fuelSlot2 = 1;
        }
        if (fuelTimer == 4)
        {
          if (fuelType == 1)
          {
            stickCount = 0;
          }
          if (fuelType == 2)
          {
            coalCount = 0;
          }
        }
        if (fuelTimer == 6)
        {
          fuelSlot = 0;
          fuelType = 0;
        }
      }
      if (fuelSlot2 == 1)
      {
        if (fuelType2 == 1 && campFireMenu == 1 && fuelStickCount >= 1)
        {
          image (stick, 990, 665);
          fill (0, 225, 0);
          textSize (20);
          text (fuelStickCount, 1025, 675);
        }
        if (fuelType2 == 2 && campFireMenu == 1 && fuelCoalCount >= 1 || fuelType2 == 2 && furnaceMenu == 1 && fuelCoalCount >= 1 )
        {
          image (Coal, 990, 665);
          fill (0, 225, 0);
          textSize (20);
          text (fuelCoalCount, 1025, 675);
        }
        if (fuelType2 == 1 && fuelStickCount < .5)
        {
          fuelSlot2 = 0;
        }
        if (fuelType2 == 2 && fuelCoalCount < .5)
        {
          fuelSlot2 = 0;
        }
        if (cookType == 1 && cookBaconCount < .5)
        {
          cookSlot2 = 0;
        }
        if (mouseX > 990 && mouseX < 1010 && mouseY > 665 && mouseY < 695 && campFireMenu == 1 || mouseX > 990 && mouseX < 1010 && mouseY > 665 && mouseY < 695 && furnaceMenu == 1)
        {
          if (mousePressed)
          {
            recoverFuel = 1;
          }
        }
      }


      if (recoverFuel == 1 && campFireMenu == 1 || recoverFuel == 1 && furnaceMenu == 1 )
      {
        fuelRecoverTimer = fuelRecoverTimer + 1;
        if (fuelRecoverTimer == 2)
        {
          if (fuelType2 == 1)
          {
            stickCount = fuelStickCount + stickCount;
          }
          if (fuelType2 == 2)
          {
            coalCount = fuelCoalCount + coalCount;
          }
        }

        if (fuelRecoverTimer == 4)
        {
          if (fuelType2 == 1)
          {
            fuelStickCount = 0;
          }
          if (fuelType2 == 2)
          {
            fuelCoalCount = 0;
          }
          fuelSlot2 = 0;
          fuelTimer = 0;
          fuelType2 = 0;
        }
        if (fuelRecoverTimer == 6)
        {
          fuelRecoverTimer = 0;
          recoverFuel = 0;
        }
      }
      if (burn == 0 && blockType == 1)
      {
        image (CampFire, x, y);
      }
      if (burn == 0 && blockType == 2)
      {
        image (furnace1, x, y);
      }
      if (burn == 1)
      {
        fireTimer = fireTimer + 1;
      }
      if (blockType == 2 && burn == 1)
      {
        if (fireTimer < 15)
        {
          image (furnace2, x, y);
        }
        if (fireTimer >= 15)
        {
          image (furnace3, x, y);
        }
      }
      if (blockType == 1 && burn == 1)
      {
        if (fireTimer < 10)
        {
          image (cF1, x, y);
        }
        if (fireTimer >= 10 && fireTimer < 20)
        {
          image (cF2, x, y);
        }
        if (fireTimer >= 20)
        {
          image (cF3, x, y);
        }
      }
      if (fireTimer > 30)
      {
        fireTimer = 0;
      }
      if (chestMenu == 1)
      {
        image (chestMenu1, 800, 500);
      }
      if (blockType == 3 && chestMenu == 0)
      {
        image (Chest, x, y);
      }
      if (blockType == 3 && chestMenu == 1)
      {
        image (chest2, x, y - 15);
      }
      if (campFireMenu == 1 || furnaceMenu == 1 || chestMenu == 1)
      {
        if (mouseX > 814 && mouseX < 875 && mouseY > 510 && mouseY < 540)
        {
          image (exit2, 800, 500);
          if (mousePressed)
          {
            campFireMenu = 0;
            furnaceMenu = 0;
            chestMenu = 0;
            cm = 0;
            fm = 0;
            cfm = 0;
          }
        }
        else
        {
          image (exit1, 800, 500);
        }
      }
    
  
 
      
    
  
      if (chestPlace == 1 && chestMenu == 1)
      {
        chestPlaceTimer = chestPlaceTimer + 1;
        if (chestPlaceTimer == 2)
        {
          if (storeType == 1)
          {
            storeStickCount = stickCount;
          }
          if (storeType == 2)
          {
            storeArrowCount = arrowCount;
          }
          if (storeType == 3)
          {
            storeIronCount = ironCount;
          }
          if (storeType == 4)
          {
            storeStoneAxeCount = stoneAxeCount;
          }
          if (storeType == 5)
          {
            storeStonePickCount = stonePickCount;
          }
          if (storeType == 6)
          {
            storeIronOreCount = ironOreCount;
          }
          if (storeType == 7)
          {
            storeRockCount = rockCount;
          }
          if (storeType == 8)
          {
            storeCoalCount = coalCount;
          }
          if (storeType == 9)
          {
            storeRedBudCount = redBudCount;
          }
          if (storeType == 10)
          {
            storeBaconCount = baconCount;
          }
          if (storeType == 11)
          {
            storePickCount = pickCount;
          }
          if (storeType == 12)
          {
            storeCookedBaconCount = cookedBaconCount;
          }
          if (storeType == 13)
          {
            storeAxeCount = axeCount;
          }
          if (storeType == 14)
          {
            storeBandageCount = bandageCount;
          }
          if (storeType == 15)
          {
            storeDoorCount = round(doorCount);
          }
          if (storeType == 16)
          {
            storeIronAxeCount = ironAxeCount;
          }
          if (storeType == 17)
          {
            storeStairLeftCount = stairLeftCount;
          }
          if (storeType == 18)
          {
            storeCobbleStoneCount = cobbleStoneCount;
          }
          if (storeType == 19)
          {
            storeStairRightCount = stairRightCount;
          }
          if (storeType == 20)
          {
            storeCampFireCount = campFireCount;
          }
          if (storeType == 21)
          {
            storeFurnaceCount = furnaceCount;
          }
          if (storeType == 22)
          {
            storeIronPickCount = ironPickCount;
          }
          if (storeType == 23)
          {
            storeChestCount = chestCount;
          }
          if (storeType == 24)
          {
            storePlankCount = plankCount;
          }
          if (storeType == 25)
          {
            storetreeCount = treeCount;
          }
          if (storeType == 26)
          {
            storeNeedleCount = needleCount;
          }
          if (storeType == 27)
          {
            storeStoneSwordCount = stoneSwordCount;
          }
          if (storeType == 28)
          {
            storeWoodSwordCount = woodSwordCount;
          }
        }
        if (chestPlaceTimer == 4)
        {
          if (storeType == 1)
          {
            stickCount = 0;
          }
          if (storeType == 2)
          {
            arrowCount= 0;
          }
          if (storeType == 3)
          {
            ironCount= 0;
          }
          if (storeType == 4)
          {
            stoneAxeCount= 0;
          }
          if (storeType == 5)
          {
            stonePickCount= 0;
          }
          if (storeType == 6)
          {
            ironOreCount= 0;
          }
          if (storeType == 7)
          {
            rockCount= 0;
          }
          if (storeType == 8)
          {
            coalCount= 0;
          }
          if (storeType == 9)
          {
            redBudCount= 0;
          }
          if (storeType == 10)
          {
            baconCount= 0;
          }
          if (storeType == 11)
          {
            pickCount= 0;
          }
          if (storeType == 12)
          {
            cookedBaconCount= 0;
          }
          if (storeType == 13)
          {
            axeCount= 0;
          }
          if (storeType == 14)
          {
            bandageCount= 0;
          }
          if (storeType == 15)
          {
            doorCount= 0;
          }
          if (storeType == 16)
          {
            ironAxeCount= 0;
          }
          if (storeType == 17)
          {
            stairLeftCount= 0;
          }
          if (storeType == 18)
          {
            cobbleStoneCount= 0;
          }
          if (storeType == 19)
          {
            stairRightCount= 0;
          }
          if (storeType == 20)
          {
            campFireCount= 0;
          }
          if (storeType == 21)
          {
            furnaceCount= 0;
          }
          if (storeType == 22)
          {
            ironPickCount= 0;
          }
          if (storeType == 23)
          {
            chestCount = 0;
          }
          if (storeType == 24)
          {
            plankCount = 0;
          }
          if (storeType == 25)
          {
            treeCount = 0;
          }
          if (storeType == 26)
          {
            needleCount = 0;
          }
          if (storeType == 27)
          {
            stoneSwordCount = 0;
          }
          if (storeType == 28)
          {
            woodSwordCount = 0;
          }
        }
        if (chestPlaceTimer == 6)
        {
          storeType = 0;
          chestPlace = 0;
          chestPlaceTimer = 0;
        }
      }
      fill (255);
      if (chestMenu == 1)
      {
        rect (838, 568, 34, 34);
        rect (895, 568, 34, 34);
        rect (951, 568, 34, 34);
        rect (1012, 568, 34, 34);
        rect (1065, 568, 34, 34);
        rect (1124, 568, 34, 34);
        rect (838, 621, 34, 34);
        rect (893, 623, 34, 34);
        rect (951, 623, 34, 34);
        rect (1012, 623, 34, 34);
        rect (1068, 623, 34, 34);
        rect (1124, 623, 34, 34);
      }
      fill (0, 225, 0);
      if (chestMenu == 1)
      {
        if (storeStickCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (stick, 840, 570);
            text(storeStickCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (stick, 897, 570);
            text(storeStickCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (stick, 953, 570);
            text(storeStickCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (stick, 1014, 570);
            text(storeStickCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (stick, 1067, 570);
            text(storeStickCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (stick, 1126, 570);
            text(storeStickCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (stick, 840, 623);
            text(storeStickCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (stick, 895, 625);
            text(storeStickCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (stick, 953, 625);
            text(storeStickCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (stick, 1014, 625);
            text(storeStickCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (stick, 1070, 625);
            text(storeStickCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (stick, 1126, 625);
            text(storeStickCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 1;
              storeRetreive = 1;
            }
          }
          else
          {
          }
        }
       
        if (storeArrowCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Arrow, 840, 570);
            text(storeArrowCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Arrow, 897, 570);
            text(storeArrowCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Arrow, 953, 570);
            text(storeArrowCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Arrow, 1014, 570);
            text(storeArrowCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Arrow, 1067, 570);
            text(storeArrowCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Arrow, 1126, 570);
            text(storeArrowCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Arrow, 840, 623);
            text(storeArrowCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Arrow, 895, 625);
            text(storeArrowCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Arrow, 953, 625);
            text(storeArrowCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Arrow, 1014, 625);
            text(storeArrowCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Arrow, 1070, 625);
            text(storeArrowCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Arrow, 1126, 625);
            text(storeArrowCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 2;
              storeRetreive = 1;
            }
          }
          else
          {
          }
        }
        if (storeIronCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Iron, 840, 570);
            text(storeIronCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Iron, 897, 570);
            text(storeIronCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Iron, 953, 570);
            text(storeIronCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Iron, 1014, 570);
            text(storeIronCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Iron, 1067, 570);
            text(storeIronCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Iron, 1126, 570);
            text(storeIronCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Iron, 840, 623);
            text(storeIronCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Iron, 895, 625);
            text(storeIronCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Iron, 953, 625);
            text(storeIronCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Iron, 1014, 625);
            text(storeIronCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Iron, 1070, 625);
            text(storeIronCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Iron, 1126, 625);
            text(storeIronCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 3;
              storeRetreive = 1;
            }
          }
          else
          {
          }
        }
        if(storeWoodSwordCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (WoodSword, 840, 570);
            text(storeWoodSwordCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (WoodSword, 897, 570);
            text(storeWoodSwordCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (WoodSword, 953, 570);
            text(storeWoodSwordCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (WoodSword, 1014, 570);
            text(storeWoodSwordCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (WoodSword, 1067, 570);
            text(storeWoodSwordCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (WoodSword, 1126, 570);
            text(storeWoodSwordCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (WoodSword, 840, 623);
            text(storeWoodSwordCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (WoodSword, 895, 625);
            text(storeWoodSwordCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (WoodSword, 953, 625);
            text(storeWoodSwordCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (WoodSword, 1014, 625);
            text(storeWoodSwordCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (WoodSword, 1070, 625);
            text(storeWoodSwordCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (WoodSword, 1126, 625);
            text(storeWoodSwordCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 28;
              storeRetreive = 1;
            }
          }
          else
          {
          }
        } 
        if (storeStoneSwordCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (StoneSword, 840, 570);
            text(storeStoneSwordCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (StoneSword, 897, 570);
            text(storeStoneSwordCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (StoneSword, 953, 570);
            text(storeStoneSwordCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (StoneSword, 1014, 570);
            text(storeStoneSwordCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (StoneSword, 1067, 570);
            text(storeStoneSwordCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (StoneSword, 1126, 570);
            text(storeStoneSwordCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (StoneSword, 840, 623);
            text(storeStoneSwordCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (StoneSword, 895, 625);
            text(storeStoneSwordCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (StoneSword, 953, 625);
            text(storeStoneSwordCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (StoneSword, 1014, 625);
            text(storeStoneSwordCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (StoneSword, 1070, 625);
            text(storeStoneSwordCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (StoneSword, 1126, 625);
            text(storeStoneSwordCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 27;
              storeRetreive = 1;
            }
          }
          else
          {
          }
        }
        if (storetreeCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (tree, 840, 570);
            text(storetreeCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (tree, 897, 570);
            text(storetreeCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (tree, 953, 570);
            text(storetreeCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (tree, 1014, 570);
            text(storetreeCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (tree, 1067, 570);
            text(storetreeCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (tree, 1126, 570);
            text(storetreeCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (tree, 840, 623);
            text(storetreeCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (tree, 895, 625);
            text(storetreeCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (tree, 953, 625);
            text(storetreeCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (tree, 1014, 625);
            text(storetreeCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (tree, 1070, 625);
            text(storetreeCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (tree, 1126, 625);
            text(storetreeCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 25;
              storeRetreive = 1;
            }
          }
          else
          {
          }
        }
        if (storeStoneAxeCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (StoneAxe, 840, 570);
            text(storeStoneAxeCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (StoneAxe, 897, 570);
            text(storeStoneAxeCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (StoneAxe, 953, 570);
            text(storeStoneAxeCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (StoneAxe, 1014, 570);
            text(storeStoneAxeCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (StoneAxe, 1067, 570);
            text(storeStoneAxeCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (StoneAxe, 1126, 570);
            text(storeStoneAxeCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (StoneAxe, 840, 623);
            text(storeStoneAxeCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (StoneAxe, 895, 625);
            text(storeStoneAxeCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (StoneAxe, 953, 625);
            text(storeStoneAxeCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (StoneAxe, 1014, 625);
            text(storeStoneAxeCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (StoneAxe, 1070, 625);
            text(storeStoneAxeCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (StoneAxe, 1126, 625);
            text(storeStoneAxeCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 4;
              storeRetreive = 1;
            }
          }
          else
          {
          }
        }
        if (storeNeedleCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Needle, 840, 570);
            text(storeNeedleCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Needle, 897, 570);
            text(storeNeedleCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Needle, 953, 570);
            text(storeNeedleCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Needle, 1014, 570);
            text(storeNeedleCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Needle, 1067, 570);
            text(storeNeedleCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Needle, 1126, 570);
            text(storeNeedleCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Needle, 840, 623);
            text(storeNeedleCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Needle, 895, 625);
            text(storeNeedleCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Needle, 953, 625);
            text(storeNeedleCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Needle, 1014, 625);
            text(storeNeedleCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Needle, 1070, 625);
            text(storeNeedleCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Needle, 1126, 625);
            text(storeNeedleCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 26;
              storeRetreive = 1;
            }
          }
          else
          {
          }
        }
        if (storeStonePickCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (StonePick, 840, 570);
            text(storeStonePickCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (StonePick, 897, 570);
            text(storeStonePickCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (StonePick, 953, 570);
            text(storeStonePickCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (StonePick, 1014, 570);
            text(storeStonePickCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (StonePick, 1067, 570);
            text(storeStonePickCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (StonePick, 1126, 570);
            text(storeStonePickCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (StonePick, 840, 623);
            text(storeStonePickCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (StonePick, 895, 625);
            text(storeStonePickCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (StonePick, 953, 625);
            text(storeStonePickCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (StonePick, 1014, 625);
            text(storeStonePickCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (StonePick, 1070, 625);
            text(storeStonePickCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (StonePick, 1126, 625);
            text(storeStonePickCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 5;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeIronOreCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (IronOre, 840, 570);
            text(storeIronOreCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (IronOre, 897, 570);
            text(storeIronOreCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (IronOre, 953, 570);
            text(storeIronOreCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (IronOre, 1014, 570);
            text(storeIronOreCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (IronOre, 1067, 570);
            text(storeIronOreCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (IronOre, 1126, 570);
            text(storeIronOreCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (IronOre, 840, 623);
            text(storeIronOreCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (IronOre, 895, 625);
            text(storeIronOreCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (IronOre, 953, 625);
            text(storeIronOreCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (IronOre, 1014, 625);
            text(storeIronOreCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (IronOre, 1070, 625);
            text(storeIronOreCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (IronOre, 1126, 625);
            text(storeIronOreCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 6;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeRockCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Rock, 840, 570);
            text(storeRockCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Rock, 897, 570);
            text(storeRockCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Rock, 953, 570);
            text(storeRockCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Rock, 1014, 570);
            text(storeRockCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Rock, 1067, 570);
            text(storeRockCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Rock, 1126, 570);
            text(storeRockCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Rock, 840, 623);
            text(storeRockCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Rock, 895, 625);
            text(storeRockCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Rock, 953, 625);
            text(storeRockCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Rock, 1014, 625);
            text(storeRockCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Rock, 1070, 625);
            text(storeRockCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Rock, 1126, 625);
            text(storeRockCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 7;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeCoalCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Coal, 840, 570);
            text(storeCoalCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Coal, 897, 570);
            text(storeCoalCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Coal, 953, 570);
            text(storeCoalCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Coal, 1014, 570);
            text(storeCoalCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Coal, 1067, 570);
            text(storeCoalCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Coal, 1126, 570);
            text(storeCoalCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Coal, 840, 623);
            text(storeCoalCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Coal, 895, 625);
            text(storeCoalCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Coal, 953, 625);
            text(storeCoalCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Coal, 1014, 625);
            text(storeCoalCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Coal, 1070, 625);
            text(storeCoalCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Coal, 1126, 625);
            text(storeCoalCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 8;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeRedBudCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (RedBud, 840, 570);
            text(storeRedBudCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (RedBud, 897, 570);
            text(storeRedBudCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (RedBud, 953, 570);
            text(storeRedBudCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (RedBud, 1014, 570);
            text(storeRedBudCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (RedBud, 1067, 570);
            text(storeRedBudCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (RedBud, 1126, 570);
            text(storeRedBudCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (RedBud, 840, 623);
            text(storeRedBudCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (RedBud, 895, 625);
            text(storeRedBudCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (RedBud, 953, 625);
            text(storeRedBudCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (RedBud, 1014, 625);
            text(storeRedBudCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (RedBud, 1070, 625);
            text(storeRedBudCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (RedBud, 1126, 625);
            text(storeRedBudCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 9;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeBaconCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Bacon, 840, 570);
            text(storeBaconCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Bacon, 897, 570);
            text(storeBaconCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Bacon, 953, 570);
            text(storeBaconCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Bacon, 1014, 570);
            text(storeBaconCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Bacon, 1067, 570);
            text(storeBaconCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Bacon, 1126, 570);
            text(storeBaconCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Bacon, 840, 623);
            text(storeBaconCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Bacon, 895, 625);
            text(storeBaconCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Bacon, 953, 625);
            text(storeBaconCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Bacon, 1014, 625);
            text(storeBaconCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Bacon, 1070, 625);
            text(storeBaconCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Bacon, 1126, 625);
            text(storeBaconCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 10;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storePickCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Pick, 840, 570);
            text(storePickCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Pick, 897, 570);
            text(storePickCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Pick, 953, 570);
            text(storePickCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Pick, 1014, 570);
            text(storePickCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Pick, 1067, 570);
            text(storePickCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Pick, 1126, 570);
            text(storePickCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Pick, 840, 623);
            text(storePickCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Pick, 895, 625);
            text(storePickCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Pick, 953, 625);
            text(storePickCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Pick, 1014, 625);
            text(storePickCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Pick, 1070, 625);
            text(storePickCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Pick, 1126, 625);
            text(storePickCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 11;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeCookedBaconCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (CookedBacon, 840, 570);
            text(storeCookedBaconCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (CookedBacon, 897, 570);
            text(storeCookedBaconCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (CookedBacon, 953, 570);
            text(storeCookedBaconCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (CookedBacon, 1014, 570);
            text(storeCookedBaconCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (CookedBacon, 1067, 570);
            text(storeCookedBaconCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (CookedBacon, 1126, 570);
            text(storeCookedBaconCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (CookedBacon, 840, 623);
            text(storeCookedBaconCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (CookedBacon, 895, 625);
            text(storeCookedBaconCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (CookedBacon, 953, 625);
            text(storeCookedBaconCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (CookedBacon, 1014, 625);
            text(storeCookedBaconCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (CookedBacon, 1070, 625);
            text(storeCookedBaconCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (CookedBacon, 1126, 625);
            text(storeCookedBaconCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 12;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        
        if (storeBandageCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Bandage, 840, 570);
            text(storeBandageCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Bandage, 897, 570);
            text(storeBandageCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Bandage, 953, 570);
            text(storeBandageCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Bandage, 1014, 570);
            text(storeBandageCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Bandage, 1067, 570);
            text(storeBandageCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Bandage, 1126, 570);
            text(storeBandageCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Bandage, 840, 623);
            text(storeBandageCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Bandage, 895, 625);
            text(storeBandageCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Bandage, 953, 625);
            text(storeBandageCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Bandage, 1014, 625);
            text(storeBandageCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Bandage, 1070, 625);
            text(storeBandageCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Bandage, 1126, 625);
            text(storeBandageCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 14;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeDoorCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Door, 840, 570);
            text(storeDoorCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Door, 897, 570);
            text(storeDoorCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Door, 953, 570);
            text(storeDoorCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Door, 1014, 570);
            text(storeDoorCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Door, 1067, 570);
            text(storeDoorCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Door, 1126, 570);
            text(storeDoorCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Door, 840, 623);
            text(storeDoorCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Door, 895, 625);
            text(storeDoorCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Door, 953, 625);
            text(storeDoorCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Door, 1014, 625);
            text(storeDoorCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Door, 1070, 625);
            text(storeDoorCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Door, 1126, 625);
            text(storeDoorCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 15;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeIronAxeCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (IronAxe, 840, 570);
            text(storeIronAxeCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (IronAxe, 897, 570);
            text(storeIronAxeCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (IronAxe, 953, 570);
            text(storeIronAxeCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (IronAxe, 1014, 570);
            text(storeIronAxeCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (IronAxe, 1067, 570);
            text(storeIronAxeCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (IronAxe, 1126, 570);
            text(storeIronAxeCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (IronAxe, 840, 623);
            text(storeIronAxeCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (IronAxe, 895, 625);
            text(storeIronAxeCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (IronAxe, 953, 625);
            text(storeIronAxeCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (IronAxe, 1014, 625);
            text(storeIronAxeCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (IronAxe, 1070, 625);
            text(storeIronAxeCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (IronAxe, 1126, 625);
            text(storeIronAxeCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 16;
              storeRetreive = 1;
            }
          }
          else
          {
            // IronAxe
          }
        }
        if (storeStairLeftCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (StairLeft, 840, 570);
            text(storeStairLeftCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (StairLeft, 897, 570);
            text(storeStairLeftCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (StairLeft, 953, 570);
            text(storeStairLeftCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (StairLeft, 1014, 570);
            text(storeStairLeftCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (StairLeft, 1067, 570);
            text(storeStairLeftCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (StairLeft, 1126, 570);
            text(storeStairLeftCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (StairLeft, 840, 623);
            text(storeStairLeftCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (StairLeft, 895, 625);
            text(storeStairLeftCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (StairLeft, 953, 625);
            text(storeStairLeftCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (StairLeft, 1014, 625);
            text(storeStairLeftCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (StairLeft, 1070, 625);
            text(storeStairLeftCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (StairLeft, 1126, 625);
            text(storeStairLeftCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 17;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeCobbleStoneCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (CobbleStone, 840, 570);
            text(storeCobbleStoneCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (CobbleStone, 897, 570);
            text(storeCobbleStoneCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255, 255, 255))
          {
            image (CobbleStone, 953, 570);
            text(storeCobbleStoneCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255, 255, 255))
          {
            image (CobbleStone, 1014, 570);
            text(storeCobbleStoneCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255, 255, 255))
          {
            image (CobbleStone, 1067, 570);
            text(storeCobbleStoneCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255, 255, 255))
          {
            image (CobbleStone, 1126, 570);
            text(storeCobbleStoneCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255, 255, 255))
          {
            image (CobbleStone, 840, 623);
            text(storeCobbleStoneCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255, 255, 255))
          {
            image (CobbleStone, 895, 625);
            text(storeCobbleStoneCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255, 255, 255))
          {
            image (CobbleStone, 953, 625);
            text(storeCobbleStoneCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255, 255, 255))
          {
            image (CobbleStone, 1014, 625);
            text(storeCobbleStoneCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255, 255, 255))
          {
            image (CobbleStone, 1070, 625);
            text(storeCobbleStoneCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255, 255, 255))
          {
            image (CobbleStone, 1126, 625);
            text(storeCobbleStoneCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 18;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeStairRightCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (StairRight, 840, 570);
            text(storeStairRightCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (StairRight, 897, 570);
            text(storeStairRightCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255, 255, 255))
          {
            image (StairRight, 953, 570);
            text(storeStairRightCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255, 255, 255))
          {
            image (StairRight, 1014, 570);
            text(storeStairRightCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255, 255, 255))
          {
            image (StairRight, 1067, 570);
            text(storeStairRightCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255, 255, 255))
          {
            image (StairRight, 1126, 570);
            text(storeStairRightCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255, 255, 255))
          {
            image (StairRight, 840, 623);
            text(storeStairRightCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (StairRight, 895, 625);
            text(storeStairRightCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255, 255, 255))
          {
            image (StairRight, 953, 625);
            text(storeStairRightCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255, 255, 255))
          {
            image (StairRight, 1014, 625);
            text(storeStairRightCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255, 255, 255))
          {
            image (StairRight, 1070, 625);
            text(storeStairRightCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255, 255, 255))
          {
            image (StairRight, 1126, 625);
            text(storeStairRightCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 19;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeCampFireCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (CampFire, 840, 570);
            text(storeCampFireCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (CampFire, 897, 570);
            text(storeCampFireCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255, 255, 255))
          {
            image (CampFire, 953, 570);
            text(storeCampFireCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255, 255, 255))
          {
            image (CampFire, 1014, 570);
            text(storeCampFireCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255, 255, 255))
          {
            image (CampFire, 1067, 570);
            text(storeCampFireCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255, 255, 255))
          {
            image (CampFire, 1126, 570);
            text(storeCampFireCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255, 255, 255))
          {
            image (CampFire, 840, 623);
            text(storeCampFireCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255, 255, 255))
          {
            image (CampFire, 895, 625);
            text(storeCampFireCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255, 255, 255))
          {
            image (CampFire, 953, 625);
            text(storeCampFireCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255, 255, 255))
          {
            image (CampFire, 1014, 625);
            text(storeCampFireCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255, 255, 255))
          {
            image (CampFire, 1070, 625);
            text(storeCampFireCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255, 255, 255))
          {
            image (CampFire, 1126, 625);
            text(storeCampFireCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 20;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeFurnaceCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Furnace, 840, 570);
            text(storeFurnaceCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Furnace, 897, 570);
            text(storeFurnaceCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255, 255, 255))
          {
            image (Furnace, 953, 570);
            text(storeFurnaceCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Furnace, 1014, 570);
            text(storeFurnaceCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Furnace, 1067, 570);
            text(storeFurnaceCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Furnace, 1126, 570);
            text(storeFurnaceCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Furnace, 840, 623);
            text(storeFurnaceCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Furnace, 895, 625);
            text(storeFurnaceCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Furnace, 953, 625);
            text(storeFurnaceCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Furnace, 1014, 625);
            text(storeFurnaceCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Furnace, 1070, 625);
            text(storeFurnaceCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 21;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Furnace, 1126, 625);
            text(storeFurnaceCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType =21;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeIronPickCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (IronPick, 840, 570);
            text(storeIronPickCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (IronPick, 897, 570);
            text(storeIronPickCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (IronPick, 953, 570);
            text(storeIronPickCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (IronPick, 1014, 570);
            text(storeIronPickCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (IronPick, 1067, 570);
            text(storeIronPickCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (IronPick, 1126, 570);
            text(storeIronPickCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (IronPick, 840, 623);
            text(storeIronPickCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (IronPick, 895, 625);
            text(storeIronPickCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (IronPick, 953, 625);
            text(storeIronPickCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (IronPick, 1014, 625);
            text(storeIronPickCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (IronPick, 1070, 625);
            text(storeIronPickCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (IronPick, 1126, 625);
            text(storeIronPickCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 22;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeChestCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Chest, 840, 570);
            text(storeChestCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Chest, 897, 570);
            text(storeChestCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Chest, 953, 570);
            text(storeChestCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Chest, 1014, 570);
            text(storeChestCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Chest, 1067, 570);
            text(storeChestCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Chest, 1126, 570);
            text(storeChestCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Chest, 840, 623);
            text(storeChestCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Chest, 895, 625);
            text(storeChestCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Chest, 953, 625);
            text(storeChestCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Chest, 1014, 625);
            text(storeChestCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Chest, 1070, 625);
            text(storeChestCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Chest, 1126, 625);
            text(storeChestCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 23;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storePlankCount >= 1)
        {
          if (get (840, 570) == color (255, 255, 255))
          {
            image (Plank, 840, 570);
            text(storePlankCount, 860, 590);
            if (mouseX > 840 && mouseX < 870 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (897, 570) == color (255, 255, 255))
          {
            image (Plank, 897, 570);
            text(storePlankCount, 917, 590);
            if (mouseX > 840 && mouseX < 927 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (953, 570) == color (255))
          {
            image (Plank, 953, 570);
            text(storePlankCount, 973, 590);
            if (mouseX > 953 && mouseX < 983 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 570) == color (255))
          {
            image (Plank, 1014, 570);
            text(storePlankCount, 1034, 590);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (1067, 570) == color (255))
          {
            image (Plank, 1067, 570);
            text(storePlankCount, 1087, 590);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 570) == color (255))
          {
            image (Plank, 1126, 570);
            text(storePlankCount, 1146, 590);
            if (mouseX > 11126 && mouseX < 1156 && mouseY > 570 && mouseY < 600 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (840, 623) == color (255))
          {
            image (Plank, 840, 623);
            text(storePlankCount, 860, 643);
            if (mouseX > 840 && mouseX < 870 && mouseY > 623 && mouseY < 653 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (895, 625) == color (255))
          {
            image (Plank, 895, 625);
            text(storePlankCount, 915, 645);
            if (mouseX > 895 && mouseX < 925 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (953, 625) == color (255))
          {
            image (Plank, 953, 625);
            text(storePlankCount, 973, 645);
            if (mouseX > 953 && mouseX < 983 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (1014, 625) == color (255))
          {
            image (Plank, 1014, 625);
            text(storePlankCount, 1034, 645);
            if (mouseX > 1014 && mouseX < 1044 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (1070, 625) == color (255))
          {
            image (Plank, 1070, 625);
            text(storePlankCount, 1090, 645);
            if (mouseX > 1067 && mouseX < 1097 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else if (get (1126, 625) == color (255))
          {
            image (Plank, 1126, 625);
            text(storePlankCount, 1146, 645);
            if (mouseX > 1126 && mouseX < 1156 && mouseY > 625 && mouseY < 655 && mousePressed)
            {
              storeRetreiveType = 24;
              storeRetreive = 1;
            }
          }
          else
          {
            // arrow
          }
        }
        if (storeRetreive == 1)
        {
          storeRetreiveTimer = storeRetreiveTimer + 1;
          if (storeRetreiveTimer == 2)
          {
            if (storeRetreiveType == 1)
            {
              stickCount = storeStickCount  + stickCount;
            }
            if (storeRetreiveType == 2)
            {
              arrowCount = storeArrowCount + arrowCount;
            }
            if (storeRetreiveType == 3)
            {
              ironCount = storeIronCount + ironCount;
            }
            if (storeRetreiveType == 4)
            {
              stoneAxeCount =  storeStoneAxeCount + stoneAxeCount;
            }
            if (storeRetreiveType == 5)
            {
              stonePickCount  = storeStonePickCount + stonePickCount;
            }
            if (storeRetreiveType == 6)
            {
              ironOreCount =  storeIronOreCount + ironOreCount;
            }
            if (storeRetreiveType == 7)
            {
              rockCount = storeRockCount + rockCount;
            }         
            if (storeRetreiveType == 8)
            {
              coalCount = storeCoalCount + coalCount;
            }
            if (storeRetreiveType == 9)
            {
              redBudCount =  storeRedBudCount + redBudCount;
            }
            if (storeRetreiveType == 10)
            {
              baconCount = storeBaconCount + baconCount;
            }
            if (storeRetreiveType == 11)
            {
              pickCount =  storePickCount + pickCount;
            }
            if (storeRetreiveType == 12)
            {
              cookedBaconCount =  storeCookedBaconCount  + cookedBaconCount;
            }
            if (storeRetreiveType == 13)
            {
              axeCount =  storeAxeCount + axeCount;
            }
            if (storeRetreiveType == 14)
            {
              bandageCount = storeBandageCount + bandageCount;
            }
            if (storeRetreiveType == 15)
            {
              doorCount = storeDoorCount + doorCount;
            }
            if (storeRetreiveType == 16)
            {
              ironAxeCount =  storeIronAxeCount  + ironAxeCount ;
            }
            if (storeRetreiveType == 17)
            {
              stairLeftCount = storeStairLeftCount + stairLeftCount;
            }
            if (storeRetreiveType == 18)
            {
              cobbleStoneCount = storeCobbleStoneCount + cobbleStoneCount;
            }
            if (storeRetreiveType == 19)
            {
              stairRightCount = storeStairRightCount + stairRightCount;
            }
            if (storeRetreiveType == 20)
            {
              campFireCount = storeCampFireCount + campFireCount;
            }
            if (storeRetreiveType == 21)
            {
              furnaceCount= storeFurnaceCount + furnaceCount ;
            }
            if (storeRetreiveType == 22)
            {
              ironPickCount = storeIronPickCount + ironPickCount;
            }
            if (storeRetreiveType == 23)
            {
              chestCount = storeChestCount + chestCount;
            }
            if (storeRetreiveType == 24)
            {
              plankCount = storePlankCount + plankCount ;
            }
            if (storeRetreiveType == 25)
            {
              treeCount = treeCount + storetreeCount;
            }
            if (storeRetreiveType == 26)
            {
              needleCount = needleCount + storeNeedleCount;
            }
            if (storeRetreiveType == 27)
            {
              stoneSwordCount = storeStoneSwordCount + stoneSwordCount;
            }
            if (storeRetreiveType == 28)
            {
              woodSwordCount = woodSwordCount + storeWoodSwordCount;
            }
          }
          if (storeRetreiveTimer == 4)
          {
            if (storeRetreiveType == 1)
            {
              storeStickCount = 0;
            }
            if (storeRetreiveType == 2)
            {
              storeArrowCount= 0;
            }
            if (storeRetreiveType == 3)
            {
              storeIronCount= 0;
            }
            if (storeRetreiveType == 4)
            {
              storeStoneAxeCount= 0;
            }
            if (storeRetreiveType == 5)
            {
              storeStonePickCount= 0;
            }
            if (storeRetreiveType == 6)
            {
              storeIronOreCount= 0;
            }
            if (storeRetreiveType == 7)
            {
              storeRockCount= 0;
            }
            if (storeRetreiveType == 8)
            {
              storeCoalCount= 0;
            }
            if (storeRetreiveType == 9)
            {
              storeRedBudCount= 0;
            }
            if (storeRetreiveType == 10)
            {
              storeBaconCount= 0;
            }
            if (storeRetreiveType == 11)
            {
              storePickCount= 0;
            }
            if (storeRetreiveType == 12)
            {
              storeCookedBaconCount= 0;
            }
            if (storeRetreiveType == 13)
            {
              storeAxeCount= 0;
            }
            if (storeRetreiveType == 14)
            {
              storeBandageCount= 0;
            }
            if (storeRetreiveType == 15)
            {
              storeDoorCount= 0;
            }
            if (storeRetreiveType == 16)
            {
              storeIronAxeCount= 0;
            }
            if (storeRetreiveType == 17)
            {
              storeStairLeftCount= 0;
            }
            if (storeRetreiveType == 18)
            {
              storeCobbleStoneCount= 0;
            }
            if (storeRetreiveType == 19)
            {
              storeStairRightCount= 0;
            }
            if (storeRetreiveType == 20)
            {
              storeCampFireCount= 0;
            }
            if (storeRetreiveType == 21)
            {
              storeFurnaceCount= 0;
            }
            if (storeRetreiveType == 22)
            {
              storeIronPickCount= 0;
            }
            if (storeRetreiveType == 23)
            {
              storeChestCount = 0;
            }
            if (storeRetreiveType == 24)
            {
              storePlankCount = 0;
            }
            if (storeRetreiveType == 25)
            {
              storetreeCount = 0;
            }
            if (storeRetreiveType == 26)
            {
              storeNeedleCount = 0;
            }
            if (storeRetreiveType == 27)
            {
              storeStoneSwordCount = 0;
            }
            if (storeRetreive == 28)
            {
              storeWoodSwordCount = 0;
            }
            
          }
          if (storeRetreiveTimer == 6)
          {
            storeRetreiveTimer = 0;
            storeRetreive = 0;
            storeType = 0;
          }
        }
      }
    }
  }
}

