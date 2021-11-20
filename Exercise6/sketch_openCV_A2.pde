import processing.video.*;

PImage prev;
 
Capture video;

float threshold = 25;

//Basic filtering operations on images: threshold, blur, and adaptive thresholds.
 
void setup() {
  size(640, 480);
  String[] cameras = Capture.list();
  printArray(cameras);
  video = new Capture(this,cameras[3]);
  video.start();
  prev = createImage(640,360,RGB);
}

void captureEvent(Capture video){
  prev.copy(video,0,0,video.width,video.height,0,0,prev.width,prev.height);
  prev.updatePixels();
  video.read();
}
 
void draw() {
  video.loadPixels();
  prev.loadPixels();
  image(video,0,0);
  
  threshold = map(mouseX,0,width,0,100);
  
  //float avgX = 0;
 // float avgY = 0;
  
  //int count = 0;
  
  loadPixels();
  for(int x = 0; x < video.width; x++){
    for(int y =0; y< video.height;y++){
      int loc = x + y * video.width;
      color currentColor = video.pixels[loc];
      float r = red(currentColor);
      float g = green(currentColor);
      float b = blue(currentColor);
      color prevColor = prev.pixels[loc];
      float r1 = red(prevColor);
      float g1 = green(prevColor);
      float b1 = blue(prevColor);
    
      
      float d = distSq(r,g,b,r1,g1,b1);
      
      if(d < threshold * threshold){
        pixels[loc] = color(255);
      }else{
        pixels[loc] = color(0);
      }
    }
  }
  
  updatePixels();
  
  //if(count > 5){
   // avgX = avgX / count;
   // avgY = avgY / count;
   // strokeWeight(2.0);
  //  stroke(0);
  //  ellipse(avgX,avgY,8,8);
  //}
}

 float distSq(float x1, float y1,float z1,float x2,float y2,float z2){
    float d = (x2 - x1) * (x2 - x1 ) + (y2 - y1) * (y2 - y1) + (z2 - z1) * (z2 -z1);
    return d;
  }
