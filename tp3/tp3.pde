PImage ref;  
int ancho = 50;
int largo;
int estado = 0; // 0: original, 1: círculo mediano, 2: círculo grande, 3: invertir colores

void setup() {
  size(800, 400);
  noStroke();
  ref = loadImage("imagenderef.jpg");
  dibujarTodo();
  image(ref,0,0);
}

void draw() {
//image(ref,0,0);
if (estado == 1) {
    dibujarTodo(); // Redibuja continuamente en estado 1
  }
}

void mousePressed() {
  estado = (estado + 1) % 4;
  dibujarTodo();
}

//reiniciar interacciones
void keyPressed() {
  estado = 0;
  dibujarTodo();
}
