boolean strokebool = false;

void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
  int filling = (int)(Math.random()*3);
  if (filling == 2) {
    background(255, 255, 100);
  } else if (filling== 1) {
    background(100, 255, 255);
  } else {
    background(255, 100, 255);
  }
  for (int i = 510; i >= -15; i-=(int)(Math.random()*10+10)) {
    for (int j = 510; j >= -15; j-=(int)(Math.random()*10+10)) {
      scale(i, j, filling);
    }
  }
}
void scale(int x, int y, int filler) {
  int tocolor = (int)(Math.random()*255);
  int xSize = (int)(Math.random()*10+30);
  int ySize = (int)(Math.random()*5+15);
  
  if (filler == 2) {
    if (strokebool) {
      stroke(tocolor+20, 255, 120);
    }
    fill(tocolor, 255, 100);
  } else if (filler == 1) {
    if (strokebool) {
      stroke(130, tocolor+30, 255);
    }
    fill(100, tocolor, 255);
  } else {
    if (strokebool) {
      stroke(255, 120, tocolor+20);
    }
    fill(255, 100, tocolor);
  }
  if (!strokebool){
    stroke(0, 0, 0);
  }
  
  ellipse(x-xSize/2, y-ySize/2, xSize+(int)(Math.random()*5), ySize+(int)(Math.random()*5));
  
  /*beginShape();
  curveVertex(x-xSize/2, y-ySize/2);
  curveVertex(x-xSize/2, y-ySize/2);
  
  curveVertex(x+xSize/2, (y-ySize/2)+(int)(Math.random()*5));
  curveVertex(x+xSize/2, (y+ySize/2)-(int)(Math.random()*5));
  
  curveVertex(x-xSize/2, y+ySize/2);
  curveVertex(x-xSize/2, y+ySize/2);
  endShape();*/
}

void mousePressed() {
  if (mouseButton == RIGHT){
    if (strokebool)
      stroke(0, 0, 0);
    strokebool = !strokebool;
  }
  redraw();
}
