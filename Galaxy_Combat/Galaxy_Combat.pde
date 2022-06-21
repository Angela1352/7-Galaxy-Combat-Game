// Angela Chen //<>//
// May 25, 2022
// 2-3


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


int mode;
final int INTRO     = 0;
final int GAME      = 1;
final int PAUSE     = 2;
final int GAMEOVER  = 3;
final int OPTIONS   = 4;
final int INFO      = 5;


//key variables
boolean up, down, left, right, space;


//image & font variables
PImage bg1, image1, image2, image3, image4;
PImage enemy1, enemy2, enemy3;
PImage heart, power;
PImage gameover1;
PFont font1, font2, font3;


//sound variables
Minim minim;
AudioPlayer theme, hit, click, shoot, motor, coin, die;


//colour palette
color red         = #E85656;
color orange      = #FF984F;
color yellow      = #FFE84F;
color green       = #42D6A4;
color blue        = #59ADF6;
color purple      = #9D94FF;
color magenta     = #9C5EA6;


//others
int counter, counter2;
int score; // lives;
boolean icon1On, icon2On, icon3On;
PImage selectedIcon;
float vy;

ArrayList<GameObject> objects;
Spaceship player1;


void setup () {
  size(800, 600);
  mode = INTRO;

  textAlign(CENTER, CENTER);
  imageMode(CENTER);

  objects = new ArrayList<GameObject>();
  player1 = new Spaceship();
  objects.add(player1);

  counter  = 0;
  counter2 = 0;
  score    = 0;

  vy = random(0, height);

  minim   = new Minim(this);
  theme   = minim.loadFile("theme.mp3");
  hit     = minim.loadFile("hit.wav");
  click   = minim.loadFile("click.mp3");
  shoot   = minim.loadFile("shoot.mp3");
  motor   = minim.loadFile("motor.wav");
  coin    = minim.loadFile("coin.mp3");
  die     = minim.loadFile("die.wav");

  bg1     = loadImage("bg1.png");

  image1  = loadImage("image1.png");
  image2  = loadImage("image2.png");
  image3  = loadImage("image3.png");
  image4  = loadImage("image4.jpg");

  enemy1  = loadImage("enemy1.png");
  enemy2  = loadImage("enemy2.png");
  enemy3  = loadImage("enemy3.png");

  heart   = loadImage("heart.png");
  power   = loadImage("power.png");

  gameover1  = loadImage("gameover1.jpg");

  font1   = createFont("font1.ttf", 100);
  font2   = createFont("font2.ttf", 100);
  font3   = createFont("font3.otf", 100);

  selectedIcon = image1;

  while (counter2 < 100) {
    objects.add(new Star(random(width), random(height)));
    counter2 += 1;
  }
}


void draw () {
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameover();
  else if (mode == OPTIONS)  options();
  else if (mode == INFO)     info();
  //else println("Error: Mode = " + mode);
}


void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(yellow);
  } else {
    stroke(200);
  }
}


void tactile2(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(green);
  } else {
    fill(255);
  }
}


void tactile3(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(blue);
  } else {
    fill(0);
  }
}


void reset() {
  mode = INTRO;

  objects = new ArrayList<GameObject>();
  player1 = new Spaceship();
  objects.add(player1);

  counter  = 0;
  counter2 = 0;
  score    = 0;

  vy = random(0, height);

  //minim   = new Minim(this);
  //theme   = minim.loadFile("theme.mp3");
  //hit     = minim.loadFile("hit.wav");
  //click   = minim.loadFile("click.mp3");
  //shoot   = minim.loadFile("shoot.mp3");
  //motor   = minim.loadFile("motor.wav");
  //coin    = minim.loadFile("coin.mp3");
  //die     = minim.loadFile("die.wav");

  //bg1     = loadImage("bg1.png");

  //image1  = loadImage("image1.png");
  //image2  = loadImage("image2.png");
  //image3  = loadImage("image3.png");
  //image4  = loadImage("image4.jpg");

  //enemy1  = loadImage("enemy1.png");
  //enemy2  = loadImage("enemy2.png");
  //enemy3  = loadImage("enemy3.png");

  //heart   = loadImage("heart.png");
  //power   = loadImage("power.png");

  //gameover1  = loadImage("gameover1.jpg");

  //font1   = createFont("font1.ttf", 100);
  //font2   = createFont("font2.ttf", 100);
  //font3   = createFont("font3.otf", 100);

  selectedIcon = image1;

  while (counter2 < 100) {
    objects.add(new Star(random(width), random(height)));
    counter2 += 1;
  }
}

//ASK TUESDAY:
//-----how to make ship shootable ENEMY BULLET COLLISION CODE NOT WORKING
//-----how to make particles not fly so far
//-----stroke of bullet changes after shooting enemy

//motor sound not working
//make info button OK turn back to game in pause mode

//how to make power up disappear after a while
//powerup threshold higher

//gameover counter not working

//--make screen red when hit

//SPECIAL THINGS TO ADD:
//2 player??
//highscore
