// storing the two objects in an arraylist
ArrayList<FatKarateMan> fatKarateMan;
ArrayList<CookieMonster> cookieMonster;


void setup()
{
  size(800, 750);

  // initializing object arraylist
  fatKarateMan = new ArrayList<FatKarateMan>();
  cookieMonster = new ArrayList<CookieMonster>();


  // adding the objects to the arraylists
  fatKarateMan.add(new FatKarateMan(color(255, 215, 180), color(0, 0, 0), color(255, 255, 255), color(255, 10, 10), 800, 750));
  //fatKarateMan.add(new FatKarateMan(color(255, 215, 180), color(0, 0, 0), color(255, 255, 255), color(255, 10, 10), 1250, 750));
  cookieMonster.add(new CookieMonster(color(0, 0, 0), color(0, 0, 255), color(210, 180, 140), color(0, 255, 0), 800, 750));
  //cookieMonster.add(new CookieMonster(color(0, 0, 0), color(0, 0, 255), color(210, 180, 140), color(0, 255, 0), 600, 750));
}


void draw()
{
  background(255);
  
  
  //(Datatype element : collection) returns the action of the element through the arrayList
  for (FatKarateMan man : fatKarateMan)
  {
    man.drawAll();
  }
  
  for (CookieMonster monsters : cookieMonster)
  {
    monsters.drawAll();
  }
}


//  using the system function k
void keyPressed()
{
  for (FatKarateMan man : fatKarateMan)
  {
    if (key == 'a' || key == 'A')
    {
      man.moveLeft();
    } else if (key == 'd' || key == 'D')
    {
      man.moveRight();
    }
  }

  for (FatKarateMan man : fatKarateMan)
  {
    if (key == 'w' || key == 'W')
    {
      man.moveUp();
    } else if (key == 's' || key == 'S')
    {
      man.moveDown();
    }
  }

  for (CookieMonster monster : cookieMonster)
  {
    if (key == 'j' || key == 'J')
    {
      monster.moveLeft();
    } else if (key == 'l' || key == 'L')
    {
      monster.moveRight();
    }
  }

  for (CookieMonster monster : cookieMonster)
  {
    if (key == 'i' || key == 'I')
    {
      monster.moveUp();
    } else if (key == 'k' || key == 'K')
    {
      monster.moveDown();
    }
  }
}
