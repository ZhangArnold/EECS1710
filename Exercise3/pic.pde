 PImage img;
class Pic {
  
  PVector position;
  float sizeVal;
  float alpha;
  float colorPic;
  float color2;
  float color3;
  Pic(float x , float y, float _alpha, float _color2,float _color3, float _colorPic) {
    img = loadImage("love.png");
    img.resize(img.width/5, img.height/5);
    position = new PVector(x, y);
    sizeVal = random(10, 15);
    alpha = _alpha;
    colorPic = _colorPic;
    color2 = _color2;
  }
  
  void draw() {
    imageMode(CENTER);
    tint(colorPic,color2,color3, alpha);
    image(img,position.x, position.y); 
  } 

}
