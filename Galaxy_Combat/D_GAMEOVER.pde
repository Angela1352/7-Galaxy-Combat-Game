float gamovrcounter  = 0;
float gamovrcounter2 = 0;
float gamovrcounter3 = 0;
float gamovrcounter4 = 0;
float gamovrcounter5 = 0;
float gamovrcounter6 = 0;

void gameover() {

  theme.pause();

  //shake
  gamovrcounter += 2.5;
  if (gamovrcounter < 10) image(gameover1, 380, 290, 1400, 650);
  if (gamovrcounter > 10) image(gameover1, 420, 310, 1400, 650);
  if (gamovrcounter == 20) gamovrcounter = 0;

  gamovrcounter2 += 1;
  if (gamovrcounter2 < 40);
  if (gamovrcounter2 > 40) image(gameover2, 400, 300, 800, 600);
  if (gamovrcounter2 == 44) gamovrcounter2 = 0;

  gamovrcounter3 += 1;
  if (gamovrcounter3 < 170);
  if (gamovrcounter3 > 170) image(gameover4, 500, 300, 1000, 600);

  gamovrcounter4 += 1;
  if (gamovrcounter4 < 200);
  if (gamovrcounter4 > 200) image(gameover3, 400, 300, 1000, 600);

  gamovrcounter5 += 1;
  if (gamovrcounter5 < 230);
  if (gamovrcounter5 > 230) {
    image(gameover5, 180, 300, 1400, 600);
    textFont(font2);
    textSize(100);
    fill(0);
    text("Y O U  D I E D", 396, 160);
    fill(255);
    text("Y O U  D I E D", 400, 160);
    fill(red);
    text("Y O U  D I E D", 405, 160);
    textSize(50);
    fill(green);
    text("Your score:", 375, 260);
    text(score, 550, 260);
    fill(0);

    gamovrcounter6 =+ 1;
    if (gamovrcounter6 < 40) {
      text("< click to play again >", 388, 460);
      fill(yellow);
      text("< click to play again >", 392, 458);
    } else if (gamovrcounter6 > 40) {
      if (gamovrcounter6 == 60) gamovrcounter = 0;
    }
  }
}


void gameoverClicks() {
  click.rewind();
  if (!mute) click.play();
  mode = INTRO;
  theme.rewind();
  reset();
}
