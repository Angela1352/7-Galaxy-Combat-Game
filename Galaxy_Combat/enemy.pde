class Enemy extends GameObject {

  int cooldown, threshold;

  Enemy() {
    super(random(50, width-50), -40, 0, 2, 80, #FFF000, 1);
    threshold = 60; //higher = less bullets
    cooldown = threshold;

    c = green;
  }


  void show() {
    image(enemy1, x, y, size, size);
  }


  void act() {
    super.act();

    //shoot
    cooldown++;
    if (cooldown >= threshold) {
      objects.add(new EnemyBullet(x-2, y+10, 0, 10));
      cooldown = 0;
    }

    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          score += 1;
          lives--;
          obj.lives = 0;

          //particles
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
          objects.add(new Particles(x, y, vx, vy, c));
        }
      }
      i++;
      //remove if off screen
      if (offScreen()) lives = 0;
    }
  }
}
