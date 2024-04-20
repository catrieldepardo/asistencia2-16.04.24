PImage fondo;
PImage lunala;
PImage squirtle;
PImage estrella;

private PVector posLunala;
private int direccionlunala = 1;
private int velocidadlunala = 3;

private PVector posSquirtle;
private int velocidadsquirtle = 4;
private int movimientosquirtle = 0;

private PVector posEstrella;

void setup() {
  size(720, 720);
  fondo = loadImage("fondo.jpg");
  fondo.resize( 720 , 720);
  squirtle = loadImage("squirtle.png");
  squirtle.resize(138, 98);
  lunala = loadImage("lunala.png");
  lunala.resize(162, 162);
  estrella = loadImage("estrella.png");
  estrella.resize(140, 140);
  
  posLunala = new PVector(0, 10);
  posSquirtle = new PVector(0, 505);
  posEstrella = new PVector(random(width - estrella.width), 0);
  }
  
  void draw() {
  posLunala.x += velocidadlunala * direccionlunala;
  if (posLunala.x <= 0 || posLunala.x >= width - lunala.width) {
    direccionlunala *= -1;
  }

  posSquirtle.x += movimientosquirtle;
  posSquirtle.x = constrain(posSquirtle.x, 0, 668);

  posEstrella.y += 6;

  background(fondo);
  image(estrella, posEstrella.x, posEstrella.y);
  if (posEstrella.y > height) {
    posEstrella.y = 0;
    posEstrella.x = random(width - estrella.width);
  }

  noTint();
  image(lunala, posLunala.x, posLunala.y);
  image(squirtle, posSquirtle.x, posSquirtle.y);
}
