float [] x = {
  20, 40, 40, 20
};

float [] y = {
  20, 20, 40, 40
};

void setup () {
  
}

void draw () {
  background(1);
  
  if ( isIn(x, y)) {
      fill (255, 0, 0);
  } else {
    fill (255);
  }
  
  drawRect (x, y);
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
