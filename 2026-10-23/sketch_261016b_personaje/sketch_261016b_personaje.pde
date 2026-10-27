boolean teclaA = false;
boolean teclaD = false;
boolean teclaC = false;

Personaje dog;
Imagen fondo;

void setup () {
  size(500, 500);
  dog = new Personaje (200, 200);
  fondo = new Imagen("fondo.png", 0, -750, 1);
}

void draw () {
  background(124);  
  fondo.mostrarEquina();
  dog.interacion();
  dog.mostrar();
}


void keyPressed() {
  if (key == 'a' || key == 'A') {
    teclaA = true;
  }
  if (key == 'd' || key == 'D') {
    teclaD = true;
  }
  if (key == 'c' || key == 'C') {
    teclaC = true;
  }
}

void keyReleased() {
  if (key == 'a' || key == 'A') {
    teclaA = false;
  }
  if (key == 'd' || key == 'D') {
    teclaD = false;
  }
  if (key == 'c' || key == 'C') {
    teclaD = false;
  }
}
