class Enemy3 extends GameObject {

  Enemy3() {
    super(random(40, width-40), -50, -2, 5, 60, #FFFFF0, 1);
  }


  void show() {
    image(enemy3, x, y, size, size);
  }


  void act() {
    super.act();

    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Spaceship) {
        if (collidingWith(obj)) {
          hit.rewind();
          if (!mute) hit.play();
          lives--;
          obj.lives--;
          fill(red);
          rect(0, 0, 800, 600);
        }
      }
      i++;
      //remove if off screen
      if (offScreen()) lives = 0;
    }
  }
}
