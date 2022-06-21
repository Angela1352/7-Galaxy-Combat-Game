class Star extends GameObject {

  //constructor
  Star() {
    super(random(width), 0, 0, 0, random(1, 3), 255, 1);
    vy = size;
    strokeWeight(1);
  }

  Star(float x, float y) {
    super(x, y, 0, 0, random(1, 3), 255, 1);
    vy = size;
    strokeWeight(1);
  }


  void act() {
    super.act();
    x = x + vx;
    y = y + vy;

    if (y > height) {
      lives = 0;
    }
  }
}
