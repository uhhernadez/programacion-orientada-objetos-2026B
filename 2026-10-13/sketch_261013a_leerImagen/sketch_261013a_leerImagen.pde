PImage img;
void setup () {
  size (500, 500);
  img = loadImage("imagen.png");
  float factor = 0.45;
  img.resize(round(factor*img.width), round(factor*img.height));
  negativo(img);
  img.filter(BLUR, 2);
}

void draw () {
  //imageMode(CENTER);
  image(img, 0, 0);
  String resolucion = "(" + str(img.width) + "," 
                          + str(img.height) + ")";
  fill(0);
  textSize(20);
  text(resolucion, 50, 50);
  
  fill (255,0,0);
  textSize(50);
  textMode(CENTER);
  text("GruPoh.exe", width/2, height/2);
}

void negativo (PImage img) {
  img.loadPixels();
  for (int i = 0; i < img.pixels.length; i++) {
    color pixel = img.pixels[i];
    float r = 255 - red(pixel);
    float g = 255 - green(pixel);
    float b = 255 - blue(pixel);
    img.pixels[i] = color(r, g, b);
  }
  img.updatePixels();
}
