int myX;
int myY;
Walker[] aBunch;
void setup()
{
  size(500, 500);
  aBunch = new Walker[80];
  for (int i = 0; i < aBunch.length; i++) {
    aBunch[i] = new Walker();
  }
  
}

void draw()
{
  background(255);
  for (int i = 0; i < aBunch.length; i++) {
    stroke(255);
    aBunch[i].show();
    aBunch[i].walk();
  }

}

class Walker
{
  int myX, myY;
  Walker() {
    myX = 0;
    myY = 400;
    walk();
  }
  void walk() {
    myX = myX + (int)(Math.random()*6)-3;
    myY = myY + (int)(Math.random()*6)+2;
    if (myX > 500) {
      myX = mouseX;
      myX = myX - (int)(Math.random()*4)-4;
    }
    if (myY > 500) {
      myY = mouseY;
      myX = mouseX + (int)(Math.random()*5)-3;
      myY = myY + (int)(Math.random()*4)-7;
    }
    if(get(mouseX, mouseY) == color(#5FB1B4)){
     background(255); 
    }
    
  }
  void show() {
    fill(#8CE3DB);
    ellipse(myX, myY, 10, 10);
    stroke(255, 255, 255);
  }
}