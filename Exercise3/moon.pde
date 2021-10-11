 PImage img4;
class Moon {
  
  PVector position;
  float sizeVal;
  float alpha;

  Moon(float x , float y, float _alpha ) {
    img4 = loadImage("moon.png");
    img4.resize(img4.width/10, img4.height/10);
    position = new PVector(x, y);
    alpha = _alpha;

  }
  
  void draw() {
    imageMode(CENTER);
    tint(255,255,255, 255);
    image(img4,position.x, position.y); 
  }
}
