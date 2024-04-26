//vogliolo bianca 
//legajo: 93545/1
//comision 3, profesor david bedoian
PImage img;

void setup() {
  // Definir el tamaño de la ventana
  size(800, 400); // 800 pixeles de ancho y 400 pixeles de alto
  // Establecer el color de fondo de la ventana
  background(193, 182, 92); // Color RGB: 193 (rojo), 182 (verde), 92 (azul)
  
  // Cargar la imagen desde el archivo "madregothel.jpg"
  img = loadImage("madregothel.jpg");
  // Redimensionar la imagen para que tenga un ancho de 400 píxeles y mantener la proporción
  img.resize(400, 0); // El segundo parámetro 0 indica que el alto se ajustará proporcionalmente
  
}

void draw () {
  
  image(img, 400, 0, img.width, img.height);

  // Establecer el color de relleno para el óvalo
  fill (230, 150, 100); // Color RGB: 230 (rojo), 150 (verde), 100 (azul)
  // Dibujar un óvalo que simula una cara
  ellipse (200, 200, 200, 300); // Posición x: 200, posición y: 200, ancho: 200, alto: 300

  // Establecer el color de los ojos
  fill (255); // Color blanco
  // Dibujar los ojos (espacios en blanco)
  ellipse (250, 170, 50, 30); // Ojo derecho
  ellipse(150, 170, 50, 30); // Ojo izquierdo

  // Establecer el color de las pupilas
  fill (64,158,255); // Color azul claro
  // Dibujar las pupilas de los ojos derecho e izquierdo
  ellipse (250, 170, 15, 15); // Pupila del ojo derecho
  ellipse (150, 170, 15, 15); // Pupila del ojo izquierdo

  // Dibujar los puntos en las pupilas para dar el efecto de brillo
  fill (0, 255); // Color blanco
  ellipse (250, 170, 4, 4); // Punto en la pupila del ojo derecho
  ellipse (150, 170, 4, 4); // Punto en la pupila del ojo izquierdo

  // Dibujar los labios
  fill (224,93,128); // Color rosa
  ellipse (200, 280, 70, 10); // Labio superior
  ellipse (200, 290, 60, 10); // Labio inferior

  // Dibujar la nariz (triángulo)
  fill (230, 150, 100); // Color de la piel
  triangle (200, 150, 210, 240, 180, 240); // Posiciones de los vértices del triángulo

  // Dibujar el pelo
  fill (23); // Color negro
  // Dibujar cada mechón de pelo como una elipse
  ellipse (150, 50, 40, 40);
  ellipse (150, 70, 40, 40);
  ellipse (130, 90, 40, 40);
  ellipse (120, 110, 40, 40);
  ellipse (110, 130, 40, 40);
  ellipse (100, 150, 40, 40);
  ellipse (100, 170, 40, 40);
  ellipse (100, 190, 40, 40);
  ellipse (100, 210, 40, 40);
  ellipse (100, 230, 40, 40);
  ellipse (100, 250, 40, 40);
  ellipse (100, 270, 40, 40);
  ellipse (100, 290, 40, 40);
  ellipse (100, 310, 40, 40);
  ellipse (100, 330, 40, 40);
  ellipse (80, 110, 40, 40);
  ellipse (80, 130, 40, 40);
  ellipse (80, 150, 40, 40);
  ellipse (80, 170, 40, 40);
  ellipse (80, 190, 40, 40);
  ellipse (80, 210, 40, 40);
  ellipse (80, 230, 40, 40);
  ellipse (80, 250, 40, 40);
  ellipse (80, 270, 40, 40);
  ellipse (80, 290, 40, 40);
  ellipse (80, 310, 40, 40);
  ellipse (80, 330, 40, 40);
  ellipse (120, 60, 40, 40);
  ellipse (140, 60, 40, 40);
  ellipse (100, 80, 40, 40);
  ellipse (230, 40, 40, 40);
  ellipse (280, 60, 40, 40);
  ellipse (280, 100, 40, 40);
  ellipse (310, 80, 40, 40);
  ellipse (210, 50, 40, 40);
  ellipse (180, 50, 40, 40);
  ellipse (250, 50, 40, 40);
  ellipse (270, 70, 40, 40);
  ellipse (290, 90, 40, 40);
  ellipse (300, 110, 40, 40);
  ellipse (300, 130, 40, 40);
  ellipse (305, 150, 40, 40);
  ellipse (305, 170, 40, 40);
  ellipse (305, 190, 40, 40);
  ellipse (305, 210, 40, 40);
  ellipse (305, 230, 40, 40);
  ellipse (305, 250, 40, 40);
  ellipse (305, 270, 40, 40);
  ellipse (305, 290, 40, 40);
  ellipse (305, 310, 40, 40);
  ellipse (305, 330, 40, 40);
  ellipse (320, 110, 40, 40);
  ellipse (320, 130, 40, 40);
  ellipse (320, 150, 40, 40);
  ellipse (320, 170, 40, 40);
  ellipse (320, 190, 40, 40);
  ellipse (320, 210, 40, 40);
  ellipse (320, 230, 40, 40);
  ellipse (320, 250, 40, 40);
  ellipse (320, 270, 40, 40);
  ellipse (320, 290, 40, 40);
  ellipse (320, 310, 40, 40);
  ellipse (320, 330, 40, 40);
  
   fill(49, 1, 1); // Establecer el color de relleno para las cejas
  // Dibujar las cejas con formas más suaves y curvas
  drawEyebrow(115, 140, 50, 10); // Dibujar la ceja izquierda
  drawEyebrow(230, 140, 50, 10); // Dibujar la ceja derecha
}

void drawEyebrow(float x, float y, float width, float height) {
  beginShape(); // Iniciar una nueva forma
  vertex(x, y); // Establecer el primer vértice de la ceja
  // Dibujar una curva superior de la ceja utilizando la función bezierVertex()
  bezierVertex(x - width/2, y - height/2, x + width/2, y - height/2, x + width, y);
  // Dibujar una curva inferior de la ceja utilizando la función bezierVertex()
  bezierVertex(x + width/2, y + height/2, x - width/2, y + height/2, x, y);
  endShape(CLOSE); // Finalizar la forma y cerrarla
}
