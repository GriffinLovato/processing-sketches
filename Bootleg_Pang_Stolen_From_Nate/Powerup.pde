PImage supreme;
class Powerup {
  int newSize;
  int rx;
  int ry;
  Powerup(int paddleSize, int powerx, int powery) {
    newSize= paddleSize;
    rx=powerx;
    ry=powery;
  }
  void alter() {
    // int roundval= int(ballPos.y);
    //println(ry, roundval);
    image(supreme, rx-40, ry-23);


    //  line(rx, ry, rx, ry+40);

   

      if (dist(rx, ry, ballPos.x, ballPos.y)<=19 && (ballVel.x<0)) {
        power.play();
//ballPos.x=ballPos.x-40;
        println("worked");
        //rect(width/2, height/2, 60,100);
       // int i=0;
       // int j=0;
       //while(i<100000){
       //  i++;
         
       //  if(j<100000){
       // // delay(5);
        if(hisscorecount<4 && hisscorecount>1){
       hisHeight=hisHeight*3;
        }
        else if(hisscorecount<1 || hisscorecount==4){
          hisHeight=40;
        }
        
        
       // stroke(255);
       // strokeWeight(5);
        
       // line(568,yp, 568, yp+hisHeight);
       // int roundVal=int(ballPos.y);
       // for(int loop=0;loop<hisHeight;loop++){
       //   if(roundVal==yp+i&&ballPos.x==568){
       //     ballPos.x=ballPos.x*-1;
       //     ballPos.y=ballPos.y*random(0.4, 2);
       //   }
          
       // }
       // strokeWeight(1);
       //// delay(1);
        
       // println(hisHeight,i);
      } //  }
         
       
       //if(i==100000){
       //  delay(500);
       //  hisHeight=40;
       //  println(hisHeight, i);
       //}
       
      
    

    //else{
    //  hispower=false;
    //}
 
      
      if (dist(rx, ry, ballPos.x, ballPos.y)<=19 && (ballVel.x>0)) {
        power.play();
     if(myscorecount>1){
        myHeight=myHeight*3;
        println("BWAHA");
        println(myscorecount);
     
  //   else if(myscorecount<1){
    //   myHeight=40;
    // }
      //}
    }
      }
    //else{
    //  mypower=false;
    //}
      }
}