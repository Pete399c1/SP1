class CookieMonster
{
  // attributs
  color black, blue, cookie, green;

  // body position
  int x, y;
  int xSpeed = 10;
  int ySpeed = 10;

  // constructor
  CookieMonster(color blackCol, color blueCol, color cookieCol, color greenCol, int tempX, int tempY)
  {
    black = blackCol;
    blue = blueCol;
    cookie = cookieCol;
    green = greenCol;

    this.x = tempX;
    this.y = tempY;
  }

  // method that calls all the body part methods
  void drawAll()
  {
    leftLeg();
    rightLeg();
    leftArm();
    rightArm();
    stomach();
    neck();
    head();
    mouth();
    eyes();
  }


  // legs
  void leftLeg()
  {
    fill(blue);
    stroke(black);
    strokeWeight(3);
    ellipse(x-235, y-160, 45, 200);
  }

  void rightLeg()
  {
    fill(blue);
    stroke(black);
    strokeWeight(3);
    ellipse(x-175, y-160, 45, 200);
  }

  void stomach()
  {
    fill(cookie);
    stroke(black);
    strokeWeight(3);
    ellipse(x-204, y-260, 150, 145);

    fill(black);
    ellipse(x-204, y-230, 20, 20);
    ellipse(x-240, y-245, 20, 20);
    ellipse(x-150, y-280, 20, 20);
    ellipse(x-235, y-290, 20, 20);
  }

  void neck()
  {
    // Neck
    fill(blue);
    stroke(black);
    strokeWeight(3);
    ellipse(x-207, y-341, 30, 70);
  }

  // Arms
  void leftArm()
  {
    fill(blue);
    stroke(black);
    strokeWeight(3);
    ellipse(x-285, y-230, 25, 120);

    fill(blue);
    stroke(blue);
    strokeWeight(3);
    ellipse(x-285, y-260, 40, 70);
  }

  void rightArm()
  {
    fill(blue);
    stroke(black);
    strokeWeight(3);
    ellipse(x-120, y-230, 25, 120);

    fill(blue);
    stroke(blue);
    strokeWeight(3);
    ellipse(x-120, y-260, 40, 70);
  }

  void head()
  {
    // Head
    fill(blue);
    stroke(black);
    strokeWeight(3);
    rect(x-250, y-450, 90, 95);
  }

  void mouth()
  {
    // lips
    fill(black);
    stroke(black);
    strokeWeight(3);
    ellipse(x-205, y-375, 50, 25);

    // inside of the mouth
    fill(green);
    ellipse(x-205, y-375, 30, 15);
  }

  void eyes()
  {
    // eye
    fill(green);
    stroke(black);
    strokeWeight(3);
    ellipse(x-205, y-420, 25, 40);
    ellipse(x-205, y-420, 25, 40);

    // eye profile
    fill(black);
    stroke(black);
    strokeWeight(3);
    ellipse(x-205, y-420, 10, 10);
    ellipse(x-205, y-420, 10, 10);
  }

  // moving the body in the x direction left/right
  void moveLeft()
  {
    this.x -= xSpeed;
  }

  void moveRight()
  {
    this.x += xSpeed;
  }

  // moving the body in the y direction up/down
  void moveUp()
  {
    this.y -= ySpeed;
  }

  void moveDown()
  {
    this.y += ySpeed;
  }
}
