//vogliolo bianca 46201410
//comision 3
//link al video en youtube: https://youtu.be/DyIiMoF8xJ8


// Declaramos una variable para almacenar la imagen
PImage d;

// Variables para definir la cantidad de elementos y colores
int cant = 800;
int bgColor = 0;
boolean colorChange = false;
float rotationAngle = 0; // Ángulo de rotación

// setup() se ejecuta una vez al inicio para configurar el entorno
void setup() {
  // Establecemos el tamaño de la ventana
  size(800, 400);

  // Cargamos la imagen desde el archivo "ilusion.png"
  d = loadImage("ilusion.png");

  // Redimensionamos la imagen a 400x400 píxeles
  d.resize(400, 400);
}

// draw() se ejecuta continuamente para dibujar en la pantalla
void draw() {
  // Trasladamos el origen de coordenadas a (400, 0)
  translate(400, 0);

  // Establecemos el color de fondo
  background(bgColor);

  // Si el ratón está presionado
  if (mousePressed) {
    colorChange = true;
    // Modificar el color de fondo con el mouse
    float mx = map(mouseX, 0, width, 0, 255);
    float my = map(mouseY, 0, height, 0, 255);
    bgColor = color(mx, 0, my);
    rotationAngle += 0.05; // Incrementar el ángulo de rotación
  } else {
    colorChange = false;
    bgColor = 0; // Vuelve el fondo a negro cuando no se presiona el mouse
    rotationAngle = 0; // Restablecer el ángulo de rotación
  }

  // Dibujamos rectángulos y rombos con estructuras repetitivas
  dibujarRectangulos();
  dibujarRombos();

  // Dibujamos un rectángulo blanco a la izquierda de la pantalla
  fill(255);
  rect(-400, 0, 400, 400);

  // Dibujamos la imagen en la posición (-400, 0)
  image(d, -400, 0, 400, 400);
}

// Función para dibujar rectángulos en filas alternas
void dibujarRectangulos() {
  for (int i = 0; i < 4; i++) {
    for (int x = (i % 2 == 0 ? 10 : -20); x < cant; x += 20) {
      fill(255); // Blanco
      rect(x, i * 100, 10, 100);
    }
  }
}

// Función para dibujar rombos
void dibujarRombos() {
  for (int x = -280; x < cant; x += 140) {
    for (int y = -280; y < cant; y += 140) {
      rombo(x, y, 70, 70);
    }
  }
  for (int x = -350; x < cant; x += 140) {
    for (int y = -210; y < cant; y += 140) {
      rombo(x, y, 70, 70);
    }
  }
}

// Función para dibujar un rombo
void rombo(int x, int y, int a, int l) {
  int tam = 70;
  int g = 10;
  push();
  rectMode(CENTER);
  translate(x, y); // Trasladamos el origen de coordenadas al centro del rombo
  rotate(radians(45) + rotationAngle); // Añadimos el ángulo de rotación
  fill(255); // Blanco para el rombo principal
  rect(0, 0, a, l);
  for (int i = -20; i <= 20; i += 10) {
    if (colorChange) {
      fill(i % 20 == 0 ? 0 : randomColor());
    } else {
      fill(i % 20 == 0 ? 0 : 255); // Blanco y negro
    }
    rect(0, i, tam, g);
  }
  pop();
}

// Función para generar un color aleatorio
color randomColor() {
  return color(random(255), random(255), random(255));
}

// Función para reiniciar el programa
void keyPressed() {
  if (key == 'r' || key == 'R') {
    bgColor = 0;
  }
}
