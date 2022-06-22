class Power extends GameObject {

  Power(float x, float y) {
    super(x, y, -.5, 2, 50, orange, 1);
  }


  void show() {
    image(power, x, y, size, size/1.5);
  }


  void act() {
    super.act();

    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Spaceship) {
        if (collidingWith(obj)) {
          coin.rewind();
          fill(green);
          rect(0, 0, 800, 600);
          if (!mute) coin.play();
          lives--;
          obj.lives++;
        }
      }
      i++;
      //remove if off screen
      if (offScreen()) lives = 0;
    }
  }
}
