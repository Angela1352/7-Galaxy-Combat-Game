void options() {
  //screen
  fill(180);
  stroke(100);
  strokeWeight(20);
  rect(100, 75, 600, 450);

  //text
  fill(0);
  textFont(font1);
  textSize(45);
  text("choose YOUR spaceship", 400, 140);

  //icons
  strokeWeight(5);
  tactile2(145, 205, 150, 150);
  icon1OnOff();
  rect(145, 205, 150, 150);
  tactile2(325, 205, 150, 150);
  icon2OnOff();
  rect(325, 205, 150, 150);
  tactile2(505, 205, 150, 150);
  icon3OnOff();
  rect(505, 205, 150, 150);

  image(image1, 220, 280, 140, 140);
  image(image2, 400, 280, 140, 140);
  image(image3, 580, 280, 140, 140);

  //intro button
  fill(180);
  stroke(180);
  rect(303, 408, 186, 40);
  textSize(40);
  tactile3(303, 408, 186, 40);
  text("< return", 400, 425);
}


void optionClicks() {

  if (mouseX > 303 && mouseX < 489 && mouseY > 408 && mouseY < 448) {
    mode =  INTRO;
    click.rewind();
    click.play();
  }

  if (mouseX > 145 && mouseX < 295 && mouseY > 205 && mouseY < 355) {
    icon1On = !icon1On;
    icon2On = false;
    icon3On = false;
    click.rewind();
    click.play();
  }

  if (mouseX > 325 && mouseX < 475 && mouseY > 205 && mouseY < 355) {
    icon1On = false;
    icon2On = !icon2On;
    icon3On = false;
    click.rewind();
    click.play();
  }

  if (mouseX > 505 && mouseX < 655 && mouseY > 205 && mouseY < 355) {
    icon1On = false;
    icon2On = false;
    icon3On = !icon3On;
    click.rewind();
    click.play();
  }

  if (icon1On == true) {
    selectedIcon = image1;
  } else if (icon2On == true) {
    selectedIcon = image2;
  } else if (icon3On == true) {
    selectedIcon = image3;
  }
}


void icon1OnOff () {
  if (icon1On == true) {
    stroke(blue);
  } else {
    stroke(100);
  }
}


void icon2OnOff () {
  if (icon2On == true) {
    stroke(blue);
  } else {
    stroke(100);
  }
}


void icon3OnOff () {
  if (icon3On == true) {
    stroke(blue);
  } else {
    stroke(100);
  }
}
