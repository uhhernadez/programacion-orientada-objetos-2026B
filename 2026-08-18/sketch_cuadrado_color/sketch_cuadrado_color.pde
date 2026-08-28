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
  /*
  if (mouseX > x1) {
    if (mouseX < x2) {
      
    }
  }*/
  
  if ( mouseX > x[0] && mouseX < x[1]) {
    if ( mouseY > y[0] && mouseY < y[3]) {
      fill (255, 0, 0);
    }
  } else {
    fill (255);
  }
  
  beginShape();
    vertex(x1, y1);
    vertex(x2, y2);
    vertex(x3, y3);
    vertex(x4, y4);
  endShape(CLOSE);
  
  
  
  text("("+  mouseX + "," + mouseY + ")", 10, 10);
}
