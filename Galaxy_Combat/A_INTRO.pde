void intro() {
  if (!mute) theme.play();
  image(bg1, 150, 300, 1400, 600);

  //options button
  fill(orange);
  strokeWeight(4);
  tactile(710, 25, 60, 60);
  rect(710, 25, 60, 60, 10);
  fill(255);
  stroke(255);
  strokeWeight(1);
  ellipse(725, 41, 9, 9);
  ellipse(725, 56, 9, 9);
  ellipse(725, 71, 9, 9);
  rect(736, 37, 20, 7);
  rect(736, 52, 20, 7);
  rect(736, 67, 20, 7);

  //info button
  fill(orange);
  strokeWeight(4);
  tactile(710, 125, 60, 60);
  rect(710, 125, 60, 60, 10);
  fill(255);
  textSize(60);
  text("?", 742, 147);

  //game name
  textFont(font2);
  textSize(100);
  fill(255);
  text("G a l a x y", 320, 140);
  text("C o m b a t", 390, 300);
  fill(purple, 230);
  text("G a l a x y", 325, 140);
  text("C o m b a t", 395, 300);

  //play text
  counter = counter + 1;
  if (counter < 40) {
    fill(0);
    textFont(font2);
    textSize(50);
    fill(0);
    text("< click to play >", 398, 460);
    fill(yellow);
    text("< click to play >", 402, 458);
  } else if (counter > 40 ) {
    if (counter == 60) {
      counter = 0;
    }
  }
}


void introClicks() {
  click.rewind();
  if (!mute) click.play();
  if (mouseX > 670 && mouseX < 770 && mouseY > 25 && mouseY < 75) {
    mode = OPTIONS;
  } else if (mouseX > 710 && mouseX < 770 && mouseY > 125 && mouseY < 185) {
    mode = INFO;
  } else {
    mode = GAME;
  }
}
