import processing.sound.*;

float maxThreshold = 0.2;
float minThreshold = 0.1;
Ball b;
Rect r;
Trangle t;
PImage sky;

void setup(){
  size(600,600);
  setupSound();
  b = new Ball();
  r= new Rect(); 
  t = new Trangle();

  
  
}


void draw(){

  updateSound();
  float getAmp = getAmp();
  if(getAmp > maxThreshold){
    //background(random(width),random(height),0);
     b.goUp();
     println(getAmp);
  }else if(getAmp <minThreshold){
    background(0,230,255);
     b.goDown();
     println(getAmp);
  }
  r.goLeft();
  t.goLeft();
  b.draw();
  r.draw();
  t.draw();
}
