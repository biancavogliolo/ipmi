//tp2
//comision 1
//Florencia Cirielli 92820/6
//https://youtu.be/RjdeKsW6MaE
PImage d;
int cant= 800;

void setup() {
 size (800, 400);
 d = loadImage("ilusion.png");
 d.resize(400, 400);
}

void draw() {
  translate(400, 0);
  background(0);
    if(mousePressed == true) {
    fill(255);
    float mx = map(mouseX, 0, width, 0, 255);
    float my = map(mouseY, 0, height, 0 ,255);
    background(mx, 0, my);
  }
  for(int x= 10; x< cant; x+=20){
    rect(x, 0, 10, 100);
  }
   for(int x= -20; x< cant; x+=20){
    rect(x, 100 , 10, 100);
  }
    for(int x= 10; x< cant; x+=20){
    rect(x, 200, 10, 100);
    
  }
    for(int x= -20; x< cant; x+=20){
    rect(x, 300 , 10, 100);
  }
    for(int x= -280; x< cant; x+=140){
    for(int y= -280; y< cant; y+=140){
       rombo(x, y, 70, 70);
    }
    }
    for(int x= -350; x< cant; x+=140){
    for(int y= -210; y< cant; y+=140){
        rombo(x, y, 70, 70);
    }
    }
    fill(255);
    rect(-400, 0, 400, 400);
    image (d, -400,0, 400, 400);

   }
