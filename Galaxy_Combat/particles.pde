class Particles extends GameObject {

  Particles(float x, float y, float vx, float vy, color c) {
    super(x, y, random(-10, 10), random(-10, 10), 7, red, 1);
  }

  Particles(float x, float y, float vx, float vy) {
    super(x, y, random(-10, 10), random(-10, 10), 8, yellow, 1);
  }

  void show() {
    stroke(c);
    rect(x, y, size, size);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;

    timer -= 1;
    if (timer < 0) {
      lives = 0;
      timer = 4;
    }
  }
}
