EnemigoNervioso cobarde;
EnemigoRapido correcaminos;

void setup () {
  size (500, 500);
  cobarde = new EnemigoNervioso(250, 0);
  correcaminos = new EnemigoRapido(100, 0);
}

void draw () {
  cobarde.mover();
  cobarde.dibujar();
  
  correcaminos.mover();
  correcaminos.dibujar();
}
