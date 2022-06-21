int gamovrcounter;

void gameover() {

  die.rewind();
  die.play();

  //setup
  gamovrcounter = 0;

  theme.pause();

  //shake
  gamovrcounter += 1;
  if (gamovrcounter < 50) {
    image(gameover1, 360, 290, 1400, 650);
  }
  if (gamovrcounter > 50) {
    image(gameover1, 420, 310, 1400, 650);
  }

  if (gamovrcounter == 100) gamovrcounter = 0;

  textSize(60);
  fill(255);
  text("GAMEOVER", 400, 200);
  text("Your score:", 300, 300);
  text(score, 530, 300);
  text("click to play again", 400, 450);
}


void gameoverClicks() {
  click.rewind();
  click.play();
  mode = INTRO;
  theme.rewind();
  reset();
}
