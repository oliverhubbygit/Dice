Die bob;
int countdots = 0;

void setup()
{
  size(480, 500);
  noLoop();
}

void draw()
{
  for (int h = 0; h < 16; h += 1) {
    for (int j = 0; j < 16; j += 1) {
      bob = new Die(h * 30, j * 30);
      bob.show();
    }
  }
  fill(0,0,0);
  rect(0,480,500,20);
  fill(255,255,255);
  textSize(10);
  text(("Total: " + countdots),5,490);
}

void mousePressed()
{
  redraw();
  countdots = 0;
}

class Die // models one single dice cube
{
  int dots, myX, myY;

  Die(int x, int y) // constructor
  {
    myX = x;
    myY = y;
    dots = (int)(Math.random() * 6) + 1;
    countdots = countdots + dots;
  }

  void roll()
  {
    dots = (int)(Math.random() * 6) + 1;
  }

  void show()

{
  fill(255);
  rect(myX, myY, 30, 30);

  noStroke();
  fill(0);

  if (dots == 1) {
    ellipse(myX + 15, myY + 15, 5, 5);
  }
  
  else if (dots == 2) {
    ellipse(myX + 8, myY + 8, 5, 5);
    ellipse(myX + 22, myY + 22, 5, 5);
  }
  
  else if (dots == 3) {
    ellipse(myX + 8, myY + 8, 5, 5);
    ellipse(myX + 15, myY + 15, 5, 5);
    ellipse(myX + 22, myY + 22, 5, 5);
  }
  
  else if (dots == 4) {
    ellipse(myX + 8, myY + 8, 5, 5);
    ellipse(myX + 22, myY + 8, 5, 5);
    ellipse(myX + 8, myY + 22, 5, 5);
    ellipse(myX + 22, myY + 22, 5, 5);
  }
  
  else if (dots == 5) {
    ellipse(myX + 8, myY + 8, 5, 5);
    ellipse(myX + 22, myY + 8, 5, 5);
    ellipse(myX + 15, myY + 15, 5, 5);
    ellipse(myX + 8, myY + 22, 5, 5);
    ellipse(myX + 22, myY + 22, 5, 5);
  }
  
  else if (dots == 6) {
    ellipse(myX + 8, myY + 8, 5, 5);
    ellipse(myX + 22, myY + 8, 5, 5);
    ellipse(myX + 8, myY + 15, 5, 5);
    ellipse(myX + 22, myY + 15, 5, 5);
    ellipse(myX + 8, myY + 22, 5, 5);
    ellipse(myX + 22, myY + 22, 5, 5);
  }
}
}
