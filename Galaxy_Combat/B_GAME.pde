void game() {
  background(0);

  addObjects();
  gameEngine();
  //debug();

  //transparent //remove background to work
  fill(0, 110);
  rect(0, 0, width, height);

  //pause button
  strokeWeight(4);
  fill(green);
  tactile(730, 20, 45, 45);
  rect(730, 20, 45, 45, 10);
  stroke(255);
  strokeWeight(6);
  line(745, 32, 745, 54);
  line(759, 32, 759, 54);


  //score + lives text
  fill(255);
  textFont(font2);
  textSize(30);
  text("score:", 230, 43);
  text("lives:", 420, 43);
  text(score, 300, 43);
}


void gameClicks() {
  if (mouseX > 730 && mouseX < 775 && mouseY > 20 && mouseY < 65) {
    mode = PAUSE;
    click.rewind();
    if (!mute) click.play();
  }
}


void addObjects() {
  objects.add (0, new Star());

  if (frameCount % 60  == 0) objects.add(new Enemy()); //higher = less
  if (frameCount % 90  == 0) objects.add(new Enemy2());
  if (frameCount % 40  == 0) objects.add(new Enemy3());
  //if (frameCount % 100 == 0) objects.add(new Power(0, 0)); --------------------------------------------
}


void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();
    if (s.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}


void debug() {
  text(frameRate, 10, 10);
  text(objects.size(), 10, 30);
}
