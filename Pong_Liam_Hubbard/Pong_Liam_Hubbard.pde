//liam H. 4-5-17
PFont font;
int x1 = 2;
int y1 = 2;
int ballSpeed = 1;
int speed1 = 10;
int speed2 = 10;

int score1 = 0;
int score2 = 0;
int run = 1;

int x2 = 0;
int y2 = 0;

int globalTime = 0;
int lastydirection = 1;
int out1 = 0;
int out2 = 0;
int lastout1 = 0;
int lastout2 = 0;

// ball varibles 


int radius = 15;        // Width of the shape
float xpos, ypos;    // Starting position of shape    

float xspeed = 2.2;  // Speed of the shape
float yspeed = 4;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom

void setup() {
  size(480, 480);
  smooth();
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
  println("Player1, Player2");
  font = loadFont("AndaleMono-36.vlw");
  textFont(font);
}

void draw() {
 
  globalTime =  millis();
  
  //ballSpeed = (globalTime) / 100 + 1;
  
  xspeed = 2.2 + (ballSpeed/15);  // update Speed of the shape
  yspeed = 4 + (ballSpeed/15);     // update Speed of the shape
  
  background(25);
  if (keyPressed && (key == CODED)) { // If it’s a coded key
      if(200 > x1)  {
      if (keyCode == RIGHT) { // If it’s the left arrow
      x1 = x1 + speed1;
      }
      }
      if(-200 < x1)  {
      if (keyCode == LEFT) { // If it’s the right arrow
      x1 = x1 - speed1;
      }
      }
      
      if(200 > x2)  {
      if (keyCode == DOWN) { // If it’s the down arrow
      x2 = x2 + speed1;
      }
      }
      if(-200 < x2)  {
      if (keyCode == UP) { // If it’s the Up arrow
      x2 = x2 - speed1;
      }
      }
    }

 
 // bottom
  fill(0,255,0);     
  beginShape();
  vertex(x1+200, 480);
  vertex(x1+200, 460);
  vertex(x1+280, 460);
  vertex(x1+280, 480);
  endShape();
  //top
    
  beginShape();
  fill(0,0,255); 
  vertex(x2+200, 0);
  vertex(x2+200, 20);
  vertex(x2+280, 20);
  vertex(x2+280, 0);
  endShape();
  
  fill(255,0,0);   
  
  // Update the position of the shape
  if(run == 1)  {
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  }
  
  if(ypos < 20+ radius) {
   if(x2 + 200 < xpos && x2 + 280 > xpos)  {
     ydirection *= -1;
     }
   
   }
  if(ypos > 460 - radius) {
   if(x1 + 200 < xpos && x1 + 280 > xpos)  {
     ydirection *= -1;
   }
  
   }
  if(ypos > 480 - radius)  {
    out1 = 1;
    if(out1 == 1)  {
    score2++;
    println(score1, score2);
    xpos = 240;
    ypos = 240;
    out1 = 0;
    }
    
  }
  
  if(ypos < 0+ radius)  {
    out2 = 1;
    if(out2 == 1)  {
    score1++;
    println(score1, score2);
    xpos = 240;
    ypos = 240;
    out2 = 0;
    }
  }

  

  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1

 if (xpos > width-radius || xpos < radius) {
    xdirection *= -1;
  }
  
  

  // Draw the shape
  ellipse(xpos, ypos, radius, radius);
if(mousePressed)  {
  xpos = 240;
  ypos = 240;
  run = 0;
  score1 = 0;
  score2 = 0;
  delay(1000);
  run = 1;
}

 text(globalTime / 1000, 26, 30, 240, 100);
 
}



