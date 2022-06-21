class Particles extends GameObject {

  Particles(float x, float y, float vx, float vy, color c) {
    super(x, y, random(-20, 20), random(-20, 20), 4, red, 1);
  }

  Particles(float x, float y, float vx, float vy) {
    super(x, y, random(-20, 20), random(-20, 20), 4, yellow, 1);
  }

  void show() {
    super.show();
    stroke(red);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}
