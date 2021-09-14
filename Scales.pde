void setup() {
  size(700, 700);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  //your code here
  int filling = (int)(Math.random()*3);
  /*if (filling == 2) {
    background(255, 255, 100);
  } else if (filling== 1) {
    background(100, 255, 255);
  } else {
    background(255, 100, 255);
  }*/
  for (int i = 710; i >= -15; i-=(int)(Math.random()*10+10)) {
    for (int j = 710; j >= -15; j-=(int)(Math.random()*10+10)) {
      scale(i, j, filling);
    }
  }
}
void scale(int x, int y, int filler) {
  //your code here
  int tocolor = (int)(Math.random()*255);
  int xSize = (int)(Math.random()*10+30); //optional, could use 40
  int ySize = (int)(Math.random()*5+15); //optional, could use 20
  
  //for (int i = 0; i <= 10; i++) {
    if (!stroke)
      stroke(0, 0, 0);
    if (filler == 2) {
      if (stroke)
        stroke(tocolor+20, 255, 120);
      fill(tocolor, 255, 100);
    } else if (filler == 1) {
      if (stroke)
        stroke(130, tocolor+30, 255);
      fill(100, tocolor, 255);
    } else {
      if (stroke)
        stroke(255, 120, tocolor+20);
      fill(255, 100, tocolor);
    }
    
    beginShape();
    curveVertex(x-xSize/2, y-ySize/2);
    curveVertex(x-xSize/2, y-ySize/2);
    
    curveVertex(x+xSize/2, (y-ySize/2)+(int)(Math.random()*5));
    curveVertex(x+xSize/2, (y+ySize/2)-(int)(Math.random()*5));
    
    curveVertex(x-xSize/2, y+ySize/2);
    curveVertex(x-xSize/2, y+ySize/2);
    endShape();
  //}
}
boolean stroke = true;

void mousePressed() {
  if (mouseButton == RIGHT){
    stroke = !stroke;
  }
  redraw();
}
