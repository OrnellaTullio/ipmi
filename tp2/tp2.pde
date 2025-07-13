
String texto1 = "La historia se desarrolla en la Academia Hope's Peak, una prestigiosa\nescuela privada que solo acepta estudiantes Ultimate: los mejores entre\nlos mejores. El criterio se extiende a cualquier nicho, así que además de \nsupergenios y superatletas,aceptan superídolos, superlíderes de\npandillas y supernerds.";
String texto2 = "Makoto Naegi, nuestro protagonista, es un estudiante de preparatoria que\nobtuvo su talento al ganar una lotería de estudiantes completamente\nordinarios, lo que lo llevó a unirse a la Academia Kibougamine como el mejor\nestudiante afortunado. A punto de comenzar su primer día de clases, cuando\nda el primer paso en la entrada de la escuela, su visión se distorsiona\n y pierde el conocimiento.";
String texto3 = "Cuando Makoto despierta, se encuentra atrapado con otros catorce estudiantes\ndentro de los muros de la academia, con las salidas y ventanas cerradas\ncon llave. Un sádico oso de peluche asesino llamado Monokuma se\nrevela como el instigador de su difícil situación y les da dos opciones:\nvivir el resto de sus vidas en paz dentro de la Jaula Dorada de la escuela o\nintentar escapar graduándose. ";
String texto41 = "Para graduarse, un estudiante debe cometer un asesinato perfecto";
String texto42 = "matar a otro estudiante y salir impune.";
String texto43 = "Cuando ocurre un asesinato, se celebra un juicio entre los supervivientes,\nquienes investigan el caso y votan para determinar quién creen que es el asesino.";
String texto51 = "Si aciertan, el culpable es ejecutado\n de forma desordenada por\"alteración del orden público." ;
String texto52 = "Si se equivocan, el asesino se gradúa\n y se le permite abandonar la escuela, mientras que los\n demás asumen el castigo en su lugar.";

int limiteT1 = 40;
int limiteB1 = 426;
PImage portada;
PImage pant1;
PImage pant2;
PImage pant3;
PImage pant4;
PImage logo;

PImage Makoto;
PImage Kyoko;
PImage Touko;
PImage Ishimaru;
PImage Mondo;
PImage Chihiro;
PImage Celeste;
PImage Aoi;
PImage Sakura;
PImage Leon;
PImage Sayaka;
PImage Hifumi;
PImage Byakuya;
PImage Mukuro;
PImage Junko;
PImage hagakure;
PImage ejecucion;
PImage trial;
PImage shock;


color rojo = color(255, 0, 0);

float mov1 = -340;             // posición inicial del "ancho" del botón
float movTextoX = -680;         // posición inicial del texto
float velocidad = 2;           // velocidad del movimiento
float mov2 = 680;
float movTextoY = 680;
float texto41X = -400;
float texto42X = -400;
float texto43X = -400;

float texto51X = width + 400;   
float texto52X = width + 400;

float alphaShock = 255;
float alphaEjec = 255;
float alphaTrial = 255;

int limiteAncho = 320;       
int limiteTextoX = 40;       
int limiteAlto = 240;

String estado;
int e;
PFont fuente;


void setup() {
  size( 640, 480 );

  //texto
  fuente = loadFont("Microsoft-JhengHeiUI-B.vlw");
  textFont(fuente);
  textSize(20);

  //imagenes - fondo
  portada = loadImage("pa1 (1).jpg");
  pant1 = loadImage("pant1.jpg");
  pant2 = loadImage("pant2.jpg");
  pant3 = loadImage("pant4.jpg");
  pant4 = loadImage("MonoSil.jpg");
  logo = loadImage("THH_logo (1).jpg");
  logo.resize(600, 0);

  //imagenes - sprites

  Makoto = loadImage("1-Makoto.jpg");
  Kyoko = loadImage("Kyoko.jpg");
  Touko = loadImage("1-Toko.jpg");
  Ishimaru = loadImage("1-Kiyotaka.jpg");
  Mondo = loadImage("Mondo.jpg");
  Chihiro = loadImage("1-Chihiro.jpg");
  Celeste = loadImage("Celestia.jpg");
  Aoi = loadImage("1-Aoi.jpg");
  Sakura = loadImage("1-Sakura.jpg");
  Leon = loadImage("Leon.jpg");
  Sayaka = loadImage("1-Sayaka.jpg");
  Hifumi = loadImage("Hifumi.jpg");
  Byakuya = loadImage("Byakuya.jpg");
  Mukuro = loadImage("Mukuro.jpg");
  Junko = loadImage("1-junko.jpg");
  hagakure = loadImage("1-Yasuhiro.jpg");
  ejecucion = loadImage("guilty.jpg");
  shock = loadImage ("shock.jpg");
  trial = loadImage ("ClassT (1).jpg");

  //asigno valor por defecto a mis variables
  estado = "pantalla-1";
  e = 1;
}

void draw() {
  // --------------------------- PANTALLA 1 ---------------------------
  if (e == 1) {
    background(0);

    textAlign(CENTER, CENTER);
    image(logo, width/2-290, height/2-140);

    // Botón
    strokeWeight(5);
    stroke(255);
    fill(0);
    rectMode(CENTER);
    rect(width/2, height/2 + 150, 213, 60, 15);
    fill(rojo);
    text("INICIAR", width/2, height/2 + 150);
  }

  // --------------------------- PANTALLA 2 ---------------------------
  else if (e == 2) {
    background(100);
    image(pant1, 0, 0);

    // Movimiento del texto hacia la derecha
    if (movTextoX < limiteTextoX) {
      movTextoX = movTextoX + velocidad;
    }
    if ( mov1 < limiteAncho) {
      mov1 = mov1 + velocidad*0.9;
    }

    strokeWeight(10);
    stroke(100);
    fill(255, 204);
    rect(mov1, height - 405, 600, 130, 10);


    fill(0);
    textAlign(LEFT, TOP);
    textSize(15);
    text(texto1, movTextoX, height - 450);

    // Evento de tiempo: pasar a pantalla 3
    if (frameCount - tiempoInicio >= 60 * 15) {
      e = 3;
      tiempoInicio = frameCount;
    }
  }

  // --------------------------- PANTALLA 3 ---------------------------
  else if (e == 3) {
    if (frameCount - tiempoInicio == 1) {
      mov2 = 680;
      movTextoY = 680;
    }
    image(pant2, 0, 0);

    if (mov2 > height - 97) {
      mov2 = mov2 - velocidad;
    }
    if (movTextoY > height - 37) {
      movTextoY = movTextoY - velocidad * 0.7;
    }

    rectMode(CENTER);
    fill(255, 204);
    stroke(100);
    strokeWeight(10);
    rect(width/2, mov2, 600, 135, 15);

    fill(0);
    textAlign(LEFT, BOTTOM);
    text(texto2, width - 600, movTextoY);

    if (frameCount - tiempoInicio >= 60 * 15) {
      e = 4;
      tiempoInicio = frameCount;
      movTextoY = 680;
    }
  }
  // --------------------------- PANTALLA 4 ---------------------------
  else if (e == 4) {
    image(pant4, 0, 0);

    // Animación de texto deslizándose desde abajo
    if (movTextoY > height - 150) {
      movTextoY = movTextoY - velocidad * 0.7;
    }

    // Fondo blanco para texto
    rectMode(CENTER);
    stroke(100);
    strokeWeight(10);
    fill(255);
    rect(width/2, movTextoY+45, 600, 130, 15);

    // Texto
    fill(0);
    textAlign(LEFT, TOP);
    textSize(14);
    text(texto3, width - 600, movTextoY);

    // Cambio automático a pantalla 5
    if (frameCount - tiempoInicio >= 60 * 12) {
      e = 5;
      tiempoInicio = frameCount; // reiniciar tiempo
      movTextoY = 680; // reiniciar animación
    }
  }

  // --------------------------- PANTALLA 5 ---------------------------
  else if (e == 5) {
    image(pant3, 0, 0);

    // Movimiento hacia el centro (x = width/2)
    if (texto41X < width/2) {
      texto41X = texto41X + velocidad;
    }
    if (texto42X < width/2) {
      texto42X = texto42X + velocidad;
    }
    if (texto43X < width/2) {
      texto43X = texto43X + velocidad;
    }

    // Fondo para texto41
    fill(200, 204);
    stroke(0);
    strokeWeight(8);
    rectMode(CENTER);
    rect(texto41X, height/2 - 50, 600, 42, 10);

    // Fondo para texto42 (el rojo)
    stroke(66, 12, 9);
    fill(255, 204);
    rect(texto42X, height/2, 600, 42, 10);

    // Fondo para texto43
    fill(200, 204);
    stroke(0);
    rect(texto43X, height/2 + 50, 600, 42, 10);


    textAlign(CENTER, CENTER);
    textSize(14);
    fill(0);
    text(texto41, texto41X, height/2 - 50);
    fill(rojo);
    textSize(20);
    text(texto42, texto42X, height/2);
    textSize(14);
    fill(0);
    text(texto43, texto43X, height/2 + 50);

    if (frameCount - tiempoInicio >= 60 * 12) {
      e = 6;
      tiempoInicio = frameCount;
      movTextoY = 680;

      // Reiniciar posición de los textos por si se vuelve desde reinicio
      texto41X = -400;
      texto42X = -400;
    }
  }
  // --------------------------- PANTALLA 6 ---------------------------
  else if (e == 6) {

    image(pant3, 0, 0);

    if (alphaShock > 0) alphaShock = alphaShock - 0.1;
    if (alphaEjec > 0) alphaEjec = alphaEjec - 0.3;
    if (alphaTrial > 0) alphaTrial = alphaTrial - 0.5;

    tint(255, alphaShock);
    image(shock, 150, 150);
    tint(255, alphaEjec);
    image(ejecucion, 150, 150);
    tint(255, alphaTrial);
    image(trial, 150, 150);
    tint(255);

    if (texto51X > 40) {
      texto51X = texto51X - velocidad;
    }
    if (texto52X > 40) {
      texto52X = texto52X - velocidad;
    }

    fill(200, 204);
    stroke(0);
    strokeWeight(8);
    rectMode(CORNER);
    rect(texto51X - 10, 15, 580, 50, 10);  // sigue a texto51X

    // Fondo para texto52 (abajo)
    rect(texto52X - 10, 395, 580, 60, 10); // sigue a texto52X

    fill(50);
    textSize(14);
    textAlign(LEFT, TOP);

    // Texto 51 arriba
    text(texto51, texto51X, 20);

    // Texto 52 abajo
    text(texto52, texto52X, 400);

    // Cambio automático de pantalla
    if (frameCount - tiempoInicio >= 60 * 12) {
      e = 7;
      tiempoInicio = frameCount;

      // Reinicio por si se vuelve
      texto51X = width + 400;
      texto52X = width + 400;
    }
  }
  // --------------------------- PANTALLA 7 ---------------------------
  else if (e == 7) {
    background(0);

    int imgW = 100;
    int imgH = 140;
    int espaciadoX = 40;
    int espaciadoY = 20;
    int inicioX = width/2 - (imgW*4 + espaciadoX*3)/2;
    int inicioY = 40;

    // Fila 1
    image(Sayaka, inicioX + 0*(imgW+espaciadoX), inicioY, imgW, imgH);
    image(Junko, inicioX + 1*(imgW+espaciadoX), inicioY, imgW, imgH);
    image(Aoi, inicioX + 2*(imgW+espaciadoX), inicioY, imgW, imgH);
    image(Sakura, inicioX + 3*(imgW+espaciadoX), inicioY, imgW, imgH);

    // Fila 2
    image(Celeste, inicioX + 0*(imgW+espaciadoX), inicioY + imgH + espaciadoY, imgW, imgH);
    image(Kyoko, inicioX + 1*(imgW+espaciadoX), inicioY + imgH + espaciadoY, imgW, imgH);
    image(Touko, inicioX + 2*(imgW+espaciadoX), inicioY + imgH + espaciadoY, imgW, imgH);
    image(Mukuro, inicioX + 3*(imgW+espaciadoX), inicioY + imgH + espaciadoY, imgW, imgH);

    // Botón de reinicio
    rectMode(CENTER);
    stroke(255);
    strokeWeight(4);
    fill(rojo);
    rect(width/2, height - 40, 200, 50, 15);

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(16);
    text("REINICIAR", width/2, height - 40);
  }
}

int tiempoInicio = 0;

void mousePressed() {
  if (e == 1) {
    if (mouseX > width/2 - 110 && mouseX < width/2 + 110 && mouseY > height/2 + 115 && mouseY < height/2 + 165) {
      e = 2;
      tiempoInicio = frameCount;
      movTextoX = -680;
      mov1 = -340;
    }
  } else if (e == 7) {
    if (mouseX > width/2 - 100 && mouseX < width/2 + 100 &&
      mouseY > height - 65 && mouseY < height - 15) {
      // Reiniciar variables
      e = 1;
      movTextoX = -680;
      mov1 = -340;
      movTextoY = 680;
      texto41X = -400;
      texto42X = -400;
      texto43X = -400;
      texto51X = width + 400;
      texto52X = width + 400;
      tiempoInicio = 0;
    }
  }
}
