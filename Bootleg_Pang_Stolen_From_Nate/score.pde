class Score {
  int myScore;
  int hisScore;
  Score(int P1score, int A1score) {
    myScore=P1score;
    hisScore= A1score;
  }
  void display() {
    fill(255);
    text(myScore, (width/2)-35, 35);
    fill(0, 0, 255);
    text(':', (width/2)-10, 35);
    fill(0);
    text(hisScore, (width/2)+5, 35);
    fill(255);
    text("YOU", 0, 40);
    fill(0);
    text("CPU", width-90, 40);
  }
  void update() {
    //  println(myscorecount, hisscorecount);
    if (ballPos.x==0) {

      hisScore++;
      score.play();
      //   change=true;
      hisscorecount=hisScore;
      delay(1000);
      ballPos.x=width/2;
      ballPos.y=height/2;
      ballVel.x=-4.0;
      ballVel.y=3.0;
    }
    if (ballPos.x==displayWidth) {
      myScore++;
score.play();
      myscorecount=myScore;
      delay(1000);
      ballPos.x= width/2;
      ballPos.y=height/4;
      ballVel.x = -4.0;
      ballVel.y = 3.0;
    }

    if (myScore==5) {
      ballVel.x=0;
      ballVel.y=0;
      ballPos.y=height/2 + 20;
      ballPos.x= width/2 - 20;
      fill(random(255), random(255), random(255));
      text("You Win!", (width/2)-80, (height/2)-20);
      //beginShape();
      //fill(232, 212, 35);
      //vertex(368, 12);
      //vertex(368, 2);
      //vertex(373, 7);
      //vertex(378, 2);
      //vertex(383, 7);
      //vertex(388, 2);
      //vertex(388, 12);
      //vertex(2688, 12);
      //endShape();
    }
    if (hisScore==5) {
      ballVel.x=0;
      ballVel.y=0;
      ballPos.y=height/2 + 20;
      ballPos.x= width/2 - 20;
      fill(random(255), random(255), random(255));
      text(" You Lose!", (width/2)-100, (height/2)-20);
      //beginShape();
      //fill(232, 212, 35);
      //vertex(308, 12);
      //vertex(308, 2);
      //vertex(313, 7);
      //vertex(318, 2);
      //vertex(323, 7);
      //vertex(328, 2);
      //vertex(328, 12);
      //vertex(328, 12);
      //endShape();
    }
  }
}