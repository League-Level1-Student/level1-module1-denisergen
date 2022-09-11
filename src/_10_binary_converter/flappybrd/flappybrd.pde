float x=30;
float y=2;
float grav=0.095;
float vel=1;
float xTub=-1;
float tubeX=0;
boolean isDead=false;
void setup() {
  size(640, 700);
}

void draw() {
  if (!isDead) {
    xTub=xTub-1;
    println("xtub " + xTub);
    tubeX=640+xTub;
    println ("xtub="+xTub+"xxTub"+tubeX);
    vel=vel+grav;
    y=y+vel;
    background(100, 30, 95);
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
    if (xTub<=-790) {
      xTub=0;
    }
    check(tubeX, true);
   check(tubeX-200, false);
   check(tubeX-400, true);
   check(tubeX-600, false);
  }
  else 
  {
    text("Game Over",300,450);
  }
}

void mousePressed() {
  vel =-5;
}

void check(float tubeX, boolean up) 
{
  if(up){
   if(x>tubeX && x<tubeX+100 && y<450 )
    {
     isDead=true;
    }
  }
  else {
        if(x>tubeX && x<tubeX+100 && y>450)
    {
     isDead=true;
    }
  }
}
