class Spaceship extends GameObject {

  int cooldown, threshold;

  //constructor
  Spaceship() {
    super(width/2, height/2, 0, 0, 80, #FF0000, 5);
    threshold = 30; //higher = less bullets
    cooldown = threshold;
  }


  void show() {
    image(selectedIcon, x, y, size, size);
  }


  void act() {
    super.act();

    //managing guns
    cooldown++;
    if (space && cooldown >= threshold) {
      objects.add(new Bullet());
      shoot.rewind();
      shoot.play();
      cooldown = 0;
    }

    ////collisions
    //int i = 0;
    //while (i < objects.size()) {
    //GameObject obj = objects.get(i);
    //if (obj instanceof EnemyBullet) {
    //if (collidingWith(obj)) {
    //hit.rewind();
    //hit.play();
    //lives--;
    //obj.lives = 0;
    //    }
    //  }
    //}

    if (up)      vy = -5;
    if (down)    vy =  5;
    if (left)    vx = -5;
    if (right)   vx =  5;

    if (!up && !down)   vy = vy * 0.9;
    if (!left && !down) vx = vx * 0.9;

    //restricting spaceship
    if (x > width-size/2)  x = width-size/2;
    if (x < 0+size/2)      x = 0+size/2;
    if (y > height-size/2) y = height-size/2;
    if (y < 0+size/2)      y = 0+size/2;

    //lives
    image(image4, 400, 50, 500, 70);

    if (lives == 5) {
      image(heart, 490, 50, 25, 25);
      image(heart, 520, 50, 25, 25);
      image(heart, 550, 50, 25, 25);
      image(heart, 580, 50, 25, 25);
      image(heart, 610, 50, 25, 25);
    } else if (lives == 4) {
      image(heart, 490, 50, 25, 25);
      image(heart, 520, 50, 25, 25);
      image(heart, 550, 50, 25, 25);
      image(heart, 580, 50, 25, 25);
    } else if (lives == 3) {
      image(heart, 490, 50, 25, 25);
      image(heart, 520, 50, 25, 25);
      image(heart, 550, 50, 25, 25);
    } else if (lives == 2) {
      image(heart, 490, 50, 25, 25);
      image(heart, 520, 50, 25, 25);
    } else if (lives == 1) {
      image(heart, 490, 50, 25, 25);
    }

    if (lives == 0) {
      mode = GAMEOVER;
    }

    if (lives > 5) lives = 5;

    if (score > 20) {
      threshold = 27;
    } else if (score > 40) {
      threshold = 25;
    } else if (score > 60) {
      threshold = 22;
    } else {
      threshold  = 30;
    }
  }
}
