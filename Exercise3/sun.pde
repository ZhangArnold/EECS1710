 PImage img2;
class Sun {
  
  PVector position;
  float sizeVal;
  float alpha;

  Sun(float x , float y, float _alpha ) {
    img2 = loadImage("sun.png");
    img2.resize(img2.width/10, img2.height/10);
    position = new PVector(x, y);
    alpha = _alpha;

  }
  
  void draw() {
    imageMode(CENTER);
    tint(255,255,255, 255);
    image(img2,position.x, position.y); 
  }
}
