String message = "abcdefghijklmnopqrstuvwxyz";

PFont f;

float r = 100;

float angle;



void setup() {
  size(320, 320);
  f = createFont("Georgia",30,true);
  textFont(f);
  textAlign(CENTER);
  smooth();
 
  
}

void draw() {

  background(255);
  translate(width / 2, height / 2);
  noFill();
  stroke(0);
  ellipse(0, 0, r*2, r*2);
  float arclength = 0;
  
   float an = 2 * PI * ((95.0 - angle)/360.0);
   rotate(an);
   //println(an);

    

    
  for (int i = 0; i < message.length(); i++)
  {
    char currentChar = message.charAt(i);
    float w = textWidth(currentChar);
    
    arclength += w/1.2;
  
    float theta = PI + arclength / r;

    pushMatrix();
   
    translate(r*cos(theta), r*sin(theta));
   
    rotate(theta+PI/2); 

    if(key == currentChar){
         fill(255,51,255);
            textSize(40);
    }
   else{
    fill(0);
      textSize(30);
   }
 
    text(currentChar,0,0);
    popMatrix();

    arclength += w/1.3;
  }
  


}

 void keyPressed(){
  for (int i = 0; i < message.length(); i++)
  {
    char currentChar = message.charAt(i);
    if(key == currentChar){

           angle = ((i + 1.0) / 26.0 ) * 360.0;
       
      }
   }

   


 }
