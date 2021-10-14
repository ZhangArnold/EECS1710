PVector position;
PImage img, face,face2, tong;
int size;

float ballX = 250;
float ballY = 250;

float targetX,targetY;
int i = 0;
int timer;
PVector[] food = new PVector[50];

void setup() { 
  size(800, 600, P2D);
  for(int n = 0; n < 50; n ++){
  food[n] = new PVector(random(800),random(600));
  }
  img = loadImage("background.jpg");
  face = loadImage("A.png");
  face2 = loadImage("B.png");
  tong = loadImage("tongluoshao.png");
  size = 20;
  ellipseMode(CENTER);
  imageMode(CENTER);
}

void draw() {
  
  background(0);
  image(img,width/2, height/2);
  
   if (millis() - timer >= 1000) {
    change();
    timer = millis();
  }  
   if ( targetX != ballX) i ++ ;
   else i = 0 ;
    moveball();
    drawball();
    
    for(int n = 0; n < 50; n ++){
    
     

      if(abs(ballX-food[n].x)<size && abs(ballY-food[n].y)< size){
        
        food[n].x = -1000;
        food[n].y = -1000;
        size = size + 3;
        //image(face2,ballX,ballY,size,size);
        
      }
      
       if(abs(ballX-food[n].x)<size*2 && abs(ballY-food[n].y)< size*2){
        

        image(face2,ballX,ballY,size,size);
        
      }
            image(tong,food[n].x,food[n].y,10,10);
    }
  
}

void change()
{

targetX = random(800);
targetY = random(600);
}

void moveball()
{
  float coef = map(i,0,100,0,0.7);
  ballX = lerp (ballX, targetX, coef);
  ballY = lerp (ballY, targetY, coef);
  
}

void drawball()
{
image(face,ballX,ballY,size,size);
}
