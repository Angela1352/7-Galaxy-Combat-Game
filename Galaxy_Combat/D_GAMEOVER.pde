int gamovrcounter = 0;

void gameover() {

  die.rewind();
 if (!mute)  die.play();

  theme.pause();

  //shake
  gamovrcounter += 1;
  if (gamovrcounter < 20) {
    image(gameover1, 360, 290, 1400, 650);
  }
  if (gamovrcounter > 20) {
    image(gameover1, 20, 310, 1400, 650);
  }

  if (gamovrcounter == 40) gamovrcounter = 0;

  textSize(60);
  fill(255);
  text("GAMEOVER", 400, 200);
  text("Your score:", 300, 300);
  text(score, 530, 300);
  text("click to play again", 400, 450);
}


void gameoverClicks() {
  click.rewind();
  if (!mute) click.play();
  mode = INTRO;
  theme.rewind();
  reset();
}
