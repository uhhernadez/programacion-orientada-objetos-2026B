boolean teclaA = false;
boolean teclaD = false;
boolean teclaC = false;
boolean teclaEspacio = false;

Personaje dog;
Imagen fondo;
ClipAudio musicaFondo;

void setup () {
  size(500, 500);
  dog = new Personaje (200, 200, this);
  fondo = new Imagen("fondo.png", 0, -750, 1);
  musicaFondo= new ClipAudioSound(this,"low_rider.mp3");
  musicaFondo.reproducirEnBlucle();
  musicaFondo.volumen(0.2);
}
void draw () {
  background(124);  
  //fondo.mostrarEquina();
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
  if (key == ' ') {
    teclaEspacio = true;
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
    teclaC = false;
  }
  if (key == ' ') {
    teclaEspacio = false;
  }
}
