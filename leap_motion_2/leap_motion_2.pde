/* 
Introduction to Coding

leap_motion_game_2

February 23, 2018

Making a tutorial on how leapmotion recognizes fingers and their positions
*/

import de.voidplus.leapmotion.*; 

LeapMotion leap;

void setup() {

  size(800, 500);
  //Sets the size of the sketch

}
    



void draw() {

  background(255);
  //Sets the background to white
  leap = new LeapMotion(this);
  //Creates the leapmotion object
  for (Hand hand : leap.getHands ()) {
  //Gets all the information about the hands from the
  //leapmotion object
    

    Finger  fingerPink         = hand.getPinkyFinger();
    //Gets all the information about the pinky finger from
    //the hand object
    
    if(fingerPink.getPosition().x > 50) {
    //"If the pinky is over 50 pixels from the left side
    //of the screen..."
      background(0,0,255);
    //Changes the background color to blue
    }
  }
}