 PImage img3;
class Star {
  
  PVector position;
  float sizeVal;
  float alpha;

  Star(float x , float y, float _alpha ) {
    img3 = loadImage("star.png");
    img3.resize(img3.width/10, img3.height/10);
    position = new PVector(x, y);
    alpha = _alpha;

  }
  
  void draw() {
    imageMode(CENTER);
    tint(255,255,255, 255);
    image(img3,position.x, position.y); 
  }
}
