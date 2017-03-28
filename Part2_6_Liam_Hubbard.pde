size(480, 480);
smooth();

fill(255,105,180);     // Top Red
ellipse(240,300,310,300);

beginShape();
vertex(120, 230);
vertex(110,100);
vertex(180, 200);


endShape();

beginShape();
vertex(480-120,230);
vertex(480-110,100);
vertex(480-180, 200);

endShape();
fill(255,255,255);     

ellipse(180,260,50,40);
ellipse(480-180,260,50,40);
fill(0,0,0);
ellipse(175,267,20,25);
ellipse(480-175,267,20,25);

fill(255,105,180);   
ellipse(240,340,70,50);
fill(0,0,0);
ellipse(227,340,10,20);
ellipse(480-227,340,10,20);
