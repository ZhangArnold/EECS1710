PImage pic;
int spacing=10;
int x;


void setup(){
 pic=loadImage("sunshine.jpg");
 size(1200, 1480);
}

void draw(){
  for (int x=spacing; x<width; x+=spacing) {
    for (int y=spacing; y<height; y+=spacing) {
      color c=pic.get(x, y);
      fill(c);
      noStroke();
      rect(x+random(0 - 5) - 0.5, y+random(0 -5)-0.5, spacing*1, spacing*1);
    }
  }
}
void keyPressed(){
   save("sunshine.jpg");
}
