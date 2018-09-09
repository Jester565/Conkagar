import java.util.Map;

class InventoryItem 
{
  // local countkasdfd

  public static final int UNUSED = 0;
  public static final int TOOL = 1;
  public static final int WEAPON = 2;
  public static final int PLACEABLE = 3;
  public static final int UTILITY = 4;
  public static final int FOOD = 5;
  public static final int MISC = 6;
  private int _type;
  private int _madeInCrafting = 0;
  private int _page;
  private int drag;
  //h
  private int _count;
  private int _campCook;
  private int _spot;
  private int _chestCount;
  private int _fuel = 0;
  private PImage _iB;
  private int _inventoryType;
  private int stopMakeTimer = 0;
  public int stopMake = 0;
  private int _eatTimer = 0;
  private int _cookProduct = 0;
  private int _ore = 0;
  private PImage _box;
  private int _chestTransfer = 0;
  private int _available = 0;
  //local image
  private PImage _img;
  private int _blockType = 0;
  //has 2 data values paired both integers first ones is the id# of the item and the second is the count
  private HashMap<Integer, Integer> _parts;
  private int makeItem = 0;

  InventoryItem (PImage img, int type,int page, int inventoryType,  int madeInCrafting, int eatTimer, int campCook, int blockType, int fuel, int cookProduct, int ore)
  {
    _count = 0;
    _iB = loadImage ("tempI.png");
    _box = loadImage ("boxI.png");
    _img = img;
    _ore = ore;
    _chestCount = 0;
    _blockType = blockType;
    _chestTransfer = 0;
    _cookProduct = cookProduct;
    _fuel = fuel;
    _inventoryType = inventoryType;
    _type = type;
    _eatTimer = eatTimer;
    _page = page;
    _campCook = campCook;
    _madeInCrafting = madeInCrafting;
    _available = 0;
    _parts = new HashMap<Integer, Integer>();
  }
 
  int count ()
  {
    return _count;
  }
  int chestCount()
  {
    return _chestCount;
  }
  int page()
  {
    return _page;
  }
  int type()
  {
    return _type;
  }
  int spot()
  {
    return _spot;
  }
  void addItem ()
  {
    // add one item
    _count ++ ;
  }
  void removeItem ()
  {
    // remove an item
    _count --;
  }
  void addItem (int count)
  {
    //add a ceertain numbero items
    _count += count;
  }
  void removeItem (int count)
  {
    // subrtract certain nubmer of items
    _count -= count;
  }



  void addPart(int itemNumber, int count)
  {
    //_parts is the hashmap and its two values are trhe intsegers item number and count
    _parts.put(itemNumber, count);
  }

  boolean partsAvailable(Inventory inventory)
  {
    //EXPLAIN
    for (Map.Entry part : _parts.entrySet()) {
      int key = (Integer)(part.getKey());
      int value = (Integer)part.getValue();
      if (inventory.item(key).count() < value) {
        return false;
      }
    }
    return true;
  }
  //EXPLAIN
  boolean makeItem(Inventory inventory)
  {

    if (partsAvailable(inventory) && stopMake == 0) {
      for (Map.Entry part : _parts.entrySet()) {
        int key = (Integer)(part.getKey());
        int value = (Integer)part.getValue();
        inventory.item(key).removeItem(value);
      }
      addItem(_madeInCrafting);

      return true;
    }

    return false;
  }





  void drawCount (int x, int y)
  {
    
        
    int take = 0;
    int takeCount = 0;
     int _blockTimer = 0;
int _blockPlace = 0;
    //if you have more than one of an item draw it and display the count
    if (drag == 1)
    {
      image (_img, mouseX, mouseY - 27);
      fill (225,225,225, 100);
      if (fillTimer == 2)
      {
        _count --;
      }
      if (fillTimer == 4)
      {
        drag = 0;
        globalDrag = 0;
      }
    }
    if (_count > 0)
    {
      image (_img, x, y);
      fill (255, 0, 0);
      text (_count, x + 20, y+ 30);
      if (_eatTimer > 0)
      {
        if (mouseX > x && mouseX < x + 30 && mouseY > y && mouseY < y + 30 && mousePressed && health < 300 && chestMenu == 0 && furnaceMenu == 0 && campFireMenu == 0)
        {
          _eatTimer = _eatTimer - 1;
          health = health + 1;
          if (_eatTimer <= 1)
          {
            _count --;
          }
        }
      }
      //only when we are in a chestmenu whdasfich is turned on when you open a chest and the chest inventory appears
      if (chestMenu == 1)
      {
        //simple click box and has a chesttransfertimer so you dont dump all your blocks in at once
        if (mouseX > x && mouseX < x + 30 && mouseY > y && mouseY < y + 30 && mousePressed && chestTransferTimer == 0 && chestCap == 0)
        {
          chestTransferValue = _inventoryType;
          chestTransferTimer ++;
          if (key == 'r' && keyPressed)
          {
            removeCount = _count;
            _count = 0;
          }
          else
          {
          _count--;
          removeCount = 1;
          }
        }
      
      }
        if (campFireMenu == 1 || furnaceMenu == 1)
        {
          if (mouseX > x && mouseX < x + 30 && mouseY > y && mouseY < y + 30 && mousePressed && chestTransferTimer == 0 )
        {
          if (_campCook > 0 && campFireMenu == 1 && _ore == 0|| _fuel > 0 || _campCook > 0 && _ore == 1 && furnaceMenu == 1)
          {
          if (_campCook > 0 || _fuel > 0)
          {
            if (_campCook >0)
            {
          chestTransferType = 1;
            }
            if (_fuel >0)
            {
              chestTransferType = 2;
            }
          chestTransferValue = _inventoryType;
          chestTransferTimer++;
          removeCount = 1;
          _count --;
          }
          }
        }
        
        }
      if (_blockType > 0)
      {
        if (mouseX > x && mouseX < x + 30 && mouseY > y && mouseY < y + 30&& mousePressed && blockScan <= 0 && blockScan == - 2 && chestMenu == 0 && campFireMenu == 0 && furnaceMenu == 0)
        {
          if (_blockType != 7 && _blockType != 8 && _blockType != 9 || jump == 0 || jump == 1 && freezeJump0 == 1)
          {
          if (blockLayer <= 1)
          {
            buildBlock = 1;
            blockType = _blockType;
            _count --;
            _blockPlace = 1;
          }
          else if (globalDrag == 0)
          {
            drag = 1;
            blockType = _blockType;
            globalDrag = 1;
          }
          }
        }
      }
    }
    
  }

  void chestDraw (int x, int y)
  {
    int takeCount = 0;
    int take = 0;
    if (_count > 0)
    {
      if (campFireMenu == 1 || furnaceMenu == 1)
      {
        if (_campCook > 0 && campFireMenu == 1 || _ore == 1 && furnaceMenu == 1)
        {
        x += 152;
        cookIn = _campCook;
        y += 7;
        }
        else if (_fuel > 0)
        {
          x+= 152;
          fuelIn = _fuel;
          y += 97;
        }
        else 
        {
          x += 5;
          
        }
      }
      image (_img, x, y);
      fill (255, 0, 0);
      text (_count, x + 20, y + 30);
      if (mouseX > x && mouseX < x + 30 && mouseY > y && mouseY < y + 30 && mousePressed && chestTransferTimer == 0)
      {
        chestTransferValue2 = _inventoryType;
          
          if (key == 'r' && keyPressed)
          {
           removeCount = _count; 
           if (_fuel > 0)
           {
             removeFuel = _count;
           }
           if (_campCook > 0)
           {
             removeCook = _count;
           }
           _count = 0;
          }
          else
          {
             if (_fuel > 0)
           {
             removeFuel = 1;
           }
           if (_campCook > 0)
           {
             removeCook = 1;
           }
            
            removeCount = 1;
            _count --;
          }
          chestTransferTimer ++;
        
      }
    }
  }
  void draw (int x, int y)
  {

    //if you have more than one of an item draw it and display the count
    if (x == 675)
    {
      image (_iB, 600, y - 10);
    }
    image (_box, x - 5, y + 50);
    image (_img, x, y + 55);
    fill (255, 0, 0);
  }
  void drawParts (Inventory inventory, int x, int y)
  {
    int i = 0;
    for (Map.Entry part : _parts.entrySet()) {
      int key = (Integer)(part.getKey());
      int value = (Integer)part.getValue();
      if (y == 200)
      {
        _spot = 1;
      }
      if (y == 400)
      {
        _spot = 2;
      }
      if (y == 600)
      {
        _spot = 3;
      }

      inventory.item(key).draw(x, y);
      fill (255, 0, 0);
      if (x != 675)
      {
        text (value, x +30, y + 80);
      }
      else
      {
        text (_madeInCrafting, x + 30, y + 80);
      }


      x += 150;
    }
  }
}
//each subclass changes image dEXPLAIN super
class Stick extends InventoryItem
{
  Stick()
  {
    super (loadImage ("stick1.png"), MISC, 1, Inventory.STICK, 4, -1, 0, 0,500, 0,0);

    addPart(Inventory.TREE2, 1);
  }
}
class Arrow2 extends InventoryItem
{
  Arrow2()
  {
    super (loadImage("Arrow.png"), WEAPON, 1, Inventory.ARROW2, 4, -1, 0, 0,500, 0,0);
    addPart(Inventory.STICK, 1);
    addPart(Inventory.ROCK2, 1);
  }
}
class Needle extends InventoryItem
{
  Needle()
  {
    super (loadImage("cactusNeedles.png"), UNUSED, 0, Inventory.NEEDLE,0, -1, 0, 0,0, 0,0);
  }
}
class StoneAxe extends InventoryItem
{
  StoneAxe()
  {
    super (loadImage("stoneAxe.png"), TOOL, 1,Inventory.STONEAXE, 1, -1, 0, 0,0, 0,0);
    addPart(Inventory.STICK, 2);
    addPart(Inventory.ROCK2, 3);
  }
}
class StonePick extends InventoryItem
{
  StonePick()
  {
    super (loadImage("stonePick.png"), TOOL, 2,Inventory.STONEPICK, 1, -1, 0, 0,0, 0,0);
    addPart(Inventory.STICK, 2);
    addPart(Inventory.ROCK2, 3);
  }
}
class IronOre extends InventoryItem
{
  IronOre()
  {
    super (loadImage("ironOre.png"), UNUSED, 0,Inventory.IRONORE, 1, -1, 500, 0,0,Inventory.IRON2,1);
  }
}
class WoodSword extends InventoryItem
{
  WoodSword()
  {
    super (loadImage("woodenSword.png"), WEAPON, 1,Inventory.WOODSWORD, 1, -1, 0, 0,500,0,0);
    addPart(Inventory.STICK, 2);
    addPart(Inventory.TREE2, 4);
  }
}
class Rock2 extends InventoryItem
{
  Rock2()
  {
    super (loadImage("rock1.png"), UNUSED, 0,Inventory.ROCK2, 1, -1, 0, 0,0,0,0);
  }
}
class Coal extends InventoryItem
{
  Coal()
  {
    super (loadImage("coal.png"), UNUSED, 0,Inventory.COAL, 1, -1, 0, 0,3000,0,0);
  }
}
class RedBud extends InventoryItem
{
  RedBud()
  {
    super (loadImage("redBud.png"), UNUSED, 0,Inventory.REDBUD, 1, -1, 0, 0,0, 0,0);
  }
}

class Bacon extends InventoryItem
{
  Bacon()
  {
    super (loadImage ("Bacon.png"), UNUSED, 0,Inventory.BACON, 1, -1, 500, 0,0, Inventory.COOKEDBACON,0);
  }
}
class WoodPick extends InventoryItem
{
  WoodPick()
  {
    super (loadImage("woodPick.png"), TOOL, 1,Inventory.WOODPICK, 1, -1, 0, 0,500, 0,0);
    addPart(Inventory.STICK, 2);
    addPart(Inventory.TREE2, 3);
  }
}
class CookedBacon extends InventoryItem
{
  CookedBacon()
  {
    super (loadImage("BaconCooked.png"), UNUSED, 0,Inventory.COOKEDBACON, 1, 60, 0, 0,0, 0,0);
  }
}
class WoodAxe extends InventoryItem
{
  WoodAxe()
  {
    super (loadImage("woodAxe.png"), TOOL, 1,Inventory.WOODAXE, 1, -1, 0, 0,500, 0,0);
    addPart(Inventory.STICK, 2);
    addPart(Inventory.TREE2, 3);
  }
}
class Bandage extends InventoryItem
{
  Bandage()
  {
    super (loadImage("bandage.png"), UNUSED, 0,Inventory.BANDAGE, 1, -1, 0, 0,0, 0,0);
  }
}
class Door extends InventoryItem
{
  Door()
  {
    super (loadImage("DoorPlace.png"), PLACEABLE, 2, Inventory.DOOR, 1, -1, 0, 5,1000, 0,0);

    addPart(Inventory.PLANK, 3);
  }
}
class IronAxe extends InventoryItem
{
  IronAxe()
  {
    super (loadImage("ironAxe.png"), TOOL, 2,Inventory.IRONAXE, 1, -1, 0, 0,0, 0,0);
    addPart(Inventory.STICK, 2);
    addPart(Inventory.IRON2, 3);
  }
}
class StairLeft extends InventoryItem
{
  StairLeft()
  {
    super (loadImage("stairLeft.png"), PLACEABLE, 2,Inventory.STAIRLEFT, 1, -1, 0, 4,1000, 0,0);

    addPart(Inventory.TREE2, 3);
  }
}
class CobbleStone extends InventoryItem
{
  CobbleStone()
  {
    super (loadImage("cobbleStone.png"), PLACEABLE, 1,Inventory.COBBLESTONE, 4, -1, 0, 2,0, 0,0);

    addPart(Inventory.ROCK2, 2);
  }
}
class StairRight extends InventoryItem
{
  StairRight()
  {
    super (loadImage("stairRight.png"), PLACEABLE, 2,Inventory.STAIRRIGHT, 1, -1, 0, 3,1000, 0,0);

    addPart(Inventory.TREE2, 3);
  }
}
class CampFire2 extends InventoryItem
{
  CampFire2()
  {
    super (loadImage("campFire1.png"), UTILITY, 1,Inventory.CAMPFIRE2, 1, -1, 0, 8,0, 0,0);

    addPart(Inventory.TREE2, 2);
  }
}
class Furnace extends InventoryItem
{
  Furnace()
  {
    super (loadImage("furnace1.png"), UTILITY, 1,Inventory.FURNACE, 1, -1, 0, 9,0, 0,0);

    addPart(Inventory.ROCK2, 8);
  }
}
class IronPick extends InventoryItem
{
  IronPick()
  {
    super (loadImage("ironPick.png"), TOOL, 2,Inventory.IRONPICK, 1, -1, 0, 0,0, 0,0);
    addPart(Inventory.STICK, 2);
    addPart(Inventory.IRON2, 3);
  }
}
class Chest extends InventoryItem
{
  Chest()
  {
    super (loadImage("chest1.png"), UTILITY, 1,Inventory.CHEST, 1, -1, 0, 7,1000, 0,0);

    addPart(Inventory.PLANK, 7);
  }
}
class Plank extends InventoryItem
{
  Plank()
  {
    super (loadImage("plank.png"), PLACEABLE, 1,Inventory.PLANK, 4, -1, 0, 1,1000, 0,0);

    addPart(Inventory.TREE2, 1);
  }
}
class TreeItem extends InventoryItem
{
  TreeItem()
  {
    super (loadImage("Wood.png"), UNUSED, 0,Inventory.TREE2, 1, -1, 0, 0,1500, 0,0);
  }
}
class StoneSword extends InventoryItem
{
  StoneSword()
  {
    super (loadImage("stoneSword.png"), WEAPON, 1,Inventory.STONESWORD, 1, -1, 0, 0,0, 0,0);
    addPart(Inventory.STICK, 2);
    addPart(Inventory.ROCK2, 4);
  }
}
class Iron2 extends InventoryItem
{
  Iron2()
  {
    super (loadImage("IronIgnot.png"), UNUSED, 0,Inventory.IRON2, 1, -1, 0, 0,0, 0,0);
  }
}

