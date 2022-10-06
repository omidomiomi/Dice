        void setup()
  {
      noLoop();
      size(400,400);
  }
  Die Patriarchy;
  void draw()
  {
    int sum = 0;
      background(252, 3, 232);
      for (int x = 50; x <=300; x=x +100){
        for (int y = 50; y <=300; y = y +100){
          Patriarchy = new Die(x,y);
          Patriarchy.roll();
          Patriarchy.show();
          sum = Patriarchy.dots +sum;
  }
      }
      textSize(30);
      fill(255);
      text("Total: "+sum+" dots",100,30);
      textSize(10);
      text("gavin is cool", 20,375);
      text("omi is cooler", 300, 375);
    
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY;
      int dots;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          dots = 0;
      }
      void roll()
      {
        dots = (int)(Math.random()*6)+1;
      }
      void show()
      {
        strokeWeight(10);
        fill(0,0,255);
          rect(myX,myY,100,100);
          if (dots == 1){
            point(myX+50, myY +50);
      }
      if (dots == 2){
        point(myX +33, myY + 50);
        point(myX +66, myY + 50);
  }
  if (dots == 3){
    point(myX +25, myY + 50);
    point(myX + 50, myY +50);
    point(myX + 75, myY +50);
  }
  if(dots == 4){
    point(myX +33, myY + 25);
    point(myX +66, myY + 25);
    point(myX +33, myY + 75);
    point(myX +66, myY + 75);
  }
  if(dots == 5){
    point(myX +33, myY + 25);
    point(myX +66, myY + 25);
    point(myX +25, myY + 75);
    point(myX + 50, myY +75);
    point(myX + 75, myY +75);
  }
  if (dots == 6){
    point(myX +25, myY + 25);
    point(myX + 50, myY +25);
    point(myX + 75, myY +25);
    point(myX +25, myY + 75);
    point(myX + 50, myY +75);
    point(myX + 75, myY +75);
      }
  }
  }
