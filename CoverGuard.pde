class Inventory
{
  //static means theres only going one even if invenatory is called multiple times EXPLAIN final
  //the items are being assigned id #'s
  public static final int STICK = 0;
  public static final int BACON = 1;
  public static final int ARROW2 = 2;
  public static final int NEEDLE = 3;
  public static final int STONEAXE = 4;
  public static final int STONEPICK = 5;
  public static final int IRONORE = 6;
  public static final int WOODSWORD = 7;
  public static final int ROCK2 = 8;
  public static final int COAL = 9;
  public static final int REDBUD = 10;
  public static final int WOODPICK = 11;
  public static final int COOKEDBACON = 12;
  public static final int WOODAXE = 13;
  public static final int BANDAGE = 14;
  public static final int DOOR = 15;
  public static final int IRONAXE = 16;
  public static final int STAIRLEFT = 17;
  public static final int COBBLESTONE = 18;
  public static final int STAIRRIGHT = 19;
  public static final int CAMPFIRE2 = 20;
  public static final int FURNACE = 21;
  public static final int IRONPICK = 22;
  public static final int CHEST = 23;
  public static final int PLANK = 24;
  public static final int TREE2 = 25;
  public static final int STONESWORD = 26;
  public static final int IRON2 = 27;

  //private means only this class sees it, its just saying there wilsl be an array list (dad says this is just one of the wierd parts of Java you have to say it will be there then make a new one)
  private ArrayList<InventoryItem> _items;
  //EXPLAIN index
  private int _index;

  public Inventory()
  {
    //making inventoryitem arraylist, this just makes each of the classes exist so you can add to their count i think....
    _items = new ArrayList<InventoryItem>();
    _items.add(new Stick());
    _items.add(new Bacon());
    _items.add(new Arrow2());
    _items.add(new Needle());
    _items.add(new StoneAxe());
    _items.add(new StonePick());
    _items.add(new IronOre());

    _items.add(new WoodSword());

    _items.add(new Rock2());
    _items.add(new Coal());
    _items.add(new RedBud());
    _items.add(new WoodPick());
    _items.add(new CookedBacon());
    _items.add(new WoodAxe());
    _items.add( new Bandage());
    _items.add( new Door());
    _items.add( new IronAxe());
    _items.add(new StairLeft());
    _items.add(new CobbleStone());
    _items.add(new StairRight());
    _items.add(new CampFire2());
    _items.add (new Furnace());
    _items.add (new IronPick());
    _items.add(new Chest());

    _items.add(new Plank());
    _items.add(new TreeItem());
    _items.add(new StoneSword());
    _items.add(new Iron2());


    //index is the box # its on i think it starts at -1 and goes up to 9 because there are 10 slots
    _index = -1;
  }
  //arraylist becomes public?
  public InventoryItem item(int index)
  {
    // EXPLAIN also EXPLAIN return
    if (index < _items.size()) {
      return _items.get(index);
    }

    return null;
  }

  //when do you call reset again? its in hud right?
  public void reset()
  {
    _index = -1;
  }
  //moves up to the next box in the inventory
  public InventoryItem next(boolean all)
  {
    _index++;
    while (_index < _items.size ()) {
      
      if (all || _items.get(_index).count() > 0 ) {
        return _items.get(_index);
      }
        
      
      _index++;
    }
    return null;
  }
  
  public InventoryItem next2()
  {
    _index++;
    while (_index < _items.size())
    {
      if (_items.get(_index).chestCount() > 0)
      {
       
        return _items.get(_index);
      }
     
    
    _index ++;
  }
  return null;
}
  
}

