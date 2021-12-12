import processing.sound.*;
PFont Skia,CourierNewPSMT;
char mode;
SoundFile file1,file2,file3,file4,file5,file6,file7,file8;
int up,down,left,right;

void setup() {
  size(800, 600, P2D);
  Skia = createFont("CourierNewPSMT", 80);
  file1 = new SoundFile(this, "one.wav");
  file2 = new SoundFile(this, "two.wav");
  file3 = new SoundFile(this, "three.wav");
  file4 = new SoundFile(this, "four.wav");
  file5 = new SoundFile(this, "five.wav");
  file6 = new SoundFile(this, "six.wav");
  file7 = new SoundFile(this, "seven.mp3");
  file8 = new SoundFile(this, "eight.mp3");
  textFont(Skia);
  textAlign(CENTER);
  ellipseMode(CENTER);
  up = 0;
  down = 800;
  left = 600;
  right = 0;
}

void draw() {
    background(0);
    
    fill(51,255,255);  //AAAAAAAAAAAAA
    ellipse(250,400, 80, 80); 
    fill(255,255,255);
    text('A',250, 420);
    
    fill(204,0,204);  //LLLLLLLLLLL
    ellipse(200,200, 80, 80); 
    fill(255,255,255);
    text('L',200,220);
    
    fill(255,255,102);  //MMMMMMMMM
    ellipse(350,300, 80, 80); 
    fill(255,255,255);
    text('M',350,320);
    
    fill(204,204,255);  //ZZZZZZZZZZZ
    ellipse(500,200, 80, 80); 
    fill(255,255,255);
    text('Z',500,220);
    
    fill(0,0,204);  //CCCCCCCCCCCCC
    ellipse(450,400, 80, 80); 
    fill(255,255,255);
    text('C',450,420);
    
    fill(255,153,255);  //JJJJJJJJJ
    ellipse(350,160, 80, 80); 
    fill(255,255,255);
    text('J',350,180);
  
    fill(102,255,102);  //BBBBBBBBBB
    ellipse(600,260, 80, 80); 
    fill(255,255,255);
    text('B',600,280);
    
    fill(255,0,0);  //GGGGGGGGG
    ellipse(600,380, 80, 80); 
    fill(255,255,255);
    text('G',600,400);
    
    
    
    
    
    if(mode == 'A'){   //AAAAAAAAAAAAA
      fill(51,255,255);
      rect(0,0,up,100);
      up = up + 10;
      if(up > 800){
        mode = 'Q';
        up = 0;
      }
    }
    
    if(mode == 'L'){    //LLLLLLLLLLL
      fill(204,0,204);
      rect(0,0,up,100);
      up = up + 10;
      if(up > 800){
        mode = 'Q';
        up = 0;
      }
    }
    
    
     if(mode == 'M'){    //MMMMMMMMMM
      fill(255,255,102);
      rect(700,0,100,left);
      left = left + 10;
      if(left > 800){
        mode = 'Q';
        left = 0;
      }
    }
    
    if(mode == 'Z'){    //ZZZZZZZZZZZ
      fill(204,204,255);
      rect(700,0,800,left);
      left = left + 10;
      if(left > 800){
        mode = 'Q';
        left = 0;
      }
    }
    
    if(mode == 'C'){    //CCCCCCCCC
      fill(0,0,204);
      rect(down,500,800,600);
      down = down - 10;
      if(down < 0){
        mode = 'Q';
        down = 800;
      }
    }
    
    if(mode == 'J'){    //CCCCCCCCC
      fill(255,153,255);
      rect(down,500,800,600);
      down = down - 10;
      if(down < 0){
        mode = 'Q';
        down = 800;
      }
    }
    
    if(mode == 'B'){    //BBBBB
      fill(102,255,102);
      rect(0,left,100,600);
      left = left - 10;
      if(left < 0){
        mode = 'Q';
        left = 600;
      }
    }    
    
    
    if(mode == 'G'){    //GGGGGGG
      fill(255,0,0);
      rect(0,left,100,600);
      left = left - 10;
      if(left < 0){
        mode = 'Q';
        left = 600;
      }
    }    
    
    
    
    

}

void keyPressed() {
    if ((key == 'a')) {
     fill(51,255,255); 
     ellipse(250,400, 200, 200); 
     mode = 'A';
     file1.play();
    }
  
     if ((key == 'l')) {
     fill(204,0,204); 
     ellipse(200,200, 200, 200); 
     mode = 'L';
     file2.play();
    }
    
    if ((key == 'm')) {
     fill(255,255,102); 
     ellipse(350,300, 200, 200); 
     mode = 'M';
     file3.play();
    }
    
     if ((key == 'z')) {
     fill(204,204,255); 
     ellipse(500,200, 200, 200); 
     mode = 'Z'; 
     file4.play();
    }
    
     if ((key == 'c')) {
     fill(0,0,204); 
     ellipse(450,400, 200, 200); 
     mode = 'C';
     file5.play();
     }
     
    if ((key == 'j')) {
     fill(255,153,255); 
     ellipse(350,160, 200, 200); 
     mode = 'J';
     file6.play();
     }
     
     if ((key == 'b')) {
     fill(102,255,102); 
     ellipse(600,260, 200, 200); 
     mode = 'B';
     file7.play();
     }
     
     if ((key == 'g')) {
     fill(255,0,0); 
     ellipse(600,380, 200, 200); 
     mode = 'G';
     file8.play();
     }
  
}  
