import processing.sound.*;
Score gameScore;

A1 pongA1;

Powerup powerup;
SoundFile paddle;
SoundFile wall;
SoundFile score;
SoundFile power;
int y = 2;

PVector ballPos;
PVector ballVel;

int boxHeight;

int powerR= 19;

int hisHeight=40;

int myHeight=40;

//boolean change=false;

int myscorecount;

int hisscorecount;

int yp;

void setup(){
  size(displayWidth,displayHeight);
  textSize(40);
 // size(600,400);
  paddle= new SoundFile(this, "pong_paddle.wav");
  wall= new SoundFile(this, "pong_wall.wav");
  score= new SoundFile (this, "pong_score.wav");
  power= new SoundFile(this, "pacman.ogg");
  supreme= loadImage("231083462007202.png");
  //size(600,400);
  
  ballPos= new PVector(width/2, (height/2)+20);
  
  ballVel= new PVector(5.0, 2.75);
  gameScore= new Score(0,0);
  
  pongA1= new A1(height/2);
  powerup= new Powerup(60,round(random(150,displayWidth-150)), round(random(70, displayHeight-100)));

 
}

void draw(){
  
 // size(600,400);
  
background(100);
//image(supreme, width/2, height/2);
  
  for(int i =3; i<displayHeight/3; i+=1){
    int a = i*20;
    
   
    stroke(0,0,255);
    
    line(width/2, a, width/2, a+10);
 
}
  
 stroke(0);
 
 strokeWeight(6);
 
 line(0,52,width,52);
 strokeWeight(1);
 
  gameScore.update();
 
  gameScore.display();
 
  pongA1.display();
  
  pongA1.bounce();
 
  powerup.alter();
 
 int roundVal= round(ballPos.y);
 

if(key==CODED){
if(keyPressed==true && keyCode==UP){
boxHeight=boxHeight-3;
}
}
if(keyPressed==true && keyCode==DOWN){
boxHeight=boxHeight+3;
}

 
  if(boxHeight>(height-40)){
    boxHeight= (height-40);
  }
if(boxHeight<50){
  boxHeight=50;
}
  stroke(255);
  strokeWeight(7);
 line(30, boxHeight+2, 30, boxHeight+(myHeight+2));
 strokeWeight(1);
// stroke(0,0,255);
// line(30,boxHeight, 30, boxHeight+40);
  stroke(0);
  
  ballPos.add(ballVel);
  if(ballPos.y>height || ballPos.y<57){
    ballVel.y=ballVel.y*-1;
    //if(y>1){
      //noLoop();
      wall.play();
    }
    
  //}
  if(ballPos.x>width){
    ballVel.x= ballVel.x*-1;
  }
  if(ballPos.y==boxHeight){
    println("match");
  }
  for (int i =0; i <myHeight; i++) {
  if((roundVal==boxHeight + i)&&(ballPos.x==32)){
    paddle.play();
    ballVel.x= ballVel.x*-1;
    ballVel.y=ballVel.y*random(0.4, 2);
 
  }
  }
 // println(ballPos.x, ballPos.y);
 strokeWeight(1);
  ellipse(ballPos.x, ballPos.y,10,10);
}
//void sound(){
  
// if(ballPos.y>height || ballPos.y<57){
//    ballVel.y=ballVel.y*-1;
//    //if(y>1){
//      //noLoop();
//      wall.play();
//    //}
    
//  }