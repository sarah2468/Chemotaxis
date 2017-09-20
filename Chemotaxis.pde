int myX;
int myY;
Walker[] aBunch;
void setup()
{
  size(500, 500);
  aBunch = new Walker[300];
  for (int i = 0; i < aBunch.length; i++) {
    aBunch[i] = new Walker();
  }
}

void draw()
{
  background(255);
  for (int i = 0; i < aBunch.length; i++) {
    aBunch[i].show();
    aBunch[i].walk();
  }
}

void mousePressed()
{
  background(255);
  myX = 0;
  myY = 0;
  redraw();
}
class Walker
{
  int myX, myY;
  Walker() {
    myX = 0;
    myY = 0;
    walk();
  }
  void walk() {
    myX = myX + (int)(Math.random()*10)-3;
    myY = myY + (int)(Math.random()*10)-2;
    if (myX > 500) {
      myX = mouseX;
      myX = myX - (int)(Math.random()*6)-2;
    }
    if (myY > 500) {
      myY = mouseY;
      myY = myY - (int)(Math.random()*6)-7;
    }
  }
  void show() {
    fill(#8CE3DB);
    ellipse(myX, myY, 10, 10);
    stroke(255, 255, 255);
  }
}