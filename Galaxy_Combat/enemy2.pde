class Enemy2 extends GameObject {

  int cooldown, threshold;
  // int pwrcldwn, pwrthrsld;
  int pwrcounter;
  float number;

  Enemy2() {
    super(random(80, width-80), -50, 0, 5, 140, yellow, 1);
    threshold = 30;
    cooldown = threshold;

    pwrcounter = 0;
    number = random(1, 100);
  }


  void show() {
    image(enemy2, x, y, size, size/2);
  }


  void act() {
    super.act();

    //shoot
    cooldown++;
    if (cooldown >= threshold) {
      objects.add(new EnemyBullet(x-32, y+10, 0, 12, c));
      objects.add(new EnemyBullet(x+30, y+10, 0, 12, c));
      cooldown = 0;
    }

    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          score += 2;
          lives--;
          obj.lives = 0;

          //power 
          if (number < 70) objects.add(new Power(x, y));

          //particles
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
          objects.add(new Particles(x, y, vx, vy));
        }
      }
      i++;
      //remove if off screen
      if (offScreen()) lives = 0;
    }
  }
}
