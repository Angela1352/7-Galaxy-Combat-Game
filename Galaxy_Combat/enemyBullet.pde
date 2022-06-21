class EnemyBullet extends GameObject {

  float c;

  EnemyBullet(float x, float y, float vx, float vy) {
    super(x-2, y, vx, vy, 8, red, 1);
  }

  EnemyBullet(float x, float y, float vx, float vy, float c) {
    super(x-2, y, vx, vy, 8, yellow, 1);
  }


  void act() {
    super.act();
    if (offScreen()) lives = 0;

    ////collisions
    //int i = 0;
    //while (i < objects.size()) {
    //  GameObject obj = objects.get(i);
    //  if (obj instanceof Spaceship) {
    //    if (collidingWith(obj)) {
    //      hit.rewind();
    //      hit.play();
    //      lives = 0;
    //      obj.lives--;
    //    }
    //  }
    //}
  }
}
