//liam H. 4-5-17
int x = 0;
int y = 0;
int red = 0;
void setup() {
  size(480, 480);
  smooth();
}

void draw() {
   
  
  if (keyPressed && (key == CODED)) { // If it’s a coded key
    if (keyCode == LEFT) { // If it’s the left arrow
      x--;
      } else if (keyCode == RIGHT) { // If it’s the right arrow
      x++;
      } else if (keyCode == UP) { // If it’s the right arrow
      y--;
      } else if (keyCode == DOWN) { // If it’s the right arrow
      y++;
      }
    }

  fill(255,105,180);     
  // Face
  ellipse(x+240,y+300,310,300);

// Left Ear
  beginShape();
  vertex(x+120, y+230);
  vertex(x+110,y+100);
  vertex(x+180, y+200);
  endShape();

// Right Ear
  beginShape();
  vertex(x+480-120,y+230);
  vertex(x+480-110,y+100);
  vertex(x+480-180, y+200);
  endShape();

 //eye whites
 if (keyPressed && (key == CODED)) { // If it’s a coded key
    if (keyCode == ENTER)  {
       fill(255,0,0);  
   
  }
  
 }
  else if (keyPressed == false)
 {
   fill(255,255,255);
 }

   

 

  ellipse(x+180,y+260,50,40);
  ellipse(x+480-180,y+260,50,40);
  
  //eye pupils
  if (keyPressed && (key == CODED)) { // If it’s a coded key
    if (keyCode == DELETE)  {
       fill(100,100,100);  
   
  }
  
 }
  else if (keyPressed == false)
 {
   fill(0,0,0);
 }
  
  if(mouseX > 175)  
  {
    if(mouseY > 267)  {
       ellipse((x+180)+(mouseX/20),(y+260)+(mouseY/35),20,25);
    }
    else if(mouseY < 267)  {
       ellipse((x+180)+(mouseX/20),(y+260)+(mouseY/35),20,25);
    }
  }
  else if(mouseX < 180)
  {
    if(mouseY > 267)  {
       ellipse((x+180)+(mouseX/20),(y+260)+(mouseY/35),20,25);
    }
    else if(mouseY < 267)  {
       ellipse((x+180)+(mouseX/20),(y+260)+(mouseY/35),20,25);
    }
  }
  //pupil 2
  if(mouseX > 480-180)  
  {
    if(mouseY > 267)  {
       ellipse((x+480-180)+(mouseX/20),(y+260)+(mouseY/35),20,25);
    }
    else if(mouseY < 267)  {
       ellipse((x+480-180)+(mouseX/20),(y+260)+(mouseY/35),20,25);
    }
  }
  else if(mouseX < 480-180)
  {
    if(mouseY > 267)  {
       ellipse((x+480-180)+(mouseX/20),(y+260)+(mouseY/35),20,25);
    }
    else if(mouseY < 267)  {
       ellipse((x+480-180)+(mouseX/20),(y+260)+(mouseY/35),20,25);
    }
}

    

 

//nose
  fill(255,105,180);   
  ellipse(x+240,y+340,70,50);
  fill(0,0,0);
  ellipse(x+227,y+340,10,20);
  ellipse(x+480-227,y+340,10,20);

}
