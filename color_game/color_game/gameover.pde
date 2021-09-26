void gameover(){
  background(255,0,0);
  fill(255);
  textSize(100);
  text("GAME OVER", 400, 200);
  textSize(75);
  text("Score: " + score, 400, 350);
  if (score > highscore){
    highscore = score;}
  text("High Score: " + highscore, 400, 450);
  
  
}

void gameoverClicks(){
  r = int(random(0,6));
   ra = int(random(0,6));
   timer = 0;
  score = 0;
  ran = int(random(0,10));
  mode = intro;
  
  
  
}
