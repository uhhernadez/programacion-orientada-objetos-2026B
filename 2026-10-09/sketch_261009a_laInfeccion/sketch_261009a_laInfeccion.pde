Celula eucariota;
CelulaSana sana; 
CelulaInfectada infectada;
CelulaAnticuerpo anticuerpo;

void setup () {
  size (500, 500);
  eucariota = new Celula (width / 2, height /2, 
                          20, #882970 );
  sana = new CelulaSana(20, 20);
  infectada = new CelulaInfectada (100, 100);
  anticuerpo = new CelulaAnticuerpo(200, 200);
}

void draw () {
  background(100);
  eucariota.dibujar();
  eucariota.actualizar();
  
  sana.dibujar();
  sana.actualizar();
  
  infectada.dibujar();
  //infectada.actualizar(sana);
  infectada.actualizar();
  
  anticuerpo.dibujar();
  anticuerpo.actualizar();
}
