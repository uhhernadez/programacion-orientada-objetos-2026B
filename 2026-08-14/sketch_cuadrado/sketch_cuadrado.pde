int x1, y1;
int x2, y2;
int x3, y3;
int x4, y4;

int x, y;
int ancho, largo;

void setup () {
  x1 = 20; y1 = 20;
  x2 = 40; y2 = 20;
  x3 = 40; y3 = 40;
  x4 = 20; y4 = 40;
  
  x = 50; y = 50;
  ancho = 20; largo = 20;
}

void draw () {
  background(1);
  // Rectángulo 1
  line(x1, y1, x2, y2);
  line(x2, y2, x3, y3);
  line(x3, y3, x4, y4);
  line(x4, y4, x1, y1);
  // Rectángulo 2
  line (x, y, x + ancho, y);
  line (x + ancho, y, x + ancho, y + largo);
  line (x + ancho, y + largo, x, y + largo);
  line (x, y + largo, x, y);
  //
  text("("+  mouseX + "," + mouseY + ")", 10, 10);
}
