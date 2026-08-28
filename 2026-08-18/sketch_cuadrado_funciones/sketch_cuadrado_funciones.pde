float [] x1 = {
  20, 40, 40, 20
};

float [] x2 = {
  60, 80, 80, 60
};

float [] y1 = {
  20, 20, 40, 40
};

float [] y2 = {
  60, 60, 80, 80
};


void setup () {
  
}

void draw () {
  background(1);
  
  if ( isIn(x1, y1)) {
      fill (255, 0, 0);
  } else {
    fill (255);
  }
  drawRect (x1, y1);
  
  if ( isIn(x2, y2)) {
      fill (0, 255, 0);
  } else {
    fill (255);
  }
  drawRect (x2, y2);
 
  text("("+  mouseX + "," + mouseY + ")", 10, 10);
}

void drawRect (float [] x, float [] y) {
  beginShape();
    for (int i = 0; i < 4; i++) {
      vertex(x[i], y[i]);
    }
  endShape(CLOSE);
}

boolean isIn (float [] x, float [] y) {
  return mouseX > x[0] && mouseX < x[1] && mouseY > y[0] && mouseY < y[3];
}
