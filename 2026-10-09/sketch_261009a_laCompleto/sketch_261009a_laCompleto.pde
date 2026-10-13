ArrayList<Celula> celulas;
CelulaAnticuerpo anticuerpo;

void setup () {
  size (500, 500);

  anticuerpo = new CelulaAnticuerpo(200, 200);
  celulas = new ArrayList<Celula>();
  
  for (int k = 0; k < 20; k++) {
    float x = random(0, width);
    float y = random(0, height);
    
    celulas.add(new CelulaInfectada(x,y));
    
    x = random(0, width);
    y = random(0, height);
    celulas.add(new CelulaSana(x,y));
  }
  
}

void draw () {
  background(100);
  
  for (int i = celulas.size() - 1; i >=0; i--) {
    Celula c= celulas.get(i);
    c.actualizar();
    c.dibujar();
    if (anticuerpo.colision(c)) {
     if (c.fondo == color (0, 240, 0))  {
       // restar
     }
     
     if (c.fondo == color (200, 0, 0)) {
       // sumar 
       celulas.remove(i);
     }
    }
  }
  
  anticuerpo.dibujar();
  anticuerpo.actualizar();
  
}
