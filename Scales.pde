void setup() {
  size(1000, 1000);
  background(255);
}

float scaleFactor = 15;
int circleColor = 10;
float circleRadius = 40/scaleFactor;

void scale(int x, int y) {
  beginShape();
  vertex((x + 260)/scaleFactor, (y + 280)/scaleFactor);
  bezierVertex((x + 270)/scaleFactor, (y + 170)/scaleFactor, (x + 630)/scaleFactor, (y + 230)/scaleFactor, (x + 600)/scaleFactor, (y + 100)/scaleFactor);
  bezierVertex((x + 660)/scaleFactor, (y + 140)/scaleFactor, (x + 530)/scaleFactor, (y + 420)/scaleFactor, (x + 700)/scaleFactor, (y + 400)/scaleFactor);
  bezierVertex((x + 730)/scaleFactor, (y + 530)/scaleFactor, (x + 370)/scaleFactor, (y + 470)/scaleFactor, (x + 360)/scaleFactor, (y + 580)/scaleFactor);
  bezierVertex((x + 300)/scaleFactor, (y + 540)/scaleFactor, (x + 440)/scaleFactor, (y + 260)/scaleFactor, (x + 260)/scaleFactor, (y + 280)/scaleFactor);
  endShape();
  fill(circleColor);
  ellipse((x + 260)/scaleFactor, (y + 280)/scaleFactor, circleRadius, circleRadius);
  ellipse((x + 360)/scaleFactor, (y + 580)/scaleFactor, circleRadius, circleRadius);
}

int a = 0;
int b = 0;

void draw() {

  for (int j = 0; j < 80; j++) {
    for (int i = 0; i < 100; i++) {
      fill(80 + (int)(Math.random()*100), 100 + (int)(Math.random()*100), 225);
      scale(a-200, b + 250);
      a += 300;
    }
    a = 0;
    b += 400;
  }
}
