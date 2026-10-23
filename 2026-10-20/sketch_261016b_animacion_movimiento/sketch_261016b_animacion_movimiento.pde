Animacion espera;  
Animacion caminar;
float x, y;
void setup () {
  size(500, 500);
  x = 100;
  y = 100;
  espera = new Animacion ("dog", "Idle", 10, x, y);
  caminar = new Animacion ("dog", "Walk", 10, x, y);
}

void draw () {
  background(124); 
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      x--;
    }
    
    if (key == 'd' || key == 'D') {
      x++;
    }
    caminar.mostrar(x,y);
    caminar.actualizar();
  } else {
    espera.mostrar(x,y);
    espera.actualizar();
  }
  
}
