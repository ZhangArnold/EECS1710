class Rect{
  PVector position;
  PShape square;
  Rect(){
    position = new PVector(width,random(height));
        strokeWeight(5);
    fill(0,255,0);
    square = createShape(RECT,0,0,30,140);
  }
  
  void goLeft(){
  position.x -= 2;
}

  void goRight(){
    position.x +=2;
  }
 
  
  
  void draw(){
    shape(square,position.x,position.y);
    if(position.x < -50){
    position.x = 650;
    position.y = random(height);
  }
  }
}
