void setup() {
  size(1500, 1500);  //feel free to change the size
  background(#000099);
  //  noLoop(); //stops the draw() function from repeating
}
int a = 100;
int b = 0;

float scaleFactor = 3.5;

void draw() {
  for (int i = 0; i < 14; i += 1)
  {
    for (int j = 1; j < 10; j++) {
      FleurDeLys(a, b);
      FleurDeLys(a + 275, b + 400);
      a += 500;
      if (j == 9){
      FleurDeLys(a, b);
      }
    }
    a = 100;
    b += 800;
  }
}

void FleurDeLys(int x, int y) {
  //  noFill();
  stroke(0);
  strokeWeight(scaleFactor/2);
  fill(#e9c704);

  // petales inferieurs
  triangle((x+220)/scaleFactor, (y+290)/scaleFactor, (x+170)/scaleFactor, (y+340)/scaleFactor, (x+245)/scaleFactor, (y+320)/scaleFactor);
  triangle((x+500-220)/scaleFactor, (y+290)/scaleFactor, (x+500-170)/scaleFactor, (y+340)/scaleFactor, (x+500-245)/scaleFactor, (y+320)/scaleFactor);

  // partie inferieure
  ellipse((x+250)/scaleFactor, (y+330)/scaleFactor, (40)/scaleFactor, (140)/scaleFactor);
  noStroke();
  triangle((x+230)/scaleFactor, (y+290)/scaleFactor, (x+200)/scaleFactor, (y+322)/scaleFactor, (x+245)/scaleFactor, (y+323)/scaleFactor);
  triangle((x+500-230)/scaleFactor, (y+290)/scaleFactor, (x+500-200)/scaleFactor, (y+322)/scaleFactor, (x+500-245)/scaleFactor, (y+323)/scaleFactor);

  stroke(0);
  strokeWeight(scaleFactor/2);
  fill(#e9c704);


  // petale gauche
  beginShape();
  vertex((x+220)/scaleFactor, (y+280)/scaleFactor);
  bezierVertex((x+215)/scaleFactor, (y+110)/scaleFactor, (x+0)/scaleFactor, (y+190)/scaleFactor, (x+ 150)/scaleFactor, (y+265)/scaleFactor);
  bezierVertex((x+140)/scaleFactor, (y+230)/scaleFactor, (x+160)/scaleFactor, (y+215)/scaleFactor, (x+200)/scaleFactor, (y+280)/scaleFactor);
  endShape();

  // petale droit
  beginShape();
  vertex((x+500-220)/scaleFactor, (y+280)/scaleFactor);
  bezierVertex((x+(500-215))/scaleFactor, (y+110)/scaleFactor, (x+500 - 0)/scaleFactor, (y+190)/scaleFactor, (x+500-150)/scaleFactor, (y+265)/scaleFactor);
  bezierVertex((x+(500-140))/scaleFactor, (y+230)/scaleFactor, (x+500-160)/scaleFactor, (y+215)/scaleFactor, (x+500-200)/scaleFactor, (y+280)/scaleFactor);
  endShape();

  // petale central
  rect((x+240)/scaleFactor, (y+250)/scaleFactor, (20)/scaleFactor, (50)/scaleFactor);
  noStroke();
  rect((x+240)/scaleFactor, (y+60)/scaleFactor, (20)/scaleFactor, (210)/scaleFactor);
  stroke(0);
  bezier((x+250)/scaleFactor, (y+50)/scaleFactor, (x+215)/scaleFactor, (y+90)/scaleFactor, (x+160)/scaleFactor, (y+120)/scaleFactor, (x+ 240)/scaleFactor, (y+270)/scaleFactor);
  bezier((x+250)/scaleFactor, (y+50)/scaleFactor, (x+500-215)/scaleFactor, (y+90)/scaleFactor, (x+500-160)/scaleFactor, (y+120)/scaleFactor, (x+260)/scaleFactor, (y+270)/scaleFactor);
  //  line(240, 270, 260, 270);

  stroke(0);
  // barre
  strokeWeight(scaleFactor/2);
  bezier((x+250)/scaleFactor, (y+50)/scaleFactor, (x+500-215)/scaleFactor, (y+90)/scaleFactor, (x+500-160)/scaleFactor, (y+120)/scaleFactor, (x+260)/scaleFactor, (y+270)/scaleFactor);
  rect((x+160)/scaleFactor, (y+280)/scaleFactor, (180)/scaleFactor, (25)/scaleFactor);
}
