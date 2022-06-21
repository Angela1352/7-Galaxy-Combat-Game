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

    //collisions
    //if (collidingWith(player1)) {
    //  hit.rewind();
    //  hit.play();
    //  lives = 0;
    //  player1.lives--;
    // fill(red);
    // rect(0, 0, 800, 600);
    //}
  }
}
