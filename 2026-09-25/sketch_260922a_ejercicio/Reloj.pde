class Reloj {
  float inicio;
  float terminacion;
  PFont font;

  Reloj () {
    inicio = 0;
    terminacion = 0;
    font = createFont("Segment7.ttf", 40);
  } 
  
  void dibujar () {
    float segundos = millis() / 1000.0;
    float tiempoTotal = segundos - inicio;
    textSize(30);
    String tiempo = nf(tiempoTotal, 0, 2);
    textAlign(RIGHT);
    textFont(font);
    text(tiempo,width - 60, 30);
  }
  void inicio () {
    inicio = millis() / 1000.0;
  }
  
  void terminacion () {
    terminacion = millis() / 1000.0;
  }
  
  void tiempoTotal () {
    float tiempoTotal = terminacion - inicio;
    textSize(30);
    String tiempo = nf(tiempoTotal, 0, 2);
    textAlign(CENTER);
    textFont(font);
    text(tiempo,width/2, height/2);
  }
}
