// vogliolo bianca
// comision 3
// DNI 46201410

PImage img, img1, img2, img3, img4;
PFont miFont;
int contador;
int estado;
float textMovX, textMovY;
int segundos;
boolean reset;
int x = 460;
int y = 400;
int radius = 30;

void setup() {
  size(640, 480);
  img = loadImage("serpiente_01.jpg");
  img1 = loadImage("serpiente_02.jpg");
  img2 = loadImage("serpiente_03.jpg");
  img3 = loadImage("serpiente_04.jpg");
  img4 = loadImage("serpiente_05.jpg");
  miFont = loadFont("Calibri-Bold-48.vlw");

  // Estados
  textAlign(CENTER, CENTER);
  estado = 0;  // Cambiado a 0 para empezar desde el primer estado
  textMovX = 0;
  textMovY = 0;
  segundos = 25000;  // Restaurado a 25000 milisegundos (25 segundos) para cada estado

  ellipseMode(RADIUS);
}

void draw() {
  textFont(miFont);
  int diferenciaTemporal = millis() - contador;

  // Resetear variables para mover al cambiar de diapositiva
  if (reset) {
    textMovX = 0;
    textMovY = 0;
    reset = false;
  }

  background(255);  // Limpia la pantalla en cada frame

  // Diapo 1
  if (estado == 0) {
    if (textMovY < 400) {
      textMovY = textMovY + 1;
    }
    image(img, 0, 0, 640, 480);
    textSize(20);
    fill(255);
    text("Los anillos de la serpiente BIOPUS, centro cultural de recoleta año 2019 \n\n ¿Qué hay detrás de la publicación? \n ¿Hay una esencia inmanente detrás de \n esa apariencia publicada en redes sociales?", 320, textMovY);
  }

  // Diapo 2
  if (estado == 1) {
    if (textMovY < 400) {
      textMovY = textMovY + 1;
    }
    image(img1, 0, 0, 640, 480);
    textSize(15);
    fill(255);
    text("Es una obra de arte interactivo \n que habla de las sociedades de control, \n de la relación del hombre contemporáneo con las redes sociales,\n de la publicación constante de nuestra intimidad.", 320, textMovY);
  }

  // Diapo 3
  if (estado == 2) {
    if (textMovY < 400) {
      textMovY = textMovY + 1;
    }
    image(img2, 0, 0, 640, 480);
    textSize(15);
    fill(255);
    text("Esta instalación busca plantear la fragilidad de nuestra subjetividad \n volcada a las imágenes en las pantallas \n como si uno fuera un producto de supermercado en permanente exhibición.", 320, textMovY);
  }

  // Diapo 4
  if (estado == 3) {
    if (textMovY < 400) {
      textMovY = textMovY + 1;
    }
    image(img3, 0, 0, 640, 480);
    textSize(15);
    fill(255);
    text("Por eso presentamos una serpiente que abre la boca e invita al público a meterse dentro \n y a recorrer las intimidades que otros volcaron a través de \n un breve cuestionario \n sobre los aspectos de sus vidas que no quieren mostrar \n en las redes.", 320, textMovY);
  }

  // Diapo 5
  if (estado == 4) {
    if (textMovY < 400) {
      textMovY = textMovY + 1;
    }
    image(img4, 0, 0, 640, 480);
    textSize(25);
    fill(255);
    text("FIN \n\n\n gracias por mirar \n\n\n\n profesor David Bedoian \n comisión 3\n Vogliolo Bianca 93545/1", 320, textMovY);

    // Botón para resetear
    float d = dist(mouseX, mouseY, x, y);
    fill(d < radius ? 100 : 200);  // Si d es menor que radio, 100 si no 200
    ellipse(x, y, radius, radius);
    noStroke();
  }

  // Cambio de diapo
  if (diferenciaTemporal >= segundos) {
    estado = (estado + 1) % 5;  // Volver al estado 0 después del último estado
    contador = millis();
    reset = true;
  }
}

// Botón
void mousePressed() {
  float d = dist(mouseX, mouseY, x, y);
  if (d < radius) {
    estado = 0;
    contador = millis();
    reset = true;
  }
}
