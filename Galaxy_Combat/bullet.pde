class Bullet extends GameObject {

  Bullet(float x, float y) {
    super(player1.x - 3.5, player1.y, 0, -10, 7, blue, 1);
  }


  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}
