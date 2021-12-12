ArrayList<Circle> circles;

void setup(){
  size(640,360);
  circles = new ArrayList<Circle>(); 
   
 } 
 
void draw(){
  background(0);
  frameRate(5);
  float x = random(width);
  float y = random(height);
  circles.add(new Circle(x,y));
  
  for(Circle c : circles){
    if(c.edges()){
    c.growing = false;
  }
    c.show();
    c.grow();
  }
}
