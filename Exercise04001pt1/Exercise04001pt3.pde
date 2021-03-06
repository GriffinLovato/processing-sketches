class Youaddons extends You {
  float ang;
  int TextMeme = round(random(1, 5)); //Randomizes the text when Animalito hits a wall.
  character YOU;
  Youaddons () {
    YOU = new character(20, 20, 10); //Starting position and size
  }
  void run(map MAP) {
    this.calc();
    ArrayList<float[]> info = MAP.infoSight(YOU).get(0); //Gets an arraylist of all bacteria within the Animalitos FOV.


    float speed = 1; //Sets speed to 1 (max)
    float goalx;
    float goaly;
    float distance; //Unused, for now
    ang = -1; //ang will become anything but -1 if a goal is found
    println(YOU.energy); //Prints the energy count
    
    fill(YOU.energy*2.5, 0, 0);
    ellipse(YOU.x,YOU.y,10,10);


    if (YOU.energy < 0) { //Puts "DEAD" on the screen when the animalito runs out of energy
      textAlign(CENTER);
      fill(125, 0, 0);
      textSize(25);
      text("DEAD", width/2, height/2-10);
    }

    if (ang == -1) { //Sets the goal of the animalito to the center if there is no goal
      ang = atan2(width/2-YOU.x, height/2-YOU.y);
      strokeWeight(0.5);
      stroke(255, 0, 0);
      //line(YOU.x, YOU.y, width/2, height/2);
    }


    for (int i = 0; (info.size()) > i; i++) {
      ////main loop
      //ang = -1;
      goalx = info.get(0)[0];
      goaly = info.get(0)[1];
      ang = atan2(goalx-YOU.x, goaly-YOU.y); //sets the ang (used in movement direction) to point towards bacteria

      strokeWeight(0.5);
      stroke(255, 0, 0);
      line(YOU.x, YOU.y, goalx, goaly); //line between the animalito and its current goal

      if (ang == -1) { //broken code (?)
        strokeWeight(0.5);
        stroke(255, 0, 0);
        line(YOU.x, YOU.y, width/2, height/2);
      }
    }





    // ang = atan2(goal[0]-YOU.x,goal[1]-YOU.y); //points towards function
    if (YOU.hit(MAP, YOU.x+sin(ang), YOU.y+cos(ang))) { //causes the 'hit' text to appear
      if (TextMeme == 1) {
        textAlign(CENTER);
        fill(125, 0, 255);
        textSize(12);
        text("CAN'T HANDLE THESE DODGES BOIIIII", YOU.x, YOU.y-10);
      }
      if (TextMeme == 2) {
        textAlign(CENTER);
        fill(215, 125, 0);
        textSize(24);
        text("SKRRT", YOU.x, YOU.y-10);
      }
      if (TextMeme == 3) {
        textAlign(CENTER);
        fill(0, 0, 255);
        textSize(16);
        text("DRIFT GAME TOO STRONG", YOU.x, YOU.y-10);
      }
      if (TextMeme == 4) {
        textAlign(CENTER);
        fill(255, 0, 0);
        textSize(30);
        text("ZOOM", YOU.x, YOU.y-10);
      }
      if (TextMeme == 5) {
        textAlign(CENTER);
        fill(0, 200, 0);
        textSize(16);
        text("2DODGY4U", YOU.x, YOU.y-10);
      }


      //BEST CODE RIGHT HERE
      if (YOU.hit(MAP, YOU.x+sin(ang), YOU.y+cos(ang))) { //dodging code; moves in 8 directions in order when hitting a wall
        goalx = YOU.x-30; //Go West
        goaly = YOU.y;
        ang = atan2(goalx-YOU.x, goaly-YOU.y);
        if (YOU.hit(MAP, YOU.x+sin(ang), YOU.y+cos(ang))) {
          goalx = YOU.x-30; //Go Northwest
          goaly = YOU.y-30;
          ang = atan2(goalx-YOU.x, goaly-YOU.y);
          if (YOU.hit(MAP, YOU.x+sin(ang), YOU.y+cos(ang))) {
            goaly = YOU.y-30; //Go North
            goalx = YOU.x;
            ang = atan2(goalx-YOU.x, goaly-YOU.y);
            if (YOU.hit(MAP, YOU.x+sin(ang), YOU.y+cos(ang))) {
              goalx = YOU.x+30; //Go Northeast
              goaly = YOU.y-30;
              ang = atan2(goalx-YOU.x, goaly-YOU.y);
              if (YOU.hit(MAP, YOU.x+sin(ang), YOU.y+cos(ang))) {
                goalx = YOU.x+30; //Go East
                goaly = YOU.y;
                ang = atan2(goalx-YOU.x, goaly-YOU.y);
                if (YOU.hit(MAP, YOU.x+sin(ang), YOU.y+cos(ang))) {
                  goalx = YOU.x+30; //Go Southeast
                  goaly = YOU.y+30;
                  ang = atan2(goalx-YOU.x, goaly-YOU.y);
                  if (YOU.hit(MAP, YOU.x+sin(ang), YOU.y+cos(ang))) {
                    goaly = YOU.y+30; //Go South
                    goalx = YOU.x;
                    ang = atan2(goalx-YOU.x, goaly-YOU.y);
                    if (YOU.hit(MAP, YOU.x+sin(ang), YOU.y+cos(ang))) {
                      goalx = YOU.x-30; //Go Southwest
                      goaly = YOU.y+30;
                      ang = atan2(goalx-YOU.x, goaly-YOU.y);
                    }
                  }
                }
              }
            }
          }
        }
      }

      //   YOU.x += random(-1, 1);
      //   YOU.y += random(-1, 1);
      //if hitting against wall
    }
    if (YOU.evolveReady()) { //if ready to evolve
      MAP.evolve(YOU, 0); //then evolve with choice of path 0
      noFill();
      stroke(0, 0, 255);
      ellipse(YOU.x, YOU.y, 20, 20); //detects when evolved
    }

    ////
    this.calc2(MAP, ang, speed); //mandatory, makes you moves, takes angle of movement, and speed as input
  }


  void calc() {
    YOU.view();
    YOU.run();
  }
  void calc2(map map, float ang, float speed) {
    YOU.move(map, ang, min(YOU.maxSpeed, speed) ); //max speed of maxSpeed
    map.eatan(YOU);
  }
}