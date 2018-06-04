class A1{
  int ypos;
  A1( int Y ){
    ypos=Y;
  }
  void display(){
    yp=ypos;
    boolean hisPower=false;
    boolean move= false;
    if(ballPos.x>=width/2){
      move=true;
    }
    else{
      move=false;
    }
    if(!move){
      if(ypos>height/2){
        ypos= ypos-round(dist(0,height/2, 0, ypos)/10);
      }
      if(ypos<height/2){
        ypos= ypos+round(dist(0,height/2, 0, ypos)/10);
      }
    }
    if(move){
      if(ypos<ballPos.y){
      if(dist(0,ballPos.y, 0, ypos)!=0){
        ypos= ypos+round((dist(0,ballPos.y, 0, ypos))/1.15);
      //  println(ypos);
      }
      }
      if(ypos>ballPos.y){
              if(dist(0,ballPos.y, 0, ypos)!=0){
        ypos= ypos-round((dist(0,ballPos.y, 0, ypos))/1.15);
      //  println(ypos);
      }
      }
    }
    if(ypos>height-40){
      ypos=height-40;
    }
    if(hisPower){
    //  ypos=60;
      int roundValP= round(ballPos.y);
    for(int i=0; i<hisHeight;i++){
    if(roundValP==ypos+i&&(ballPos.x==(width-30))){
    ballVel.x= ballVel.x*-1;
    ballVel.y=ballVel.y*random(0.4, 2);
    }
    }
    //fill(0);
    strokeWeight(7);
  //  line(570, ypos+2, 570,ypos+58);
    strokeWeight(1);
   // stroke(255);
   // line(570, ypos, 570, ypos+40);
    stroke(0);
    }
    else{
      
      strokeWeight(7);
      line((width-30), ypos+2, (width-30), ypos+(hisHeight-2));
      strokeWeight(1);
      stroke(0);
    }
  }
  void bounce(){
    int roundVal2= round(ballPos.y);
    for(int i=0; i<40;i++){
    if(roundVal2==ypos+i&&(ballPos.x==(width-32))){
    ballVel.x= ballVel.x*-1;
    ballVel.y=ballVel.y*random(0.4, 2);
    paddle.play();
    }
  }
  }
}