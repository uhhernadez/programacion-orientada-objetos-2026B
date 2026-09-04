// Declaración del objeto
// instancia de la clase
Cuadrado c1, c2;

void setup () {
  size (500, 500);
  // Inicializamos la clase (reservar memoría)
  c1 = new Cuadrado(250, 250, 100, color(255, 0, 0));
  c2 = new Cuadrado(250, 250, 20, color (0, 0, 255));
}

void draw () {
  background(125);
  c1.MoverPerlin();
  c1.Dibujar();
  
  c2.MoverAleatorio();
  c2.Dibujar();
}
