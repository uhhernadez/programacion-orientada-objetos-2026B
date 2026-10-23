Animacion muerto;
Animacion caer;
Animacion lastimar;
Animacion espera;  

void setup () {
  size(500, 500);
  muerto = new Animacion ("dog", "Dead", 10, 100, 100);
  caer = new Animacion ("dog", "Fall", 8, 250, 100 );
  lastimar = new Animacion ("dog", "Hurt", 10, 350, 100 );
  espera = new Animacion ("dog", "Idle", 10, 100, 300);
}

void draw () {
  background(124);  
  muerto.mostrar();
  muerto.actualizar();
  caer.mostrar();
  caer.actualizar();
  lastimar.mostrar();
  lastimar.actualizar();
  espera.mostrar();
  espera.actualizar();
}
