PImage dog;

void setup () {
  size(500, 500);
  dog = loadImage("dog/Idle_1.png");
  float factor = 0.5;
  int ancho = round (factor*dog.width);
  int alto = round (factor*dog.height);
  dog.resize(ancho, alto);
}
float x = 0;
void draw () {
  background(124);
  imageMode(CENTER);
  image(dog, x, 200);
  x+=0.1;
}
