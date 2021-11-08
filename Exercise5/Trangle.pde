class Trangle{
  PVector position;
  PShape square;
  Trangle(){
    position = new PVector(width,random(height));
    stroke(0); 
    strokeWeight(5);
    fill(0,255,0);
    square = createShape(TRIANGLE,0,0,100,-20,70,40);
     
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
