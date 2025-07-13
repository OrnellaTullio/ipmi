
void dibujarTodo() {

  largo = height / 8;

  pushMatrix();
  translate(width / 2, 0);
  dibujarFondoCuadriculado(0);
  cuadradoscentro(10);
  popMatrix();
}

//Función sin retorno: dibuja fondo cuadriculado
void dibujarFondoCuadriculado(int desplazamientoX) {
  for (int x = 0; x < width / 2; x += 17) {
    for (int y = 0; y < height; y += 17) {
      boolean esPar = ((x / 17 + y / 17) % 2 == 0);
      boolean invertido = (estado == 3);
      fill(invertido ? (esPar ? color(0, 100, 160) : color(50, 200, 120))
        : (esPar ? color(50, 200, 120) : color(0, 100, 160)));
      rect(x + desplazamientoX, y, 18, 18);

      // Definir tamaño de círculo con if
      int fondoCircleSize;
      if (estado == 3) {
        fondoCircleSize = 7;
      } else {
        fondoCircleSize = 4;
      }
      if (estado == 2) {
        fill(esPar ? color(0, 0, 50) : 255);
      } else {
        fill(esPar ? 255 : color(0, 0, 50));
      }
      ellipse(x + desplazamientoX, y, fondoCircleSize, fondoCircleSize);
    }
  }
}

//dibuja el patron del centro
void cuadradoscentro(int des) {
  largo = height / 8;

  // Cuadrados del centro
  for (int x = ancho; x < ancho + 270; x += 21) {
    for (int y = largo; y < largo + 270; y += 21) {
      boolean esPar = ((x / 21 + y / 21) % 2 == 0);
      boolean invertido = (estado == 3);

      fill(invertido ? (esPar ? color(0, 100, 160) : color(50, 200, 120))
                     : (esPar ? color(50, 200, 120) : color(0, 100, 160)));

      rect(x + des, y + des, 21, 21);
    }
  }

  // Círculos del centro
  for (int x = ancho; x < ancho + 290; x += 21) {
    for (int y = largo; y < largo + 290; y += 21) {
      boolean esPar = ((x / 21 + y / 21) % 2 == 0);

      int circleSize;

      if (estado == 1) {
        // map() sin constrain
        circleSize = int(map(mouseY, 0, height, 4, 9));
        // limitar el rango manualmente
        circleSize = max(4, min(circleSize, 9));
      } else {
        circleSize = obtenerTamañoCirculo(estado);
      }

      if (estado == 2) {
        fill(esPar ? 255 : color(0, 0, 50));
      } else {
        fill(esPar ? color(0, 0, 50) : 255);
      }

      ellipse(x + des, y + des, circleSize, circleSize);
    }
  }
}

//define tamaño del circulo por click
int obtenerTamañoCirculo(int estadoActual) {
  if (estadoActual == 0 || estadoActual == 3) return 5;
 // else if (estadoActual == 1) return 6;
  else return 7; // estado 2
}
