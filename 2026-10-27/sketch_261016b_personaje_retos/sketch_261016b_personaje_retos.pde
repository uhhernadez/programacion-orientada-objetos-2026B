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
float vy = 0;
float gravedad = 0.6;
float ySuelo = 400;
boolean enSuelo = true;
float x = 200, y = 400;
void draw () {
  background(124);  
  //fondo.mostrarEquina();
  dog.interacion();
  dog.mostrar();
  y += vy;
  vy += gravedad;
  
  if ( y >= ySuelo) {
    y = ySuelo;
    vy = 0;
    enSuelo = true;
  }
  
  if (keyPressed) {
      if (key == ' '){
        if (enSuelo) {
          vy = -10; 
          //y += vy; 
          enSuelo = false;
        }
      }
  }
  circle (x, y, 30);
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
    teclaC = false;
  }
}
