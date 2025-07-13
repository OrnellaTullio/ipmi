// link a youtube: https://youtu.be/xc1tg4IhE98?si=9Boqs9NdAjEPIXNN

PImage ref;  
int ancho = 50;
int largo;
int estado = 0; // 0: original, 1: círculo mediano, 2: círculo grande, 3: invertir colores

void setup() {
  size(800, 400);
  noStroke();
  ref = loadImage("imagenderef.jpg");
  image(ref,0,0);
} 

void draw() {
   dibujarTodo(); 
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
