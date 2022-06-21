void info() {
  stroke(255);
  strokeWeight(8);
  fill(magenta);
  rect(80, 80, 640, 440);

  //How to play text
  textFont(font3);
  fill(255);
  textSize(50);
  text("How to play:", 400, 120);

  //info text
  textSize(25);
  //save the galaxy from an attack!!!
  text("~ use the arrow keys (up, down, left, right) to move your spaceship", 400, 180);
  text("~ press space to shoot enemy ships and win points                                   ", 400, 215);
  text("------ red enemy = 1 point   yellow enemy = 2 points -------", 400, 245);
  text("~ you start with 5 lives, but each time you get hit by a comet or       ", 400, 280);
  text("enemy bullet, you will lose a life  ", 280, 310);
  text("~ yellow enemies may drop powerups that give you an extra life     ", 400, 345);
  text("NOTE: max lives = 5   ", 220, 375);
  text("~ the higher your score, the faster your bullets will come out        ", 400, 410);

  //ok button
  textFont(font2);
  textSize(50);
  strokeWeight(5);
  fill(orange);
  tactile(350, 435, 90, 60);
  rect(350, 435, 90, 60, 10);
  fill(255);
  text("OK", 395, 458);
}


void infoClicks() {
  if (mouseX > 350 && mouseX < 440 && mouseY > 435 && mouseY < 495) {
    mode = INTRO;
    click.rewind();
    click.play();
  }
}
