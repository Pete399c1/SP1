class FatKarateMan
{
  color body, black, white, red;

  int x, y;
  int xSpeed = 10;
  int ySpeed = 10;

  FatKarateMan(color bodyColor, color blackColor, color whiteColor, color redColor, int tempX, int tempY)
  {
    body = bodyColor;
    black = blackColor;
    white = whiteColor;
    red = redColor;

    this.x = tempX;
    this.y = tempY;
  }

  void drawAll()
  {
    stomach();
    leftArm();
    rightArm();
    leftLeg();
    rightLeg();
    belt();
    neck();
    head();
    mouth();
    eyes();
    headBand();
  }

  void stomach()
  {
    fill(black);
    stroke(black);
    strokeWeight(3);
    ellipse(x-630, y-250, 150, 145);
  }

  void rightArm()
  {
    fill(body);
    stroke(black);
    strokeWeight(3);
    ellipse(x-545, y-215, 25, 120);

    fill(black);
    stroke(black);
    strokeWeight(3);
    ellipse(x-545, y-270, 40, 70);
  }

  void leftArm()
  {

    fill(body);
    stroke(black);
    strokeWeight(3);
    ellipse(x-715, y-215, 25, 120);

    fill(black);
    stroke(black);
    strokeWeight(3);
    ellipse(x-715, y-270, 40, 70);
  }


  void rightLeg()
  {
    // Legs
    fill(black);
    stroke(black);
    strokeWeight(3);
    ellipse(x-600, y-135, 45, 150);
  }

  void leftLeg()
  {
    fill(black);
    stroke(black);
    strokeWeight(3);
    ellipse(x-660, y-135, 45, 150);
  }

  void belt()
  {
    // belt binding
    fill(white);
    stroke(black);
    strokeWeight(3);
    rect(x-645, y-232, 10, 50);
    rect(x-625, y-232, 10, 50);

    // Belt
    fill(white);
    stroke(black);
    strokeWeight(3);
    rect(x-703, y-244, 147, 15);

    // Round belt part
    fill(white);
    stroke(black);
    strokeWeight(3);
    ellipse(x-630, y-235, 25, 25);
  }

  void neck()
  {
    // Neck
    fill(body);
    stroke(black);
    strokeWeight(3);
    ellipse(x-630, y-330, 30, 50);
  }

  void headBand()
  {
    // Headband
    fill(white);
    stroke(black);
    strokeWeight(3);
    rect(x-672, y-438, 84, 9);
  }


  void head()
  {
    // Head
    fill(body);
    stroke(black);
    strokeWeight(3);
    ellipse(x-630, y-400, 100, 130);
  }

  void mouth()
  {
    fill(red);
    stroke(black);
    strokeWeight(3);
    ellipse(x-630, y-360, 50, 25);

    fill(white);
    ellipse(x-630, y-360, 30, 15);
  }

  void eyes()
  {
    fill(white);
    stroke(black);
    strokeWeight(3);
    ellipse(x-655, y-410, 25, 25);
    ellipse(x-655, y-410, 25, 25);

    fill(black);
    stroke(black);
    strokeWeight(3);
    ellipse(x-655, y-410, 10, 10);
    ellipse(x-655, y-410, 10, 10);

    fill(white);
    stroke(black);
    strokeWeight(3);
    ellipse(x-603, y-410, 25, 25);
    ellipse(x-603, y-410, 25, 25);

    fill(black);
    stroke(black);
    strokeWeight(3);
    ellipse(x-603, y-410, 10, 10);
    ellipse(x-603, y-410, 10, 10);
  }

  void moveLeft()
  {
    this.x -= xSpeed;
  }

  void moveRight()
  {
    this.x += xSpeed;
  }

  void moveUp()
  {
    this.y -= ySpeed;
  }

  void moveDown()
  {
    this.y += ySpeed;
  }
}
