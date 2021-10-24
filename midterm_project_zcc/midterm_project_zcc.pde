import gifAnimation.*;
Gif green, man, boom;
PVector position;
Boolean lookback;
PImage back;

void setup() {  
  size(800, 600, P2D);
  
  green = new Gif(this, "green.gif");
  man = new Gif(this, "man.gif");
  boom = new Gif(this, "boom.gif");
  back = loadImage("back.jpg");
  position = new PVector(0, height/2);
  imageMode(CENTER);
  noCursor();
}  

void draw() {
   background(49,121,101);
    
  if (mousePressed) {
      lookback = true;
  }
  else{
    lookback = false;
  }
  
  

  if(lookback == false){
     if(position.x + 70 < width*5/6) {
        image(green, width*5/6, height/2, 200, 200);
        green.play();
        image(man, position.x, height/2, 140, 140);
        position.x = position.x + 0.5;
        man.play();
     }
     else{
        image(boom, width*5/6, height/2, 200, 200);
        boom.play();
        image(man, position.x, height/2, 140, 140);
        man.jump(1);
     }
  }

  else{
  image(back, width*5/6, height/2, 200, 200);
  image(man, position.x, height/2, 140, 140);
  man.jump(1);
  }
  

  

}  
