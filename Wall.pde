class Wall extends GroundObject
{
  private float current = 0;
  private float direction = 0;
  private PImage plank;
  private int _blockNumber = 0;
  private int _blockType = 0;
  private int x1 = 0;
  private int x2;
  private int y2;
  private PImage campFire1;
  private PImage campFire2;
  private PImage campFire3;
  private PImage furnace2;
  private PImage furnace3;
  private int fillActivate = 0;
  private int chestTimer = 0;
  private int _fuelTimer = 0;
  private int _fuelLevel = 0;
  private PImage campFireMenu2;
  private PImage campFireMenu3;
  private int _fuelType = -1;
  private int _addProduct = 0;
  private int _removeFuel = 0;
  private int _cookLevel = 0;
  private int _removeCook = 0;
  private int _fireTimer = 0;
  private int _cookType = -1;
  private int chestHeight = 0;
  private int _cookProduct = -1;
  //private int _cookLevel = 0;
  private int _cookTimer = 0;
  private int placeTimer = 0;
  private int stack = 0;
  private int headHitTimer = 0;
  private int _fuel = 0;
  private int _campCook = 0;
  private int openDoorTimer = 0;
  private float breakTimer = 0;
  private int rightFall = 0;
  private PImage campFireMenu1;
  private int openDoor;
  private float chickenNugget;
  private int _blockLayer = 0;
  private PImage wB1;
  private PImage wB2;
  private PImage wB3;
  private int _inventoryUser = 0;
  private int _nonStack = 0;
  private int _chestMenu = 0;
  private PImage chestMenuI;
  private ArrayList<PImage> _type;
  private ArrayList<PImage> _backType;
  private int lockDoor;
  private int leftFall = 0;
  Inventory _inventory;
  Wall (float x, int blockNumber, int blockType, int blockLayer)
  {

    super (x);
    _type = new ArrayList<PImage>();
    _backType = new ArrayList<PImage>();
    _inventory = new Inventory();
    current = 0;
    _blockNumber = blockNumber;
    _blockLayer = blockLayer;
    _blockType = blockType;
    openDoor = 0;
    direction = 0;
    chestMenuI = loadImage ("chestMenu1.png");
    wB1 = loadImage ("plankHit1.png");
    wB2 = loadImage ("plankHit2.png");
    wB3 = loadImage ("plankHit3.png");
    campFire1 = loadImage ("campFire1.png");
    campFire2 = loadImage ("campFire2.png");
    campFire3 = loadImage ("campFire3.png");
    campFireMenu1 = loadImage ("campFireMenu1.png");
    campFireMenu2 = loadImage ("campFireMenu2.png");
    campFireMenu3 = loadImage ("campFireMenu3.png");
    furnace2 = loadImage ("furnace1.2.png");
    furnace3 = loadImage ("furnace1.3.png");
    _type.add(loadImage("plank.png"));
    _type.add(loadImage("cobbleStone.png"));
    _type.add(loadImage("stairRight.png"));
    _type.add(loadImage("stairLeft.png"));
    _type.add(loadImage("DoorPlaced1.5.png"));
    _type.add(loadImage("DoorPlaced1.png"));
    _type.add(loadImage("chest1.png"));
    _type.add(loadImage("campFire.png"));
    _type.add(loadImage("furnace1.png"));

    _backType.add(loadImage("plank2.png"));
    _backType.add(loadImage("cobbleStoneBack.png"));
    _backType.add(loadImage("plank.png"));
    _backType.add(loadImage("plank.png"));
    _backType.add(loadImage("DoorPlaced2.5.png"));
    _backType.add(loadImage("DoorPlaced2.png"));
    _backType.add(loadImage("chest2.png"));
    _backType.add(loadImage("campFire.png"));
    _backType.add(loadImage("furnace1.png"));
  }

  Inventory inventory()
  {
    return _inventory;
  }
  void draw()
  {
    println (mpd);
    if (_blockType == 7 || _blockType == 8 || _blockType == 9)
    {
      _inventoryUser = 1;
    }
    if (_blockType ==7 || _blockType == 8 || _blockType == 9)
    {
      _nonStack = 1;
    }

    if (placeTimer < 8)
    {
      x = borderLeft + 900;
    }
//
    placeTimer = placeTimer + 1;

    if (placeTimer == 5)
    {
      x1 = (round (x/30) * 30);
    }
    if ( placeTimer >= 8 )
    {
      x = x1;
    }
    if (placeTimer == 9)
    {
      blockScan ++;
    }
    if (placeTimer - 9 <= blockScan && blockScan > 0)
    {
      if (x == blockScanX && _nonStack == 0)
      {
        stack = stack - 27;
      }
    }
    if (blockScan == _blockNumber && _nonStack == 0)
    {
      blockScanX = round (x);
    }
    else if (blockScan == _blockNumber)
    {
      blockScanX = -100000;
    }
    
    if (mobBlockTrack > x - 40 && mobBlockTrack< x + 40 && mobBlockTrackY >= chickenNugget - 40 && mobBlockTrackY < chickenNugget + 7)
    {
      mpd = x;
      mby = chickenNugget;
    }
    
    float x = xPos();
    current += direction;
    x += current;
    float y = groundPos (xLoc() + current);
    y += stack;
    chickenNugget = y;
    if (_nonStack == 1)
    {
      if (placeTimer == 4)
      {
        chestHeight = round(characterY) + 5;
      }
      y = chestHeight;
    }
    if (width/2 < x - 10 && width/2 > x - 40 || width/2 > x + 40 && width/2 < x + 80)
    {
      if (_blockType == 5 && mouseX > x && mouseX < x+ 30 && mouseY < y  && mouseY > y - 60&& mousePressed && openDoorTimer == 0 && openDoor == 1 ||
        _blockType == 6 && mouseX > x  && mouseX < x + 30&& mouseY < y + 30  && mouseY > y - 30 && mousePressed && openDoorTimer == 0 && openDoor == 1)
      {

        openDoor = 0;
        _blockLayer = 0;
        openDoorTimer = openDoorTimer + 2;
      }
      if (_blockType == 5 && mouseX > x && mouseX < x+ 30 && mouseY < y  && mouseY > y - 60&& mousePressed && openDoorTimer == 0 && openDoor == 0 ||
        _blockType == 6 && mouseX > x  && mouseX < x + 30&& mouseY < y + 30 && mouseY > y - 30 && mousePressed && openDoorTimer == 0 && openDoor == 0)
      {
        openDoor = 1;
        _blockLayer = 1;
        openDoorTimer = openDoorTimer + 2;
      }
    }
    if (get (round(x) +59, round(y) - 2) >= color (225, 225, 225))
    {
      rightFall = 1;
    } 
    else
    {
      rightFall = 0;
    }
    if (get (round(x) - 1, round(y) - 2) >= color (225, 225, 225))
    {
      leftFall = 1;
    }
    else
    {
      leftFall = 0;
    }
    if (width/2 <= x + 45 && width/2 > x + 5 && characterY + 35> y + 10 && characterY + 35 < y + 70 && _blockLayer == 0 && _blockType != 4 && _nonStack == 0)
    {
      wallLeftStop = 1;
    }
    else if (_blockNumber == 0 )
    {
      wallLeftStop = 0;
    }
    if (width/2 >= x - 24 && width/2 < x + 15 && characterY + 35 > y + 10 && characterY + 35 < y + 70 && _blockLayer == 0 && _blockType != 3 && _nonStack == 0)
    {
      wallRightStop = 1;
    }
    else if (_blockNumber == 0)
    {
      wallRightStop = 0;
    }
    if ( width/2 >= x - 20 && width/2 < x + 42 && characterY + 35 > y - 3 && characterY + 35 < y + 10 && _blockLayer == 0 && _nonStack == 0)
    {
      freezeJump0 = 1;
    }

    else if (_blockNumber == 0)
    {
      freezeJump0 = 0;
    }

    if ( width/2 >= x - 15 && width/2 < x + 23 && characterY + 35 > y + 65 && characterY + 35 < y + 80 && headHitTimer == 0 && _blockLayer == 0 && _nonStack == 0)
    {
      jumpFall = 0;
      headHitTimer = headHitTimer + 1;
    }
    if (headHitTimer > 0)
    {
      headHitTimer = headHitTimer + 1;
    }
    if (headHitTimer > 2)
    {
      headHitTimer = 0;
    }
    if (_blockType == 4)
    {
      if (width/2 <= x + 41 && width/2 > x + 25 && characterY + 35> y + 10 && characterY + 35 < y + 70 && _blockLayer == 0)
      {

        jumpHeight = jumpHeight + 3;
        jump = 1;
        stairOn = 1;
      }
    }
    if (_blockType == 3)
    {
      if (width/2 >= x - 19 && width/2 < x + 15 && characterY + 35 > y + 10 && characterY + 35 < y + 70 && _blockLayer == 0)
      {
        jumpHeight = jumpHeight  +3;
        jump = 1;
        stairOn = 1;
      }
    }
    if (openDoorTimer > 0)
    {
      openDoorTimer++;
      if (openDoorTimer > 20)
      {
        openDoorTimer = 0;
      }
    }
    if (_blockLayer == 0 && openDoor == 0 && breakTimer< 200)
    {
      image (_type.get(_blockType - 1), x, y - 27);
      lockDoor = 0;
    }

    else if (breakTimer < 200)
    {
      if (_blockType == 7 )
      {
        y -= 15;
      }
      image (_backType.get(_blockType - 1), x, y -27);
      lockDoor = 1;
    }
    if (chestTimer > 0 )
    {
      chestTimer ++;
      if (chestTimer > 10)
      {
        chestTimer = 0;
      }
    }
    if (_fuelLevel > 0 && _cookLevel > 0 )
    {
      _fireTimer ++;
      if (_blockType == 8)
      {
        if (_fireTimer < 10)
        {
          image (campFire1, x, y -27);
        }
        else if (_fireTimer > 20)
        {
          image(campFire3, x, y-27);
        }
        else
        {
          image(campFire2, x, y-27);
        }
      }
      if (_blockType == 9)
      {
        if (_fireTimer < 15)
        {
          image (furnace2, x, y -27);
        }
        else
        {
          image(furnace3, x, y-27);
        }
      }
      if (_fireTimer > 30)
      {
        _fireTimer = 0;
      }
      _fuel++;
      _campCook ++;
      if (_fuel == 2)
      {
        _removeFuel = 1;
      }
      if (_campCook == 2)
      {
        _removeCook = 1;
      }
      if (_campCook > _cookTimer)
      {
        _addProduct = 1;
        _cookLevel --;
        _campCook = 0;
      }
      if (_fuel > _fuelTimer)
      {

        _fuelLevel --;
        _fuel = 0;
      }
    }

    if (_inventoryUser == 1 && _blockLayer == 1 )
    {
      if (chestTransferTimer > 0)
      {
        chestTransferTimer ++;
      }
      if (chestTransferTimer > 10)
      {
        chestTransferTimer = 0;
      }
      if (_blockType == 7)
      {
        image (chestMenuI, 800, 500);
        fill (255);
        rect (838, 568, 34, 34);
        rect (895, 568, 34, 34);
        rect (952, 568, 34, 34);
        rect (1009, 568, 34, 34);
        rect (1066, 568, 34, 34);
        rect (1123, 568, 34, 34);
      }
      if (_blockType == 8 && _fuelLevel == 0 || _cookLevel == 0 && _blockType == 8 || _blockType == 9 && _fuelLevel == 0 || _blockType == 9 && _cookLevel == 0)
      {
        image (campFireMenu1, 800, 500);
      }
      else if (_blockType == 8 || _blockType == 9)
      {
        if (_fireTimer < 15)
        {
          image(campFireMenu2, 800, 500);
        }
        else
        {
          image (campFireMenu3, 800, 500);
        }
      }

      int  x2 = 838;
      int  y2 = 568;
      if (chestTransferValue != - 1)
      {
        if (campFireMenu == 1 || furnaceMenu == 1)
        {
          if (chestTransferType == 1)
          {

            _cookLevel++;
            _cookTimer = _inventory.item(chestTransferValue)._campCook;
            _cookType = chestTransferValue;
            _cookProduct = _inventory.item(chestTransferValue)._cookProduct;
          }
          if (chestTransferType == 2)
          {

            _fuelLevel ++;
            _fuelTimer = _inventory.item(chestTransferValue)._fuel;
            _fuelType = chestTransferValue;
          }
        }

        _inventory.item(chestTransferValue).addItem(removeCount);
        chestTransferValue = - 1;
        chestTransferType = 0;
      }
      _inventory.reset();
      InventoryItem item = _inventory.next(false);
      //InventoryItem item = _inventory.next(false);
      if (_removeFuel == 1)
      {
        _inventory.item(_fuelType).removeItem(1);
        _removeFuel = 0;
      }
      if (_removeCook == 1)
      {
        _inventory.item(_cookType).removeItem(1);
        _removeCook = 0;
      }
      if (_addProduct == 1)
      {
        _inventory.item(_cookProduct).addItem(1);
        _addProduct = 0;
      }
      if (removeFuel >= 1)
      {
        _fuelLevel = _fuelLevel - removeFuel;
        removeFuel = 0;
      }
      if (removeCook >= 1)
      {
        _cookLevel = _cookLevel - removeCook;
        removeCook = 0;
      }

      while (item != null) {
        item.chestDraw(x2, y2);
        if ((mouseX >= x2) && (mouseX <= (x2 + 40)) && (mouseY >= y2) && (mouseY <= y2 + 30)) {
          fill(255, 0, 0, 100);
          rect(x2, y2, 34, 34);
        }

        item = _inventory.next(false);
        if (_blockType == 7)
        {
          x2 += 57;
        }
      }

      if (x2 > 1125)
      {
        chestCap = 1;
      }
      else
      {
        chestCap = 0;
      }
    }
    if (mouseX >x && mouseX < x + 30 && mouseY > y - 27 && mouseY < y && mousePressed)
    {
      if ( width/2 < x + 100  && _inventoryUser == 1 && width/2 > x - 100 )
      {

        if (chestTimer == 0)
        {
          if (_blockLayer == 0 && campFireMenu == 0)
          {
            _blockLayer = 1;
            if (_blockType == 7)
            {
              chestMenu = 1;
            }
            if (_blockType == 8)
            {
              campFireMenu = 1;
            }
            if (_blockType == 9)
            {
              furnaceMenu = 1;
            }
          }
          else if (_blockLayer == 1 && campFireMenu == 1)
          {
            _blockLayer = 0;
            campFireMenu = 0;
            chestMenu = 0;
            furnaceMenu = 0;
          }
          chestTimer ++;
        }
      }


      breakTimer ++;
      if (breakTimer < 200)
      {
        if (breakTimer > 50)
        {
          image (wB1, x, y - 27);
        }
        if (breakTimer > 100)
        {
          image (wB2, x, y - 27);
        }
        if (breakTimer > 150)
        {
          image (wB3, x, y - 27);
        }
      }
    }
    else if (breakTimer < 200 && breakTimer >= 0)
    {
      breakTimer = breakTimer - .25;
    }
    if (_blockLayer == 1 && width/2 > x + 100  && _inventoryUser == 1|| _blockLayer == 1 && width/2 < x - 100 && _inventoryUser == 1  )
    {
      _blockLayer = 0;
      chestMenu = 0;
      campFireMenu = 0;
      furnaceMenu = 0;
    }
    if (breakTimer > 200)
    {
      _blockLayer = 2;
    }
    if (breakTimer > 200 && blockLayer == 2||breakTimer > 200 && blockLayer == 3)
    {
      fill (225, 225, 225, 100);

      rect (x, y - 27, 30, 30);
      if (mousePressed && blockType != 5 && blockType != 6 && mouseX >x && mouseX < x + 30 && mouseY > y - 27 && mouseY < y )
      {
        _blockType = blockType;
        fillActivate = 1;
        _blockLayer = blockLayer - 2;
        breakTimer = 0;
      }
    }
    if (fillActivate == 1)
    {
      fillTimer ++;
      if (fillTimer == 5)
      {
        fillTimer = 0;
        fillActivate = 0;
      }
    }
  }
}

