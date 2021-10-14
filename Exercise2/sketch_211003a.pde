PVector position, target;
boolean isRunning = false;

void setup() {
  size(520,520);
  
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));
  
  ellipseMode(CENTER);
  
}
 
void draw() {
   background(120);
   
   PVector mousePos = new PVector(mouseX,mouseY);
   
fill(random(250),random(250),random(250),50);

noStroke();
ellipse(mouseX,mouseX,mouseX,mouseX);

}
