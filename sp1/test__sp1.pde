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
    // method call that calls the body
    man.drawAll();
  }

  for (CookieMonster monsters : cookieMonster)
  {
    // method call that calls the body
    monsters.drawAll();
  }
}

void keyPressed()
{
  for (FatKarateMan man : fatKarateMan)
  {

    if (key == 'a' || key == 'A')
    {
      // method call that calls the body to move in x left direction when a/A is pressed / fatkarateMan
      man.moveLeft();
    } else if (key == 'd' || key == 'D')
    {
      // method call that calls the body to move in x right direction when d/D is pressed / fatkarateMan
      man.moveRight();
    }
  }

  for (FatKarateMan man : fatKarateMan)
  {
    if (key == 'w' || key == 'W')
    {
      // method call that calls the body to move in y up direction when w/W is pressed / fatkarateMan
      man.moveUp();
    } else if (key == 's' || key == 'S')
    {
      // method call that calls the body to move in y down direction when s/S is pressed / fatkarateMan
      man.moveDown();
    }
  }

  for (CookieMonster monster : cookieMonster)
  {
    if (key == 'j' || key == 'J')
    {
      // method call that calls the body to move in x left direction when j/J is pressed / cookieMonster
      monster.moveLeft();
    } else if (key == 'l' || key == 'L')
    {
      // method call that calls the body to move in x right direction when l/L is pressed / cookieMonster
      monster.moveRight();
    }
  }

  for (CookieMonster monster : cookieMonster)
  {
    if (key == 'i' || key == 'I')
    {
      // method call that calls the body to move in y up direction when i/I is pressed / cookieMonster
      monster.moveUp();
    } else if (key == 'k' || key == 'K')
    {
      // method call that calls the body to move in y down direction when k/K is pressed / cookieMonster
      monster.moveDown();
    }
  }
}
