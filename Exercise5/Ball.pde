class Ball{
  PVector position;
  PImage bird;
  Ball(){
    position = new PVector(width/8,height/2);
    bird = loadImage("download.png");
    imageMode(CENTER);
  }
  
  void goUp(){
  position.y -= 5;
      if(position.y < 0){
      position.y = 0;
    }
}

  void goDown(){
    position.y +=3;
    if(position.y > 600){
      position.y = 600;
    }
  }
  
  void draw(){
    image(bird,position.x,position.y);
  }
}
