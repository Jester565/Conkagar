class Hud extends Drawable

{


  PImage heart;
  PImage sprintPic;
  float timer5 = 0;
  float clickDis = 0;
  PImage chestMenuI;
  PImage i1;
  int inventoryRetract = 0;
  float countTimer17 = 0;
  //As
  float countTimer18 = 0;
  float countTimer19 = 0;
  float countTimer20 = 0;
  float woodDeploy = 0;
  float timer4 = 0;
  PImage e1;
  PImage e2;
  PImage e3;
  PImage chest;
  int bought17 = 0;
  int bought18 = 0;
  int bought19 = 0;
  int bought20 = 0;
  float ict = 0;
  float clickDisT = 0;
  PImage needle;
  PImage e4;
  float countTimer13 = 0;
  float countTimer14 = 0;
  float countTimer15 = 0;
  float countTimer16 = 0;
  float baconUseTimer = 0;
  PImage e5;
  PImage e6;
  float cookedBaconDis = 0;
  float inventoryChange = 0;
  float invisibleTimer = 0;
  float invisibleB = 0;
  float plankDis = 0;
  float doorDis = 0;
  float baconDis = 0;
  float campFireDis = 0;
  float cobbleDis = 0;
  float stairRightDis = 0;
  float stairLeftDis = 0;
  PImage e7;
  PImage cobbleStone;
  PImage stonePick;
  PImage campFire;
  float doorA;
  PImage stoneAxe;
  PImage bandage;
  PImage furnace;
  PImage stone;
  PImage e8;
  PImage i2;
  PImage i3;
  int bought13 = 0;
  int bought14 = 0;
  int bought15 = 0;
  int bought16 = 0;
  float doorTimer = 0;
  PImage i4;
  PImage i5;
  PImage i6;
  PImage i7;
  PImage coal;
  PImage if1;
  PImage if2;
  PImage if3;
  PImage if4;
  PImage if5;
  //
  PImage if6;
  PImage if7;
  PImage if8;
  //
  PImage ig1;
  PImage ig2;
  PImage ig3;
  PImage ig4;
  PImage ig5;
  PImage ig6;
  PImage ig7;
  PImage ig8;
  PImage rock;
  PImage redBud;
  PImage bacon;
  float bought1 = 0;
  float bought2 = 0;
  PImage arrow;
  float bought3 = 0;
  float bought4 = 0;
  float bought9 = 0;
  float bought10 = 0;
  float bought12 = 0;
  float bought11 = 0;
  PImage iron;
  PImage axe;
  float retract = 0;
  PImage ironPick;
  float countTimer1 = 0;

  float countTimer2 = 0;
  PImage ironAxe;
  float countTimer3 = 0;
  float countTimer4 = 0;

  PImage cookedBacon;
  PImage woodSword;
  PImage stoneSword;

  float iRetract = 0;
  PImage bar;
  PImage redBar;
  PImage door;
  PImage stick;
  public int inventoryPage = 1;
  float boughtTimer = 0;
  PImage plank;
  PImage check;
  float inventory = 0;
  float iDrop = 0;

  float inventoryActive = 0;
  PImage pick;
  PImage d1 ;
  PImage d2 ;
  PImage d3 ;
  PImage ironOre;
  PImage d4 ;
  PImage d5 ;
  PImage d6 ;
  PImage d7 ;
  PImage d8 ;
  float bought5 = 0;
  float bought6 = 0;
  float bought7 = 0;
  float bought8 = 0;
  float countTimer5 = 0;
  float countTimer6 = 0;
  float countTimer7 = 0;
  float imageTimer = 0;
  float countTimer9 = 0;
  float countTimer10 = 0;
  float countTimer11 = 0;
  PImage stairRight;
  PImage stairLeft;
  float countTimer12 = 0;
  //
  PImage tree;
  float countTimer8 = 0;
  PImage iT1;
  PImage iT2;
  PImage iT3;
  PImage iT4;
  PImage iT5;
  PImage iT6;
  PImage  woodAxeI ;
  PImage  woodPickI ;
  PImage stickI ;
  PImage ironPickI ;
  public int inventoryType = 1;
  PImage ironAxeI;
  PImage   arrowI;

  PImage plankI;
  PImage  furnaceI;
  PImage stonePickI;
  PImage stoneAxeI;
  PImage doorI;
  PImage cobbleStoneI;
  PImage  stairRightI;
  PImage stoneSwordI;
  int stopMake = 0;
  PImage  woodSwordI;
  int iii = 1;
  PImage arrowDownI;
  PImage arrowDownRedI;
  PImage woodFillText2;
  PImage arrowUpI;
  PImage arrowUpRedI;
  int iTimer = 0;
  int inventoryY =  -950;
  PImage chestI;
  int noUp = 0;
  int noDown = 0;
  PImage campFireI;
  int keyTimer = 0;
  PImage stairLeftI;
  int arrowOff = 0;
  int swag = 0;
  int arrowOffTimer = 0;
  int keyT = 0;
  PImage iT7;
  PImage iT8;
  PImage woodText;
  PImage woodBackText;
  PImage woodFillText;
  int stopMakeTimer = 0;
   private ArrayList<PImage> _page;
  Inventory _inventory;
 
  Hud (float xPos)
  {
        super(xPos, 0);
    _page = new ArrayList<PImage>();
    _page.add(loadImage("iT1.png"));
    _page.add(loadImage("iT2.png"));
    _page.add(loadImage("iT3.png"));
    _page.add(loadImage("iT4.png"));
    _page.add(loadImage("iT5.png"));
    _page.add(loadImage("iT6.png"));
    

    _inventory = new Inventory();
    
    _inventory.item(Inventory.PLANK).addItem(30);
    
    _inventory.item(Inventory.COBBLESTONE).addItem(9);
    _inventory.item(Inventory.DOOR).addItem(1);
    _inventory.item(Inventory.STAIRLEFT).addItem(1);
   _inventory.item(Inventory.IRONORE).addItem(2);
     _inventory.item(Inventory.CHEST).addItem(3);
     _inventory.item(Inventory.CAMPFIRE2).addItem(2);
     _inventory.item(Inventory.BACON).addItem(3);
     _inventory.item (Inventory.STICK).addItem(2);
    _inventory.item (Inventory.FURNACE).addItem(3);
    
  }
//a
  Inventory inventory()
  {
    return _inventory;
  }


  void setup()
  {
   chestMenuI = loadImage ("chestMenu1.png");
    
   
    
    arrowUpI = loadImage ("arrowUpI.png");
    arrowUpRedI = loadImage ("arrowUpRedI.png");
    arrowDownI = loadImage ("arrowDownI.png");
    arrowDownRedI = loadImage ("arrowDownRedI.png");
    heart = loadImage ("Heart.png");
    sprintPic = loadImage ("Sprint.png");
    bar = loadImage ("inventory bar.png");
    woodAxeI = loadImage ("woodAxeI.png");
    woodPickI = loadImage ("woodPickI.png");
    stickI = loadImage ("stickI.png");
    ironPickI = loadImage ("ironPickI.png");
    ironAxeI = loadImage ("ironAxeI.png");
    arrowI = loadImage ("arrowI.png");
    plankI = loadImage ("plankI.png");
    furnaceI = loadImage ("furnaceI.png");
    stonePickI = loadImage ("stonePickI.png");
    stoneAxeI = loadImage ("stoneAxeI.png");
    campFireI = loadImage ("campFireI.png");
    doorI = loadImage ("doorI.png");
    cobbleStoneI = loadImage ("cobbleStoneI.png");
    stairRightI = loadImage ("stairRightI.png");
    stoneSwordI = loadImage ("StoneSwordI.png");
    woodSwordI = loadImage ("WoodSwordI.png");
    iT8 = loadImage ("iT8.png");
    //
    chestI = loadImage ("ChestI.png");
    stairLeftI = loadImage ("stairLeftI.png");
    woodText = loadImage ("woodText.png");
   woodFillText2 = loadImage ("woodFillText2.png");
    woodBackText = loadImage ("woodBackText.png");
    woodFillText = loadImage ("woodFillText.png");
    redBar = loadImage ("inventory barR.png");
  }

  void draw()
  {  
    textSize (16);
   
    
    //
    if (key == 'n' && keyPressed)
    {
      chestMenu = 1;
    }
    if (key == 'b' && keyPressed && keyT == 0 && blockLayer == 0)
    {
      keyT = 1;
      blockLayer = 1;
    }
    else if (key =='b' && keyPressed && keyT == 0 && blockLayer == 1)
    {
      keyT = 1;
      blockLayer = 2;
    }
    else if (key =='b' && keyPressed && keyT == 0 && blockLayer == 2)
    {
      keyT = 1;
      blockLayer = 3;
    }
    else if (key == 'b' && keyPressed && keyT == 0 && blockLayer == 3)
    {
      keyT = 1;
      blockLayer = 0;
    }
    
    if (keyT == 1)
    {
      keyTimer = keyTimer + 1;
    }
    if (keyTimer > 20)
    {
      keyTimer = 0;
      keyT = 0;
    }
    if (keyT == 1 && blockLayer == 0)
    {
      image (woodText, 850, 100);
    }
    if (keyT == 1 && blockLayer == 1 )
    {
      image (woodBackText, 800, 100);
    }
    if (keyT == 1 && blockLayer == 2 )
    {
      image (woodFillText, 800, 100);
      //block zero
    }
    if (keyT == 1 && blockLayer == 3)
    {
      image (woodFillText2, 800, 100);
    }
    
    if (inventory == 1)
    {
      if (mouseY >= 100 && mouseY < 165)
      {
      if (mouseX >= 650 && mouseX < 715 && mousePressed)
      {
        inventoryPage = 1;
        inventoryType = 1;
      }
      if (mouseX >= 740 && mouseX  < 805&& mousePressed)
      {
        inventoryPage = 1;
        inventoryType = 2;
      }
      if (mouseX >= 840 && mouseX < 905&& mousePressed)
      {
        inventoryPage = 1;
        inventoryType = 3;
      }
      if (mouseX >= 930 && mouseX < 995&& mousePressed)
      {
        inventoryPage = 1;
        inventoryType = 4;
      }
      if (mouseX >= 1030 && mouseX < 1095&& mousePressed)
      {
        inventoryPage = 1;
        inventoryType = 5;
      }
      if (mouseX >= 1130 && mouseX < 1195 && mousePressed)
      {
        inventoryPage = 1;
        inventoryType = 6;
      }
      }
     image (_page.get(inventoryType - 1), - 10, -25);
     if (mouseX > 716 && mouseX < 1085 && mouseY >825 && mouseY < 860)
     {
       image (iT8, -10, - 25);
       if (mousePressed)
       {
         inventory = 0;
       }
     }
      boolean upArrow = (inventoryPage > 1);
      boolean downArrow = (false);
      int x = 675;
      int y = 200;
   if (arrowOff == 1)
   {
     arrowOffTimer = arrowOffTimer + 1;
    if (arrowOffTimer > 20)
    {
      arrowOff = 0;
      arrowOffTimer = 0;
    }
   }
      
      
      _inventory.reset();
      //explain this one line right here
      InventoryItem item = _inventory.next(true);
       //image (iT1, -10, -25);
      
      // if the item doesnt have anything there draw a item and when the mousex and mouseY is over the item make a red rectangle
      while (item != null) {
        if ((item.type() == inventoryType) && (item.page() > inventoryPage))
          {
            downArrow = true;
          }
        if ((item.type() == inventoryType) && (item.page() == inventoryPage))
        {
          item.draw(x, y);
         
          item.drawParts(_inventory, x + 150, y);
         if (stopMake == 0)
         {
          if ((mouseX > 602) && (mouseX < 1302) && (mouseY > 240) && (mouseY < 313) && (item.spot() == 1) && (item.partsAvailable(_inventory)))
          {
           fill(255, 0, 0, 100);
            rect(602, y + 40, 700, 73);
            if (mousePressed)
            {
              item.makeItem(_inventory);
              stopMake = 1;
            }
          }
          if ((mouseX > 602) && (mouseX < 1302) && (mouseY > 440) && (mouseY < 513) && (item.spot() == 2)&& (item.partsAvailable(_inventory)))
          {
           fill(255, 0, 0, 100);
            rect(602, y + 40, 700, 73);
           if (mousePressed)
            {
              item.makeItem(_inventory);
              stopMake = 1;
            }  
          }
          if ((mouseX > 602) && (mouseX < 1302) && (mouseY > 640) && (mouseY < 713) && (item.spot() == 3)&& (item.partsAvailable(_inventory)))
          {
            fill(255, 0, 0, 100);
            rect(602, y + 40, 700, 73);
             if (mousePressed)
            {
              item.makeItem(_inventory);
              stopMake = 1;
            }
          }
         }
         if (stopMake == 1)
         {
           stopMakeTimer ++;
           if (stopMakeTimer > 20)
           {
             stopMake = 0;
           }
         }
          y += 200;
        }
 if (downArrow)
       {
       image (arrowDownI, 800, 725);
       if (mouseX > 800 && mouseX < 975 && mouseY > 725 && mouseY < 775)
       {
         image (arrowDownRedI, 800, 725);
         if (mousePressed&& arrowOff == 0)
         {
           inventoryPage ++;
           arrowOff = 1;
         }
       }
       }
     
     if (upArrow)
     {
       image (arrowUpI, 800, 182);
       if (mouseX > 800 && mouseX < 975 && mouseY > 180 && mouseY < 230)
       {
         image (arrowUpRedI, 800, 182);
         if (mousePressed && arrowOff == 0)
         {
           inventoryPage --;
           arrowOff = 1;
         }
       }
     }

        //this tells it to move on right if the slots full move onto the next one until it goes null then it resets? i think thats whats going on
        item = _inventory.next(true);
      }
      

      /* if (inventoryType == 1)
       {
       image (iT1, - 10, inventoryY);
       if (inventoryPage == 1)
       {
       noUp = 1;
       noDown = 0;
       image (woodAxeI, 441, inventoryY + 300);
       image (woodPickI, 441, inventoryY + 450);
       image (stoneAxeI, 441, inventoryY+ 600);
       }
       
       
       if (inventoryPage == 2)
       {
       noDown = 1;
       noUp = 0;
       image (stonePickI, 441, inventoryY + 300);
       image (ironAxeI, 441, inventoryY + 450);
       image (ironPickI, 441, inventoryY + 600);
       }
       }
       if (inventoryType == 2)
       {
       image (iT2, - 10, inventoryY);
       if (inventoryPage == 1)
       {
       noDown = 1;
       noUp = 1;
       image (woodSwordI, 441, inventoryY + 300);
       image (stoneSwordI, 441, inventoryY + 450);
       }
       }
       if (inventoryType == 3)
       {
       image (iT3, - 10, inventoryY);
       if (inventoryPage == 1)
       {
       noUp = 1;
       noDown = 0;
       image (plankI, 441, inventoryY + 300);
       image (cobbleStoneI, 441, inventoryY + 450);
       image (stairRightI, 441, inventoryY+ 600);
       }
       if (inventoryPage == 2)
       {
       noUp = 0;
       noDown = 1;
       image (stairLeftI, 441, inventoryY + 300);
       image (doorI, 441, inventoryY + 450);
       }
       }
       if (inventoryType == 4)
       {
       image (iT4, - 10, inventoryY);
       if (inventoryPage == 1)
       {
       noUp = 1;
       noDown = 1;
       image (campFireI, 441, inventoryY + 300);
       image (furnaceI, 441, inventoryY + 450);
       image (chestI, 441, inventoryY+ 600);
       }
       }
       if (inventoryType == 5)
       {
       image (iT5, - 10, inventoryY);
       }
       if (inventoryType == 6)
       {
       image (iT6, - 10, inventoryY);
       if (inventoryPage == 1)
       {
       noUp = 1;
       noDown = 1;
       image (stickI, 441, inventoryY + 300);
       }
       }
       image (iT7, -10, inventoryY);
       if (noUp == 0)
       {
       image (arrowUpI, 810, inventoryY + 230);
       }
       if (noDown == 0)
       {
       image (arrowDownI, 810, inventoryY + 750);
       }
       if (mouseX > 810 && mouseX < 1000 && mouseY > inventoryY + 750 && mouseY < inventoryY + 800 && inventoryChange == 0 && noDown == 0)
       {
       image (arrowDownRedI, 810, inventoryY + 750);
       if (mousePressed)
       {
       
       inventoryChange = 2;
       }
       }
       if (mouseX > 810 && mouseX < 1000 && mouseY > inventoryY + 230 && mouseY < inventoryY + 280 && inventoryChange == 0 && noUp == 0)
       {
       
       image (arrowUpRedI, 810, inventoryY + 230);
       if (mousePressed)
       {
       inventoryChange = 1;
       }
       }
       
       if (inventoryChange >= 1)
       {
       ict = ict + 1;
       if (ict == 5 && inventoryChange == 1)
       {
       inventoryPage = inventoryPage - 1;
       }
       if (ict == 5 && inventoryChange == 2)
       {
       inventoryPage = inventoryPage + 1;
       }
       if (ict == 8)
       {
       ict = 0;
       inventoryChange = 0;
       }
       }
       if (mouseY > inventoryY + 80 && mouseY <inventoryY + 162 && mousePressed)
       {
       if (mouseX > 647 && mouseX < 715)
       {
       inventoryType = 1;
       inventoryPage = 1;
       }
       if (mouseX > 742 && mouseX < 807)
       {
       inventoryType = 2;
       inventoryPage = 1;
       }
       
       if (mouseX > 836 && mouseX < 900)
       {
       inventoryType = 3;
       inventoryPage = 1;
       }
       if (mouseX > 931 && mouseX < 996)
       {
       inventoryType = 4;
       inventoryPage = 1;
       }
       if (mouseX >  1032&& mouseX < 1097)
       {
       inventoryType = 5;
       inventoryPage = 1;
       }
       if (mouseX > 1131 && mouseX < 1196)
       {
       inventoryType = 6;
       inventoryPage = 1;
       }
       }
       if (mouseX > 441 && mouseX < 1300)
       {
       if (mouseY > inventoryY + 350 && mouseY < inventoryY + 435)
       {
       rect (441, inventoryY + 350, 950, 85);
       if (mousePressed)
       {
       if (inventoryType == 1)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.WOODAXE).addItem(1);
       }
       if (inventoryPage == 2)
       {
       hud.inventory().item(Inventory.STONEPICK).addItem(1);
       }
       }
       if (inventoryType == 2)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.WOODSWORD).addItem(1);
       }
       }
       if (inventoryType == 3)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.PLANK).addItem(1);
       }
       if (inventoryPage == 2)
       {
       hud.inventory().item(Inventory.STAIRLEFT).addItem(1);
       }
       }
       if (inventoryType == 4)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.CAMPFIRE2).addItem(1);
       }
       }
       if (inventoryType == 6)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.STICK).addItem(1);
       }
       }
       }
       }
       if (mouseY > inventoryY + 500 && mouseY < inventoryY + 585)
       {
       rect (441, inventoryY+ 500, 950, 85);
       if (mousePressed)
       {
       if (inventoryType == 1)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.WOODPICK).addItem(1);
       }
       if (inventoryPage == 2)
       {
       hud.inventory().item(Inventory.IRONAXE).addItem(1);
       }
       }
       if (inventoryType == 2)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.STONESWORD).addItem(1);
       }
       }
       if (inventoryType == 3)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.COBBLESTONE).addItem(1);
       }
       if (inventoryPage == 2)
       {
       hud.inventory().item(Inventory.DOOR).addItem(1);
       }
       }
       if (inventoryType == 4)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.FURNACE).addItem(1);
       }
       }
       }
       }
       if (mouseY > inventoryY + 650 && mouseY < inventoryY + 735)
       {
       rect (441, inventoryY+ 650, 950, 85);
       if (mousePressed)
       {
       if (inventoryType == 1)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.STONEAXE).addItem(1);
       }
       if (inventoryPage == 2)
       {
       hud.inventory().item(Inventory.IRONPICK).addItem(1);
       }
       }
       if (inventoryType == 2)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.STONESWORD).addItem(1);
       }
       }
       if (inventoryType == 3)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.STAIRRIGHT).addItem(1);
       }
       }
       if (inventoryType == 4)
       {
       if (inventoryPage == 1)
       {
       hud.inventory().item(Inventory.CHEST).addItem(1);
       }
       }
       }
       }
       }
       */

      if (mouseX > 710 && mouseX < 1107 && mouseY > inventoryY + 825 && mouseY < inventoryY + 900)
      {
        image (iT8, -10, inventoryY);
        if (mousePressed)
        {
          inventoryRetract = 1;
        }
      }
    }
    if (inventoryRetract == 1)
    {
      inventoryY = inventoryY - 10;
    }
    if (inventoryY < -950 && inventoryRetract == 1)
    {
      inventoryRetract = 0;
      inventory = 0;
    }
    if (inventoryRetract == 2)
    {
      inventoryY = inventoryY + 10;
    }
    if (inventoryY > - 20 && inventoryRetract == 2)
    {
      inventoryRetract = 0;
    }
    //hid
    fill (0, 0, 0);
    rect (95, 95, 260, 40);
    rect (95, 45, 310, 40);
    fill (0, 225, 0);
    rect (100, 100, sprintRecover/ 2, 30);
    fill (225, 0, 0);
    rect (100, 50, health, 30);
    fill (0, 0, 0);

    rect (width/3, 10, 513, 50, 100);
    fill (225);
    rect (width/ 3 + 10, 13, 45, 45, 100);
    fill ( 225);
    rect (width/ 3 + 60, 13, 45, 45, 100);
    rect (width/ 3 + 110, 13, 45, 45, 100);
    rect (width/ 3 + 160, 13, 45, 45, 100);
    rect (width/ 3 + 210, 13, 45, 45, 100);
    rect (width/ 3 + 260, 13, 45, 45, 100);
    rect (width/ 3 + 310, 13, 45, 45, 100);
    rect (width/ 3 + 360, 13, 45, 45, 100);
    rect (width/ 3 + 410, 13, 45, 45, 100);
    rect (width/ 3 + 460, 13, 45, 45, 100);
    image (heart, 50, 60);
    image (sprintPic, 50, 110);
    fill (255, 0, 0);
if (chestMenu == 1||campFireMenu == 1 || furnaceMenu == 1)
 {
   if (chestMenu == 1 )
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
       /* rect (838, 621, 34, 34);
        rect (895, 623, 34, 34);
        rect (952, 623, 34, 34);
        rect (1009, 623, 34, 34);
        rect (1066, 623, 34, 34);
        rect (1124, 623, 34, 34);
        */
        if (chestTransferValue2 != -1)
        {
          _inventory.item(chestTransferValue2).addItem(removeCount);
     chestTransferValue2 = - 1;
        }
  int  x = 838;
  int  y = 568;
 _inventory.reset();
      InventoryItem item = _inventory.next2();
    //InventoryItem item = _inventory.next(false);
   
    while (item != null) {
      item.chestDraw(x, y);
      if ((mouseX >= x) && (mouseX <= (x + 40)) && (mouseY >= y) && (mouseY <= y + 30)) {
        fill(255, 0, 0, 100);
        rect(x, y, 34, 34);
      }
      
      item = _inventory.next2();
      x += 57;
    }
 }
    int x = 650;
    int y = 20;

    _inventory.reset();
    //explain this one line right here
    InventoryItem item = _inventory.next(false);
    // if the item doesnt have anything there draw a item and when the mousex and mouseY is over the item make a red rectangle
    while (item != null) {
      item.drawCount(x, y);
      if ((mouseX >= x) && (mouseX <= (x + 40)) && (mouseY >= 20) && (mouseY <= 50)) {
        fill(255, 0, 0, 100);
        rect(x - 7, 13, 45, 45, 100);
      }
      //this tells it to move on right if the slots full move onto the next one until it goes null then it resets? i think thats whats going on
      item = _inventory.next(false);
      x += 50;
    }
 


    /* if (stickCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (stick, 650, 20);
     text (stickCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 1;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (stick, 700, 20);
     text (stickCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 1;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (stick, 750, 20);
     text (stickCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 1;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (stick, 800, 20);
     text (stickCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 1;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (stick, 850, 20);
     text (stickCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 1;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (stick, 900, 20);
     text (stickCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 1;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (stick, 950, 20);
     text (stickCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 1;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (stick, 1000, 20);
     text (stickCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 1;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (stick, 1050, 20);
     text (stickCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 1;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (stick, 1100, -80);
     }
     }
     if (arrowCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (arrow, 650, 20);
     text (arrowCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 2;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (arrow, 700, 20);
     text (arrowCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 2;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (arrow, 750, 20);
     text (arrowCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 2;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (arrow, 800, 20);
     text (arrowCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 2;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (arrow, 850, 20);
     text (arrowCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 2;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (arrow, 900, 20);
     text (arrowCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 2;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (arrow, 950, 20);
     text (arrowCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 2;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (arrow, 1000, 20);
     text (arrowCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 2;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (arrow, 1050, 20);
     text (arrowCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 2;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (arrow, 1100, -80);
     }
     }
     
     if (needleCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (needle, 650, 20);
     text (needleCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 26;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (needle, 700, 20);
     text (needleCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 26;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (needle, 750, 20);
     text (needleCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 26;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (needle, 800, 20);
     text (needleCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 26;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (needle, 850, 20);
     text (needleCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 26;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (needle, 900, 20);
     text (needleCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 26;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (needle, 950, 20);
     text (needleCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 26;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (needle, 1000, 20);
     text (needleCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 26;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (needle, 1050, 20);
     text (needleCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 26;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (needle, 1100, -80);
     }
     }
     if (stoneAxeCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (stoneAxe, 650, 20);
     text (stoneAxeCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 4;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (stoneAxe, 700, 20);
     text (stoneAxeCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 4;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (stoneAxe, 750, 20);
     text ( stoneAxeCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 4;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (stoneAxe, 800, 20);
     text (stoneAxeCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 4;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (stoneAxe, 850, 20);
     text (stoneAxeCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 4;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (stoneAxe, 900, 20);
     text ( stoneAxeCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 4;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (stoneAxe, 950, 20);
     text (stoneAxeCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 4;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (stoneAxe, 1000, 20);
     text ( stoneAxeCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 4;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (stoneAxe, 1050, 20);
     text (stoneAxeCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 4;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (stoneAxe, 1100, -80);
     }
     }
     if (stonePickCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (stonePick, 650, 20);
     text (stonePickCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 5;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (stonePick, 700, 20);
     text (stonePickCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 5;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (stonePick, 750, 20);
     text (stonePickCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 5;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (stonePick, 800, 20);
     text (stonePickCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 5;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (stonePick, 850, 20);
     text (stonePickCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 5;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (stonePick, 900, 20);
     text (stonePickCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 5;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (stonePick, 950, 20);
     text (stonePickCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 5;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (stonePick, 1000, 20);
     text (stonePickCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 5;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (stonePick, 1050, 20);
     text (stonePickCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 5;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (stonePick, 1100, -80);
     }
     }
     if (ironOreCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (ironOre, 650, 20);
     text (ironOreCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (fm == 1 && cookSlot == 0 && mousePressed)
     {
     cookSlot = 1;
     cookType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 6;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (ironOre, 700, 20);
     text (ironOreCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (fm == 1 && cookSlot == 0 && mousePressed)
     {
     cookSlot = 1;
     cookType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 6;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (ironOre, 750, 20);
     text (ironOreCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (fm == 1 && cookSlot == 0 && mousePressed)
     {
     cookSlot = 1;
     cookType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 6;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (ironOre, 800, 20);
     text (ironOreCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (fm == 1 && cookSlot == 0 && mousePressed)
     {
     cookSlot = 1;
     cookType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 6;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (ironOre, 850, 20);
     text (ironOreCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (fm == 1 && cookSlot == 0 && mousePressed)
     {
     cookSlot = 1;
     cookType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 6;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (ironOre, 900, 20);
     text (ironOreCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (fm == 1 && cookSlot == 0 && mousePressed)
     {
     cookSlot = 1;
     cookType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 6;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (ironOre, 950, 20);
     text (ironOreCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (fm == 1 && cookSlot == 0 && mousePressed)
     {
     cookSlot = 1;
     cookType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 6;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (ironOre, 1000, 20);
     text (ironOreCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (fm == 1 && cookSlot == 0 && mousePressed)
     {
     cookSlot = 1;
     cookType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 6;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (ironOre, 1050, 20);
     text (ironOreCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (fm == 1 && cookSlot == 0 && mousePressed)
     {
     cookSlot = 1;
     cookType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 6;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (ironOre, 1100, -80);
     }
     }
     
     if (woodSwordCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (woodSword, 650, 20);
     text (woodSwordCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 28;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (woodSword, 700, 20);
     text (woodSwordCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 28;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (woodSword, 750, 20);
     text (woodSwordCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 28;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (woodSword, 800, 20);
     text (woodSwordCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 28;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (woodSword, 850, 20);
     text (woodSwordCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 28;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (woodSword, 900, 20);
     text (woodSwordCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 28;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (woodSword, 950, 20);
     text (woodSwordCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 28;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (woodSword, 1000, 20);
     text (woodSwordCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 28;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (woodSword, 1050, 20);
     text (woodSwordCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 28;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (woodSword, 1100, -80);
     }
     }
     if (rockCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (rock, 650, 20);
     text (rockCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 7;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (rock, 700, 20);
     text (rockCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 7;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (rock, 750, 20);
     text (rockCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 7;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (rock, 800, 20);
     text (rockCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 7;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (rock, 850, 20);
     text (rockCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 7;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (rock, 900, 20);
     text (rockCount, 910, 57);
     
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 7;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (rock, 950, 20);
     text (rockCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 7;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (rock, 1000, 20);
     text (rockCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 7;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (rock, 1050, 20);
     text (rockCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 7;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (rock, 1100, -80);
     }
     }
     if (coalCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (coal, 650, 20);
     text (coalCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed || fm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 8;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (coal, 700, 20);
     text (coalCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed|| fm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 8;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (coal, 750, 20);
     text (coalCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed|| fm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 8;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (coal, 800, 20);
     text (coalCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed|| fm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 8;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (coal, 850, 20);
     text (coalCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed|| fm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 8;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (coal, 900, 20);
     text (coalCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed|| fm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 8;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (coal, 950, 20);
     text (coalCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed|| fm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 8;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (coal, 1000, 20);
     text (coalCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed|| fm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 8;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (coal, 1050, 20);
     text (coalCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cfm == 1 && fuelSlot == 0 && mousePressed|| fm == 1 && fuelSlot == 0 && mousePressed)
     {
     fuelSlot = 1;
     fuelType = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 8;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (coal, 1100, -80);
     }
     }
     if (redBudCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (redBud, 650, 20);
     text (redBudCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 9;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (redBud, 700, 20);
     text (redBudCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 9;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (redBud, 750, 20);
     text (redBudCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 9;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (redBud, 800, 20);
     text (redBudCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 9;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (redBud, 850, 20);
     text (redBudCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     }
     }
     else if (get (900, 20) == color (225)) {
     image (redBud, 900, 20);
     text (redBudCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 9;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (redBud, 950, 20);
     text (redBudCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 9;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (redBud, 1000, 20);
     text (redBudCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 9;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (redBud, 1050, 20);
     text (redBudCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 9;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (redBud, 1100, -80);
     }
     }
     if (baconCount >= 1)
     {
     baconDis = 1;
     if (get (650, 20) == color (225)) {
     image (bacon, 650, 20);
     text (baconCount, 660, 57);
     if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (mousePressed && cookSlot == 0 && cfm == 1)
     {
     cookType = 1;
     cookSlot = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 10;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (bacon, 700, 20);
     text (baconCount, 710, 57);
     if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (mousePressed && cookSlot == 0 && cfm == 1)
     {
     cookType = 1;
     cookSlot = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 10;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (bacon, 750, 20);
     text (baconCount, 760, 57);
     if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (mousePressed && cookSlot == 0 && cfm == 1)
     {
     cookType = 1;
     cookSlot = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 10;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (bacon, 800, 20);
     text (baconCount, 810, 57);
     if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (mousePressed && cookSlot == 0 && cfm == 1)
     {
     cookType = 1;
     cookSlot = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 10;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (bacon, 850, 20);
     text (baconCount, 860, 57);
     if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (mousePressed && cookSlot == 0 && cfm == 1)
     {
     cookType = 1;
     cookSlot = 1;
     }
     }
     
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     }
     }
     else if (get (900, 20) == color (225)) {
     image (bacon, 900, 20);
     text (baconCount, 910, 57);
     if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (mousePressed && cookSlot == 0 && cfm == 1)
     {
     cookType = 1;
     cookSlot = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 10;
     chestPlace = 1;
     }
     }
     
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (bacon, 950, 20);
     text (baconCount, 960, 57);
     if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (mousePressed && cookSlot == 0 && cfm == 1)
     {
     cookType = 1;
     cookSlot = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 10;
     chestPlace = 1;
     }
     }
     
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (bacon, 1000, 20);
     text (baconCount, 1010, 57);
     if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (mousePressed && cookSlot == 0 && cfm == 1)
     {
     cookType = 1;
     cookSlot = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 10;
     chestPlace = 1;
     }
     }
     
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (bacon, 1050, 20);
     text (baconCount, 1060, 57);
     if (mouseX > 1050 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (mousePressed && cookSlot == 0 && cfm == 1)
     {
     cookType = 1;
     cookSlot = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 10;
     chestPlace = 1;
     }
     }
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (bacon, 1100, -80);
     }
     }
     else if (baconDis == 1)
     {
     clickDis = 1;
     baconDis = 0;
     }
     if (timer4 == 500)
     {
     baconCount = baconCount - 1;
     timer4 = 0;
     }
     if (pickCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (pick, 650, 20);
     text (pickCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (pick, 700, 20);
     text (pickCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 760 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (pick, 750, 20);
     text (pickCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (pick, 800, 20);
     text (pickCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (pick, 850, 20);
     text (pickCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (pick, 900, 20);
     text (pickCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (pick, 950, 20);
     text (pickCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (pick, 1000, 20);
     text (pickCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (pick, 1050, 20);
     text (pickCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }
     else if (get (1100, 20) == color (225)) {
     image (pick, 1100, 20);
     text (pickCount, 1110, 57);
     if (mouseX >= 1100 && mouseX <= 1140 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (1093, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 11;
     chestPlace = 1;
     }
     }
     }
     else
     {
     }
     }
     if (cookedBaconCount >= 1)
     {
     cookedBaconDis = 1;
     if (get (650, 20) == color (225)) {
     image (cookedBacon, 650, 20);
     text (cookedBaconCount, 660, 57);
     if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (mousePressed && health < 300 && cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 12;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (cookedBacon, 700, 20);
     text (cookedBaconCount, 710, 57);
     if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (mousePressed && health < 300&& cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 12;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (cookedBacon, 750, 20);
     text (cookedBaconCount, 760, 57);
     if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (mousePressed && health < 300&& cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 12;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (cookedBacon, 800, 20);
     text (cookedBaconCount, 810, 57);
     if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (mousePressed && health < 300&& cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 12;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (cookedBacon, 850, 20);
     text (cookedBaconCount, 860, 57);
     if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (mousePressed&& health < 300&& cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 12;
     chestPlace = 1;
     }
     }
     
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (mousePressed&& health < 300&& cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (cookedBacon, 900, 20);
     text (cookedBaconCount, 910, 57);
     if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (mousePressed && health < 300&& cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 12;
     chestPlace = 1;
     }
     }
     
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (cookedBacon, 950, 20);
     text (cookedBaconCount, 960, 57);
     if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (mousePressed && health < 300&& cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 12;
     chestPlace = 1;
     }
     }
     
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (cookedBacon, 1000, 20);
     text (cookedBaconCount, 1010, 57);
     if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (mousePressed&& health < 300&& cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 12;
     chestPlace = 1;
     }
     }
     
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (cookedBacon, 1050, 20);
     text (cookedBaconCount, 1060, 57);
     if (mouseX > 1050 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (mousePressed&& health < 300&& cm == 0)
     {
     baconUseTimer = baconUseTimer + 1;
     health = health  +1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 12;
     chestPlace = 1;
     }
     }
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (cookedBacon, 1100, -80);
     }
     }
     else if (cookedBaconDis == 1)
     {
     clickDis = 1;
     cookedBaconDis = 0;
     }
     if (baconUseTimer > 60)
     {
     cookedBaconCount = cookedBaconCount - 1;
     baconUseTimer = 0;
     }
     if (axeCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (axe, 650, 20);
     text (axeCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (axe, 700, 20);
     text (axeCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (axe, 750, 20);
     text (axeCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (axe, 800, 20);
     text (axeCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (axe, 850, 20);
     text (axeCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (axe, 900, 20);
     text (axeCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (axe, 950, 20);
     text (axeCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (axe, 1000, 20);
     text (axeCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (axe, 1050, 20);
     text (axeCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }
     else if (get (1100, 20) == color (225)) {
     image (axe, 1100, 20);
     text (axeCount, 1110, 57);
     if (mouseX >= 1100 && mouseX <= 1140 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (1093, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 13;
     chestPlace = 1;
     }
     }
     }
     else
     {
     }
     }
     if (bandageCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (bandage, 650, 20);
     text (bandageCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     text (bandageCount, 710, 57);
     
     if (cm == 1 && mousePressed)
     {
     storeType = 14;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (bandage, 700, 20);
     text (bandageCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 14;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (bandage, 750, 20);
     text (bandageCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 14;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (bandage, 800, 20);
     text (bandageCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 14;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (bandage, 850, 20);
     text (bandageCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 14;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (bandage, 900, 20);
     text (bandageCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 14;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (bandage, 950, 20);
     text (bandageCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 14;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (bandage, 1000, 20);
     text (bandageCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 14;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (bandage, 1050, 20);
     text (bandageCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 14;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1110 && mouseX <= 1140 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (bandage, 1100, -80);
     }
     }
     if (doorCount >= 1)
     {
     doorDis = 1;
     if (get (650, 20) == color (225)) {
     image (door, 650, 20);
     text (doorCount, 660, 57);
     if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 15;
     chestPlace = 1;
     }
     }
     else
     {
     doorProject = 0;
     }
     }
     else if (get (700, 20) == color (225)) {
     image (door, 700, 20);
     text (doorCount, 710, 57);
     if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 15;
     chestPlace = 1;
     }
     }
     else
     {
     doorProject = 0;
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (door, 750, 20);
     text (doorCount, 760, 57);
     if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 15;
     chestPlace = 1;
     }
     }
     else 
     {
     doorProject = 0;
     }
     }
     else if (get (800, 20) == color (225)) {
     image (door, 800, 20);
     text (doorCount, 810, 57);
     if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 15;
     chestPlace = 1;
     }
     }
     else
     {
     doorProject = 0;
     }
     }
     else if (get (850, 20) == color (225)) {
     image (door, 850, 20);
     text (doorCount, 860, 57);
     if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 15;
     chestPlace = 1;
     }
     }
     else
     {
     doorProject = 0;
     }
     }
     else if (get (900, 20) == color (225)) {
     image (door, 900, 20);
     text (doorCount, 910, 57);
     if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     }
     else
     {
     doorProject = 0;
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (door, 950, 20);
     text (doorCount, 960, 57);
     if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 15;
     chestPlace = 1;
     }
     }
     else
     {
     doorProject = 0;
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (door, 1000, 20);
     text (doorCount, 1010, 57);
     if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 15;
     chestPlace = 1;
     }
     }
     else
     {
     doorProject = 0;
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (door, 1050, 20);
     text (doorCount, 1060, 57);
     if (mouseX > 1050 && mouseX < 1090 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 15;
     chestPlace = 1;
     }
     }
     else 
     {
     doorProject = 0;
     }
     }
     else if (get (1100, 20) == color (225)) {
     image (door, 1100, 20);
     text (doorCount, 1110, 57);
     if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1093, 13, 45, 45, 100);
     doorProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0 && backWallActive == 0)
     {
     woodDeploy = 1;
     blockType = 2;
     doorA = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 15;
     chestPlace = 1;
     }
     }
     else
     {
     doorProject = 1;
     }
     }
     else
     {
     }
     }
     else if (doorDis == 1)
     {
     doorDis = 0;
     clickDis = 1;
     }
     else
     {
     doorProject = 0;
     }
     if (ironAxeCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (ironAxe, 650, 20);
     text (ironAxeCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 16;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (ironAxe, 700, 20);
     text (ironAxeCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 16;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (ironAxe, 750, 20);
     text (ironAxeCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 16;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (ironAxe, 800, 20);
     text (ironAxeCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 16;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (ironAxe, 850, 20);
     text (ironAxeCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 16;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (ironAxe, 900, 20);
     text (ironAxeCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 16;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (ironAxe, 950, 20);
     text (ironAxeCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 16;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (ironAxe, 1000, 20);
     text (ironAxeCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 16;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (ironAxe, 1050, 20);
     text (ironAxeCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 16;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     }
     }
     
     if (stairLeftCount >= 1)
     {
     stairLeftDis = 1;
     if (get (650, 20) == color (225)) {
     image (stairLeft, 650, 20);
     text (stairLeftCount, 660, 57);
     
     if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else
     {
     stairLeftProject = 0;
     }
     }
     else if (get (700, 20) == color (225)) {
     image (stairLeft, 700, 20);
     text (stairLeftCount, 710, 57);
     if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else
     {
     stairLeftProject = 0;
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (stairLeft, 750, 20);
     text (stairLeftCount, 760, 57);
     if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else 
     {
     stairLeftProject = 0;
     }
     }
     else if (get (800, 20) == color (225)) {
     image (stairLeft, 800, 20);
     text (stairLeftCount, 810, 57);
     if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else
     {
     stairLeftProject = 0;
     }
     }
     else if (get (850, 20) == color (225)) {
     image (stairLeft, 850, 20);
     text (stairLeftCount, 860, 57);
     if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else
     {
     stairLeftProject = 0;
     }
     }
     else if (get (900, 20) == color (225)) {
     image (stairLeft, 900, 20);
     text (stairLeftCount, 910, 57);
     if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else
     {
     stairLeftProject = 0;
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (stairLeft, 950, 20);
     text (stairLeftCount, 960, 57);
     if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else
     {
     stairLeftProject = 0;
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (stairLeft, 1000, 20);
     text (stairLeftCount, 1010, 57);
     if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else
     {
     stairLeftProject = 0;
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (stairLeft, 1050, 20);
     text (stairLeftCount, 1060, 57);
     if (mouseX > 1050 && mouseX < 1090 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else 
     {
     stairLeftProject = 0;
     }
     }
     else if (get (1100, 20) == color (225)) {
     image (stairLeft, 1100, 20);
     text (stairLeftCount, 1110, 57);
     if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1093, 13, 45, 45, 100);
     stairLeftProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 3;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 17;
     chestPlace = 1;
     }
     }
     else
     {
     stairLeftProject = 1;
     }
     }
     else
     {
     }
     }
     else if (stairLeftDis == 1)
     {
     stairLeftDis = 0;
     clickDis = 1;
     }
     else
     {
     stairLeftProject = 0;
     }
     if (cobbleStoneCount >= 1)
     {
     cobbleDis = 1;
     if (get (650, 20) == color (225)) {
     image (cobbleStone, 650, 20);
     text (cobbleStoneCount, 660, 57);
     if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else
     {
     cobbleProject = 0;
     }
     }
     else if (get (700, 20) == color (225)) {
     image (cobbleStone, 700, 20);
     text (cobbleStoneCount, 710, 57);
     if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else
     {
     cobbleProject = 0;
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (cobbleStone, 750, 20);
     
     text (cobbleStoneCount, 760, 57);
     if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else 
     {
     cobbleProject = 0;
     }
     }
     else if (get (800, 20) == color (225)) {
     image (cobbleStone, 800, 20);
     text (cobbleStoneCount, 810, 57);
     if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else
     {
     cobbleProject = 0;
     }
     }
     else if (get (850, 20) == color (225)) {
     image (cobbleStone, 850, 20);
     text (cobbleStoneCount, 860, 57);
     if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else
     {
     cobbleProject = 0;
     }
     }
     else if (get (900, 20) == color (225)) {
     image (cobbleStone, 900, 20);
     text (cobbleStoneCount, 910, 57);
     if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else
     {
     cobbleProject = 0;
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (cobbleStone, 950, 20);
     text (cobbleStoneCount, 960, 57);
     if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else
     {
     cobbleProject = 0;
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (cobbleStone, 1000, 20);
     text (cobbleStoneCount, 1010, 57);
     if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else
     {
     cobbleProject = 0;
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (cobbleStone, 1050, 20);
     text (cobbleStoneCount, 1060, 57);
     if (mouseX > 1050 && mouseX < 1090 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else 
     {
     cobbleProject = 0;
     }
     }
     else if (get (1100, 20) == color (225)) {
     image (cobbleStone, 1100, 20);
     text (cobbleStoneCount, 1110, 57);
     if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1093, 13, 45, 45, 100);
     cobbleProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 1;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 18;
     chestPlace = 1;
     }
     }
     else
     {
     cobbleProject = 1;
     }
     }
     else
     {
     }
     }
     else if (cobbleDis == 1)
     {
     cobbleDis = 0;
     clickDis = 1;
     }
     else
     {
     cobbleProject = 0;
     }
     if (stairRightCount >= 1)
     {
     stairRightDis = 1;
     
     if (get (650, 20) == color (225)) {
     image (stairRight, 650, 20);
     text (stairRightCount, 660, 57);
     if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else
     {
     stairRightProject = 0;
     }
     }
     else if (get (700, 20) == color (225)) {
     image (stairRight, 700, 20);
     text (stairRightCount, 710, 57);
     if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else
     {
     stairRightProject = 0;
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (stairRight, 750, 20);
     text (stairRightCount, 760, 57);
     if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else 
     {
     stairRightProject = 0;
     }
     }
     else if (get (800, 20) == color (225)) {
     image (stairRight, 800, 20);
     text (stairRightCount, 810, 57);
     if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else
     {
     stairRightProject = 0;
     }
     }
     else if (get (850, 20) == color (225)) {
     image (stairRight, 850, 20);
     text (stairRightCount, 860, 57);
     if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else
     {
     stairRightProject = 0;
     }
     }
     else if (get (900, 20) == color (225)) {
     image (stairRight, 900, 20);
     text (stairRightCount, 910, 57);
     if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else
     {
     stairRightProject = 0;
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (stairRight, 950, 20);
     text (stairRightCount, 960, 57);
     if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else
     {
     stairRightProject = 0;
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (stairRight, 1000, 20);
     text (stairRightCount, 1010, 57);
     if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else
     {
     stairRightProject = 0;
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (stairRight, 1050, 20);
     text (stairRightCount, 1060, 57);
     if (mouseX > 1050 && mouseX < 1090 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else 
     {
     stairRightProject = 0;
     }
     }
     else if (get (1100, 20) == color (225)) {
     image (stairRight, 1100, 20);
     text (stairRightCount, 1110, 57);
     if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1093, 13, 45, 45, 100);
     stairRightProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 4;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 19;
     chestPlace = 1;
     }
     }
     else
     {
     stairRightProject = 1;
     }
     }
     else
     {
     }
     }
     else if (stairRightDis == 1)
     {
     stairRightDis = 0;
     clickDis = 0;
     }
     else
     {
     stairRightProject = 0;
     }
     if (campFireCount >= 1)
     {
     campFireDis = 0;
     if (get (650, 20) == color (225)) {
     image (campFire, 650, 20);
     text (campFireCount, 660, 57);
     if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0 && cm == 0)
     {
     
     placeGo = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 20;
     chestPlace = 1;
     }
     }
     
     else
     {
     campFireProject = 0;
     }
     }
     else if (get (700, 20) == color (225)) {
     image (campFire, 700, 20);
     text (campFireCount, 710, 57);
     if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     placeGo = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 20;
     chestPlace = 1;
     }
     }
     else
     {
     campFireProject = 0;
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (campFire, 750, 20);
     textSize (11);
     text (campFireCount, 760, 57);
     if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     placeGo = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 20;
     chestPlace = 1;
     }
     }
     else 
     {
     campFireProject = 0;
     }
     }
     else if (get (800, 20) == color (225)) {
     image (campFire, 800, 20);
     text (campFireCount, 810, 57);
     if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     placeGo = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 20;
     chestPlace = 1;
     }
     }
     else
     {
     campFireProject = 0;
     }
     }
     else if (get (850, 20) == color (225)) {
     image (campFire, 850, 20);
     text (campFireCount, 860, 57);
     if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     placeGo = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 20;
     chestPlace = 1;
     }
     }
     else
     {
     campFireProject = 0;
     }
     }
     else if (get (900, 20) == color (225)) {
     image (campFire, 900, 20);
     text (campFireCount, 910, 57);
     if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     placeGo = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 20;
     chestPlace = 1;
     }
     }
     else
     {
     campFireProject = 0;
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (campFire, 950, 20);
     text (campFireCount, 960, 57);
     if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     placeGo = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 20;
     chestPlace = 1;
     }
     }
     else
     {
     campFireProject = 0;
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (campFire, 1000, 20);
     text (campFireCount, 1010, 57);
     if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     placeGo = 1;
     }
     }
     else
     {
     campFireProject = 0;
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (campFire, 1050, 20);
     text (campFireCount, 1060, 57);
     if (mouseX > 1050 && mouseX < 1090 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     placeGo = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 20;
     chestPlace = 1;
     }
     }
     else 
     {
     campFireProject = 0;
     }
     }
     else if (get (1100, 20) == color (225)) {
     image (campFire, 1100, 20);
     text (campFireCount, 1110, 57);
     if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1093, 13, 45, 45, 100);
     campFireProject = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     placeGo = 1;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 20;
     chestPlace = 1;
     }
     }
     else
     {
     campFireProject = 1;
     }
     }
     else
     {
     }
     }
     else if (campFireDis == 1)
     {
     campFireDis = 0;
     clickDis = 1;
     }
     else
     {
     campFireProject = 0;
     }
     if (furnaceCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (furnace, 650, 20);
     text (furnaceCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (mousePressed && cm == 0)
     {
     placeGo = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 21;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (furnace, 700, 20);
     text (furnaceCount, 710, 57);
     
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     
     if (mousePressed&& cm == 0)
     {
     placeGo = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 21;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (furnace, 750, 20);
     text (furnaceCount, 760, 57);
     
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (mousePressed&& cm == 0)
     {
     placeGo = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 21;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (furnace, 800, 20);
     text (furnaceCount, 810, 57);
     
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     
     if (mousePressed&& cm == 0)
     {
     placeGo = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 21;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (furnace, 850, 20);
     text (furnaceCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (mousePressed&& cm == 0)
     {
     placeGo = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 21;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (furnace, 900, 20);
     text (furnaceCount, 910, 57);
     
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (mousePressed&& cm == 0)
     {
     placeGo = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 21;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (furnace, 950, 20);
     text (furnaceCount, 960, 57);
     
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (mousePressed&& cm == 0)
     {
     placeGo = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 21;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (furnace, 1000, 20);
     text (furnaceCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (mousePressed&& cm == 0)
     {
     placeGo = 2;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 21;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (furnace, 1050, 20);
     text (furnaceCount, 1060, 57);
     
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (mousePressed&& cm == 0)
     {
     placeGo = 2;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (furnace, 1100, -80);
     }
     }
     if (ironPickCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (ironPick, 650, 20);
     text (ironPickCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 22;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (ironPick, 700, 20);
     text (ironPickCount, 710, 57);
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 22;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (ironPick, 750, 20);
     text (ironPickCount, 760, 57);
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 22;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (ironPick, 800, 20);
     text (ironPickCount, 810, 57);
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 22;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (ironPick, 850, 20);
     text (ironPickCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 22;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (ironPick, 900, 20);
     text (ironPickCount, 910, 57);
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 22;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (ironPick, 950, 20);
     text (ironPickCount, 960, 57);
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 22;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (ironPick, 1000, 20);
     text (ironPickCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 22;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (ironPick, 1050, 20);
     text (ironPickCount, 1060, 57);
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (cm == 1 && mousePressed)
     {
     storeType = 22;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     }
     }
     if (chestCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (chest, 650, 20);
     text (chestCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     if (mousePressed && cm == 0)
     {
     placeGo = 3;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 23;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (chest, 700, 20);
     text (chestCount, 710, 57);
     
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     
     if (mousePressed && cm == 0)
     {
     placeGo = 3;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 23;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (chest, 750, 20);
     text (chestCount, 760, 57);
     
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     if (mousePressed && cm == 0)
     {
     placeGo = 3;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 23;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (chest, 800, 20);
     text (chestCount, 810, 57);
     
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     
     if (mousePressed && cm == 0)
     {
     placeGo = 3;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 23;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (chest, 850, 20);
     text (chestCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     if (mousePressed && cm == 0)
     {
     placeGo = 3;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 23;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (chest, 900, 20);
     text (chestCount, 910, 57);
     
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     if (mousePressed && cm == 0)
     {
     placeGo = 3;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 23;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (chest, 950, 20);
     text (chestCount, 960, 57);
     
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     if (mousePressed && cm == 0)
     {
     placeGo = 3;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 23;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (chest, 1000, 20);
     text (chestCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     if (mousePressed && cm == 0)
     {
     placeGo = 3;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 23;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (chest, 1050, 20);
     text (chestCount, 1060, 57);
     
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     if (mousePressed && cm == 0)
     {
     placeGo = 3;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 23;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (chest, 1100, -80);
     }
     }
     if (treeCount >= 1)
     {
     if (get (650, 20) == color (225)) {
     image (tree, 650, 20);
     text (treeCount, 660, 57);
     if (mouseX >= 650 && mouseX <= 690 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     
     if (cm == 1 && mousePressed)
     {
     storeType = 25;
     chestPlace = 1;
     }
     }
     }
     else if (get (700, 20) == color (225)) {
     image (tree, 700, 20);
     text (treeCount, 710, 57);
     
     if (mouseX >= 700 && mouseX <= 740 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     
     
     if (cm == 1 && mousePressed)
     {
     storeType = 25;
     chestPlace = 1;
     }
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (tree, 750, 20);
     text (treeCount, 760, 57);
     
     if (mouseX >= 750 && mouseX <= 790 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     
     if (cm == 1 && mousePressed)
     {
     storeType = 25;
     chestPlace = 1;
     }
     }
     }
     else if (get (800, 20) == color (225)) {
     image (tree, 800, 20);
     text (treeCount, 810, 57);
     
     if (mouseX >= 800 && mouseX <= 840 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     
     
     if (cm == 1 && mousePressed)
     {
     storeType = 25;
     chestPlace = 1;
     }
     }
     }
     else if (get (850, 20) == color (225)) {
     image (tree, 850, 20);
     text (treeCount, 860, 57);
     if (mouseX >= 850 && mouseX <= 890 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     
     if (cm == 1 && mousePressed)
     {
     storeType = 25;
     chestPlace = 1;
     }
     }
     }
     else if (get (900, 20) == color (225)) {
     image (tree, 900, 20);
     text (treeCount, 910, 57);
     
     if (mouseX >= 900 && mouseX <= 940 && mouseY > 20 && mouseY < 50)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     
     if (cm == 1 && mousePressed)
     {
     storeType = 25;
     chestPlace = 1;
     }
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (tree, 950, 20);
     text (treeCount, 960, 57);
     
     if (mouseX >= 950 && mouseX <= 990 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     
     if (cm == 1 && mousePressed)
     {
     storeType = 25;
     chestPlace = 1;
     }
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (tree, 1000, 20);
     text (treeCount, 1010, 57);
     if (mouseX >= 1000 && mouseX <= 1040 && mouseY > 20 && mouseY < 50 )
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     
     if (cm == 1 && mousePressed)
     {
     storeType = 25;
     chestPlace = 1;
     }
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (tree, 1050, 20);
     text (treeCount, 1060, 57);
     
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50  )
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     
     if (cm == 1 && mousePressed)
     {
     storeType = 25;
     chestPlace = 1;
     }
     }
     }
     else if (get (1110, 25) == color (225)) {
     
     if (mouseX >= 1050 && mouseX <= 1090 && mouseY > 20 && mouseY < 50 )
     {
     }
     }
     else
     {
     
     image (tree, 1100, -80);
     }
     }
     if (plankCount >= 1)
     {
     plankDis = 1;
     if (get (650, 20) == color (225)) {
     image (plank, 650, 20);
     text (plankCount, 660, 57);
     if (mouseX > 650 && mouseX < 700 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (643, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0 && cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 0;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else
     {
     project = 0;
     }
     }
     else if (get (700, 20) == color (225)) {
     image (plank, 700, 20);
     text (plankCount, 710, 57);
     if (mouseX > 700 && mouseX < 750 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (693, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 0;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else
     {
     project = 0;
     }
     }
     
     else if (get (750, 20) == color (225)) {
     image (plank, 750, 20);
     text (plankCount, 760, 57);
     if (mouseX > 750 && mouseX < 800 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (743, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 0;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else 
     {
     project = 0;
     }
     }
     else if (get (800, 20) == color (225)) {
     image (plank, 800, 20);
     text (plankCount, 810, 57);
     if (mouseX > 800 && mouseX < 850 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (793, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 0;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else
     {
     project = 0;
     }
     }
     else if (get (850, 20) == color (225)) {
     image (plank, 850, 20);
     text (plankCount, 860, 57);
     if (mouseX > 850 && mouseX < 900 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (843, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 0;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else
     {
     project = 0;
     }
     }
     else if (get (900, 20) == color (225)) {
     image (plank, 900, 20);
     text (plankCount, 910, 57);
     if (mouseX > 900 && mouseX < 950 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (893, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     blockType = 0;
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else
     {
     project = 0;
     }
     }    
     else if (get (950, 20) == color (225)) {
     image (plank, 950, 20);
     text (plankCount, 960, 57);
     if (mouseX > 950 && mouseX < 1000 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (943, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 0;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else
     {
     project = 0;
     }
     }
     else if (get (1000, 20) == color (225)) {
     image (plank, 1000, 20);
     text (plankCount, 1010, 57);
     if (mouseX > 1000 && mouseX < 1050 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (993, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 0;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else
     {
     project = 0;
     }
     }
     else if (get (1050, 20) == color (225)) {
     image (plank, 1050, 20);
     text (plankCount, 1060, 57);
     if (mouseX > 1050 && mouseX < 1100 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1043, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 0;
     if (backWallActive == 2)
     {
     dragBlock = 1;
     }
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else 
     {
     project = 0;
     }
     }
     else if (get (1100, 20) == color (225)) {
     image (plank, 1100, 20);
     text (plankCount, 1110, 57);
     if (mouseX > 1100 && mouseX < 1150 && mouseY > 20 && mouseY < 70)
     {
     fill (225, 0, 0, 100);
     rect (1093, 13, 45, 45, 100);
     project = 1;
     if (mousePressed && clickDis == 0&& cm == 0)
     {
     if (backWallActive != 2)
     {
     woodDeploy = 1;
     }
     blockType = 0;
     }
     if (cm == 1 && mousePressed)
     {
     storeType = 24;
     chestPlace = 1;
     }
     }
     else
     {
     project = 1;
     }
     }
     else
     {
     }
     }
     else if (plankDis  == 1)
     {
     plankDis = 0;
     clickDis = 1;
     }
     else
     {
     project = 0;
     }
     */
    if (clickDis == 1)
    {
      clickDisT = clickDisT + 1;
    }
    if (clickDisT > 5)
    {
      clickDisT = 0;
      clickDis = 0;
    }

    if (key == 'b' && keyPressed && backWallActive == 2)
    {
      dragBlock = 0;
    }
    invisibleBlock = invisibleB;
    if (doorA == 1)
    {
      doorTimer = doorTimer + 1;
    }
    if (doorTimer > 10)
    {
      woodDeploy = 1;
      invisibleB = 1;
      doorA = 0;
      doorTimer = 0;
    }
    if (invisibleB == 1)
    {
      invisibleTimer = invisibleTimer + 1;
    }
    if (invisibleTimer > 10)
    {

      invisibleB = 0;
      invisibleTimer = 0;
    }
    if (invisibleTimer < 3 && invisibleTimer > 0)
    {
      woodDeploy = 1;
    }



    if (woodDeploy == 1 )
    {
      woodTimer = woodTimer + 1;
      if (woodTimer >= 9 || placeGo == 1)
      {
        woodDeploy = 0;
        woodTimer = 0;
      }
    }
    if (inventory == 0)
    {
      if (mouseX > width/3 + 110 && mouseX < width/3 + 410 && mouseY < 95 && mouseY > 48)
      {
        image(redBar, -10, -55);
        if (mousePressed)
        {
         
          inventory = 1;
        }
      }
      else
      {
        image(bar, -10, -55);
      }
    }
  }
}


