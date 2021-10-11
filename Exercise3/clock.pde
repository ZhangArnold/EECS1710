int cx, cy;

float secondsRadius;

float minutesRadius;

float hoursRadius;

float clockDiameter;

float r = 300;
float theta;
int num =30; 
Pic[] pics = new Pic[num];
Sun sun;
Star star;
Moon moon;
void setup() {

size(700, 700);

stroke(255);

frameRate(10);

int radius = min(width, height) / 2;

secondsRadius = radius * 0.72;

minutesRadius = radius * 0.60;

hoursRadius = radius * 0.50;

clockDiameter = radius * 1.8;



cx = width / 2;

cy = height / 2;

}



void draw() {

background(0);


fill(0);

noStroke();

ellipse(cx, cy, clockDiameter, clockDiameter);

float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;

float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;

float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;

// Draw the hands of the clock //<>// //<>//


line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);

strokeWeight(6);

line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);

strokeWeight(2);

star = new Star(cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius,  255);//second
sun = new Sun(cx + cos(h) * hoursRadius ,cy + sin(h) * hoursRadius,  255);
moon = new Moon(cx + cos(m) * minutesRadius ,cy + sin(m) * minutesRadius,  255);

println(cx);


beginShape(TRIANGLE_FAN);

for (int a = 0; a < 360; a+=6) {

float angle = radians(a);

float x = cx + cos(angle) * secondsRadius;

float y = cy + sin(angle) * secondsRadius;

// vertex(x, y);

stroke(180,a%255,a%255);

fill(180,a%255,a%255, random(0,255));

ellipse(x, y, (((a%30)==0)?10:2), (((a%30)==0)?10:2));


pics[a/12]= new Pic(x+random(0,hour()/2), y,4.25* second() , 3*second(), hour()*4.25, random(50, 255));
//pics[a/12]= new Pic(x, y,a%255 ,4.25*second(),hour()*4.25, random(50, 255));

}

for (int i=0; i<pics.length; i++) {
    pics[i].draw();
  }
sun.draw();
star.draw();
moon.draw();
endShape();

}
