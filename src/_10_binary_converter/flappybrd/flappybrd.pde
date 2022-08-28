  float x=30;
  float y=2;
  float grav=0.085;
  float vel=1;
  float xTub=-1;
  float tubeX=0;
void setup() {
  size(640, 700);
}

void draw() {
  xTub=xTub-1;
  println("xtub " + xTub);
  tubeX=640+xTub;
  println ("xtub="+xTub+"xxTub"+tubeX);
  vel=vel+1;
  y=y+grav*vel;
  background(100,30,95);
  fill(0, 0, 0);
  stroke(100, 100, 100);
  ellipse(x, y, 20, 20);
  fill(0, 100, 0);
  rect(tubeX, 0, 100, 450);
  fill(0, 100, 0);
  rect(tubeX-200, 450, 100, 450);
  fill(0, 100, 0);
  rect(tubeX-400, 0, 100, 450);
  fill(0, 100, 0);
  rect(tubeX-600, 450, 100, 450);
  if (xTub<=-640){
    xTub=0;
  }
  
}
