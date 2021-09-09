void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  //your code here
  int filling = (int)(Math.random()*3);
  background(0, 255, 0);
  for (int i = 510; i >= -15; i-=(int)(Math.random()*10+10)) {
    for (int j = 510; j >= -15; j-=(int)(Math.random()*10+10)) {
      scale(i, j, filling);
    }
  }
}
void scale(int x, int y, int filler) {
  //your code here
  int tocolor = (int)(Math.random()*255);
  if (filler == 2) {
    fill(tocolor, 255, 100);
  } else if (filler == 1) {
    fill(100, tocolor, 255);
  } else {
    fill(255, 100, tocolor);
  }
  
  int xSize = (int)(Math.random()*10+30); //optional, could use 40
  int ySize = (int)(Math.random()*5+15); //optional, could use 20
  
  //ellipse(x, y, xSize, ySize);
  
  //https://processing.org/reference/curveVertex_.html
  beginShape();
  curveVertex(x-xSize/2, y-ySize/2);
  curveVertex(x-xSize/2, y-ySize/2);
  
  curveVertex(x+xSize/2, (y-ySize/2)+(int)(Math.random()*5));
  curveVertex(x+xSize/2, (y+ySize/2)-(int)(Math.random()*5));
  
  curveVertex(x-xSize/2, y+ySize/2);
  curveVertex(x-xSize/2, y+ySize/2);
  endShape();
  
  /*fill(100, green/2, 255);
  ellipse(x, y, xSize/2, ySize/2);*/
}
