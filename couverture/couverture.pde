import processing.svg.*;

int gridSizeX = 1;
int gridSizeY = 30;
int whiteSpace = 20;

float jumpProba = 0;

void setup() {

  size(480, 666, SVG, "output4.svg");
  //size(480, 666);
  background(0);
  strokeWeight(8);
  stroke(30, 255, 0);
}

void draw() {
 // background(0);

  int pStart = 0;
  int pStop = 0;

  for (int y = 0; y < height; y += gridSizeY) {
    for (int x = 0; x < width; x += gridSizeX) {

     // if ((y == gridSizeY * 5) || (y == gridSizeY * 6) || (y== gridSizeY * 7) || (y== gridSizeY * 8)) {
     //   x = 100;
       //pourquoi attribuer une valeur a x pour décaler les rangs pour le texte fait-il crasher le programme ?
     // } 
        pStart = x;

      pStop = int(random(3, 42)) + pStart;
      line(pStart, y, pStop, y);
      pStart = pStop + whiteSpace;
      x = pStart;
    }
  }

  println("terminé");
  exit();
  // noLoop();
//  delay(2000);
}

void keyPressed() {
  loop();
}
