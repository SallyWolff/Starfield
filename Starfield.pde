
Particle[] stars = new Particle[1000];
void setup() {
  size (500, 500);
  for (int i=0; i<1000; i++) {
    stars[i] = new Particle();
    stars[0] = new OddBall();
  }
}

void draw() {
  background (0);
  for (int i=0; i<1000; i++) {
    stars[i].move();
    stars[i].show();
    stars[0].oddBallMove();
  }
}

class OddBall extends Particle {
  OddBall() {
    xSz = 30;
    ySz = 30;
    xPos= 0;
    yPos= 0;
    bSpeed= .5;
    bAngle = 90;
    bCol= color(255, 255, 255);
  }
}

class Particle {
  float xPos, yPos, bSpeed, bAngle;
  int bCol, xSz, ySz;
  Particle() {
    xSz = 5;
    ySz = 5;
    xPos= (float) (Math.random()*20)+230;
    yPos= (float) (Math.random()*20)+230;
    bCol= color((int)(Math.random()*257), (int)(Math.random()*257), (int)(Math.random()*257));
    bSpeed= (float)(Math.random()*8)-1;
    bAngle= (float)(Math.random()*90);
  }
  void show() {
    fill(bCol);
    ellipse(xPos, yPos, xSz, ySz);
  }
  void move() {
    xPos += cos(((bSpeed)*(bAngle)));
    yPos += sin((bAngle));
    if (xPos>500) {
      xPos= 250;
      yPos=250;
      bAngle= (float)(Math.random()*180);
    }
    if (yPos>500) {
      xPos = 250;
      yPos = 250;
      bAngle= (float)(Math.random()*180);
    }
  }
    void oddBallMove() {
      
        if (mouseX > xPos) 
          xPos = xPos + (int)(Math.random()*5)-1; 
        else
          xPos = xPos + (int)(Math.random()*5)-3;

        if (mouseY > yPos) 
          yPos = yPos + (int)(Math.random()*5)-1; 
        else
          yPos = yPos + (int)(Math.random()*5)-3;
      
    }
  }

