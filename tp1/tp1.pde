PImage salchichaminiatura;

void setup(){
  salchichaminiatura = loadImage("perrito (1).jpg");
  background(200);
  size(800,400);
  }


void draw(){
  println( mouseX + " / " + mouseY );
  image(salchichaminiatura,0,32);
  
                                                                                // FONDO
  
     noStroke();
  fill(50,60,65);
  rect(400,32,400,213); // sombra de la pared
  
   noStroke();
  fill(100,110,115);
  rect(400,32,400,93); // parte iluminada de la pared
  
  stroke(100,110,115);
  strokeWeight(10);
  line(400,142,400+101,142); // parte iluminada de la pared
  
  stroke(100,110,115);
  strokeWeight(10);
  line(400+101,142,400+146,122);// parte iluminada de la pared
  
   noStroke();
  fill(100,110,115);
  rect(400,124,125,14); // parte iluminada de la pared
  
    noStroke();
    fill(30,30,30);
    ellipse(400+260,190,200,120);   //sombra del muñeco
  
  noStroke();
  fill(222,222,222);
  rect(402,245,400,123); // piso color base
 

  stroke(127,127,127);
  strokeWeight(10);
  line(402,249,800,249); // piso sombra
  
    stroke(20,20,20);
  strokeWeight(3);
  line(402,245,800,245); // piso sombra
  
    stroke(20,20,20);
  strokeWeight(10);
  line(402+157,249,800-67,249); // piso sombra
  
   stroke(130,130,130);
  strokeWeight(40);
line(400+180,254,400+256,275); // piso sombra
  
  stroke(30,30,30);
  strokeWeight(30);
  line(400+136,282,400+216,264); // piso sombra
  
  stroke(222,222,222);
strokeWeight(3);
point(400+103,65);
  
    stroke(222,222,222);
strokeWeight(3);
point(400+206,112);
  
    stroke(222,222,222);
strokeWeight(3);
point(400+181,124);
  
    stroke(222,222,222);
strokeWeight(3);
point(400+29,88);
  
 stroke(222,222,222);
strokeWeight(3);
point(400+63,158);  


                                                     
                                                                    // PERRITO
 
stroke(244,160,50);
strokeWeight(5);
fill(204,120,10);
ellipse(400+145, 180,60,95);//oreja izquierda, base y luz

noStroke();
fill(170,105,10);
rect(400+125,165,20,55);

stroke(170,105,10);
strokeWeight(12);
point(400+131,220);

noStroke();
fill(150,90,10);
rect(400+136,186,36,43);

noStroke();
fill(150,90,10);
ellipse(400+170, 168, 70, 100); //oreja izquierda sombra med

stroke(150,90,10);
strokeWeight(5);
line(400+136, 166, 400+136, 226); //oreja izquierda sombra med

stroke(244,160,50);
 strokeWeight(5);
line(400+135,134,400+172,116); //oreja izquierda luz

stroke(244,160,50);
strokeWeight(5);
fill(204,120,10);
ellipse(400+240, 180,60,100);//oreja derecha, base y luz



stroke(204,120,10);
strokeWeight(16);
line(400+214,125,400+239,135); //oreja derecha 

stroke(244,160,50);
strokeWeight(4);
line(400+214,119,400+246,130); //oreja derecha luz

stroke(150,90,10);
strokeWeight(16);
line(400+234,216,400+255,188); //oreja derecha sombra med

noStroke();
fill(150,90,10);
ellipse(400+220,180,95,60);       // sombra med oreja derecha

noStroke();
fill(110,65,5);
ellipse(400+180,158,70, 85);  // sombra osc oreja izquierda

noStroke();
fill(110,65,5);
ellipse(400+198, 237, 78, 76);       // panza, color base

noStroke();
fill(90,35,3);
ellipse(400+198, 220, 50, 50);       // panza, sombra

stroke(110,65,5);
strokeWeight(15);
line(400+165,216,400+140,280); // panza, detalle 

stroke(204,120,10);
strokeWeight(40);
line(400+155,265,400+135,275); // pata izquierda

stroke(170,105,10);
strokeWeight(30);
line(400+145,275,400+130,278); //pata izquierda sombra

stroke(204,120,10);
strokeWeight(40);
line(630,255,400+260,268); //pata derecha

stroke(110,65,5);
strokeWeight(30);
line(630,255,630,249); //pata derecha sombra

stroke(204,120,10);
strokeWeight(35);
line(400+160+10,216,400+192,253); // brazo izquierdo

stroke(214,180,90);
strokeWeight(10);
line(400+178,209,400+192,233); // brazo izquierdo luz

stroke(214,180,90,90);
strokeWeight(10);
line(400+163,228,400+181,260); // brazo izquierdo luz


noStroke();
fill(110,65,5);
ellipse(400+200, 158, 78, 80);// oreja derecha sombra osc

noStroke();
fill(90,35,3);
ellipse(400+195, 158, 78, 85); // oreja derecha sombra osc

 stroke(204,120,10);
strokeWeight(35);
line(400+220,210,400+222,250); // brazo derecho

stroke(214,180,90,90);
strokeWeight(10);
line(400+210,250,400+215,263); // brazo derecho luz

stroke(150,90,10);
strokeWeight(12);
line(400+230,190,400+240,212); //oreja derecha sombra media

stroke(150,90,10);
strokeWeight(15);
line(400+144,220,400+150,200); //oreja izquierda sombra media

stroke(90,35,3);
strokeWeight(5);
line(400+222,188,400+240,230); // sombra osc oreja derecha

stroke(110,65,5);
strokeWeight(10);
line(400+170,188,400+151,228); // sombra osc oreja izquierda

stroke(90,35,3);
strokeWeight(9);
point(400+168,198);//sombra osc oreja izq

stroke(90,35,3);
strokeWeight(4);
line(400+168,198,400+156,229);//sombra osc oreja izq

noStroke();
fill(204,120,10);
ellipse(400+190, 158, 78, 90); // cabeza, color base


stroke(0,0,0);
strokeWeight(12);
point(400+182,155);//ojo izquierdo


stroke(0,0,0);
strokeWeight(12);
point(400+212,153);//ojo derecho

stroke(214,180,90,90);
strokeWeight(8);
point(400+185,157); //ojo izq luz

stroke(0,0,40);
strokeWeight(14);
line(400+206,157,400+212,157); //nariz

stroke(0,0,40);
strokeWeight(2);
line(400+209,157,400+202,189); //boca

stroke(200,200,220,80);
strokeWeight(4);
line(400+204,155,400+212,155); //nariz

stroke(0,0,40);
strokeWeight(2);
line(400+202,189,400+219,186); //boca

stroke(0,0,40);
strokeWeight(2);
line(400+202,189,400+158,184); //boca
 
    stroke(0,0,0);
    strokeWeight(10);
  line(400,0,400,400); // linea divisoria (siempre abajo)
  
}
