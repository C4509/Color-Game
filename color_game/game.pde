//

void game() {
  timer = timer + 1;
  background (0);
  stroke(255);
  fill(red);
  rect(500, 50, 200, 100);
  rect(100, 50, 200, 110);
  fill(0);
  textSize(80);
  text("False", 600, 100);
  text("True", 200, 100);
  //colour 
  fill(colours[ra]);
  //colour word
  textSize(80 + timer);
  text(words[r], 400, 400);
  //initialize timer
  if (timer >=100) {
    mode = gameover;
  }
  //initialize 50% chance
  random[ran] = ran;
  if (ran <= 4) {
    r = ra;
  } else {
    while (r == ra) {
      r = int(random(0, 6));
      ra = int(random(0, 6));
    }
  }
}

void gameClicks() {

  //if true button clicked
  if (mouseX > 100 & mouseX < 300 && mouseY > 50 & mouseY < 150 & timer < 100) {
    if (r == ra) {
      score = score + 1;
      r = int(random(0, 6));
      ra = int(random(0, 6));
      ran = int(random(0, 10));
      timer = 0;
    } else {
      mode = gameover;
    }
  }
  //if false button clicked
  if (mouseX > 500 & mouseX < 700 & mouseY > 50 & mouseY < 160 & timer < 100) {
    if (r == ra) {
      mode = gameover;
    } else {
      score = score + 1;
      r = int(random(0, 6));
      ra = int(random(0, 6));
      ran = int(random(0, 10));
      timer = 0;
    }
  }
}
