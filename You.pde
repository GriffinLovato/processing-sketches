class You {
  float ang; 
  character YOU;
  You () {
    YOU = new character(width/2, height/2, 10);
  }
  void run(map MAP) {//Avalible functions, part allowed to change
    this.calc();
    ArrayList<float[]> info = MAP.infoSight(YOU).get(0);


    YOU.speed = 1; //dont do drugs kids
    float goalx;
    float goaly;
    float distance;
    ang = -1;
    
     if (ang == -1) {
        ang = atan2(288-YOU.x, 288-YOU.y);
      }

    for (int i = 0; (info.size()) > i; i++) { //repeat for each item
      ////main loop
      //ang = -1;
      goalx = info.get(0)[0];
      goaly = info.get(0)[1];
      ang = atan2(goalx-YOU.x, goaly-YOU.y);
      
      strokeWeight(0.5);
      stroke(255, 0, 0);
      line(YOU.x, YOU.y, goalx, goaly);
      
      println(goalx,goaly);
    }





    // ang = atan2(goal[0]-YOU.x,goal[1]-YOU.y); //points towards function
    if (YOU.hit(MAP, YOU.x, YOU.y)) {
      goalx = 288;
      goaly = 288;
      //if hitting against wall
    }
    if (YOU.evolveReady()) { //if ready to evolve
      MAP.evolve(YOU, 0); //then evolve with choice of path 0
    }

    ////
    this.calc2(MAP, ang, YOU.speed ); //mandatory, makes you moves, takes angle of movement, and speed as input
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