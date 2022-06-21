void pause() {
  theme.pause();

  //screen
  fill(30);
  stroke(255);
  strokeWeight(8);
  rect(150, 140, 500, 340);
  rect(200, 100, 400, 90);

  textFont(font2);
  textSize(75);
  fill(255);
  text("paused", 398, 134);
  fill(red);
  text("paused", 401, 136);

  //button
  strokeWeight(4);
  fill(green);
  tactile(730, 20, 45, 45);
  rect(730, 20, 45, 45, 10);
  textSize(40);
  stroke(255);
  strokeWeight(6);
  triangle(741, 29, 741, 54, 763, 41);

  //resume button
  fill(orange);
  tactile(300, 365, 200, 75);
  rect(300, 365, 200, 75, 10);
  fill(255);
  text("RESUME", 400, 396);

  //home/restart button
  fill(orange);
  tactile(220, 240, 80, 80);
  rect(220, 240, 80, 80, 10);
  fill(255);
  stroke(255);
  rect(242, 270, 35, 35, 1);
  strokeWeight(1);
  triangle(232, 275, 287, 275, 259, 250);
  fill(orange);
  stroke(orange);
  rect(253, 284, 12, 26);

  //music button
  strokeWeight(6);
  fill(orange);
  tactile(360, 240, 80, 80);
  rect(360, 240, 80, 80, 10);
  fill(255);
  strokeWeight(1);
  stroke(255);
  ellipse(382, 300, 20, 15);
  ellipse(413, 300, 20, 15);
  strokeWeight(5);
  line(390, 300, 390, 268);
  line(421, 300, 421, 268);
  rect(390, 260, 31, 4);

  //info button
  fill(orange);
  tactile(500, 240, 80, 80);
  rect(500, 240, 80, 80, 10);
  textSize(80);
  fill(255);
  text("?", 542, 270);
}


void pauseClicks() {

  //pause button
  if (mouseX > 730 && mouseX < 775 && mouseY > 20 && mouseY < 65) {
    mode = GAME;
    if (!mute) theme.play();
    click.rewind();
    if (!mute) click.play();
  }

  if (mouseX > 300 && mouseX < 500 && mouseY > 365 && mouseY < 440) {
    mode = GAME;
    click.rewind();
    if (!mute) click.play();
  }

  //home/restart button
  if (mouseX > 220 && mouseX < 300 && mouseY > 240 && mouseY < 320) {
    mode = INTRO;
    theme.rewind();
    if (!mute) theme.play();
    reset();
    click.rewind();
    if (!mute) click.play();
  }

  //music button ------------------------------------------------------------
  if (mouseX > 360 && mouseX < 440 && mouseY > 240 && mouseY < 320) {
    theme.pause(); //stop?
    strokeWeight(8);
    stroke(255);
    line(380, 274, 424, 195);
    click.rewind();
   if (!mute)  click.play();
    mute = !mute;
  }

  //info button
  if (mouseX > 500 && mouseX < 580 && mouseY > 240 && mouseY < 320) {
    mode = INFO;
    click.rewind();
   if (!mute)  click.play();
  }
}
