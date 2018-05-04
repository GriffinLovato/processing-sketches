import de.voidplus.leapmotion.*;
LeapMotion leap;
void setup() {
  size(800, 500);
  leap = new LeapMotion(this);
}
void draw() {
  background(255);
  for (Hand hand : leap.getHands ()) {
      hand.draw();   
  boolean handIsLeft         = hand.isLeft();
  boolean handIsRight        = hand.isRight();
  Finger  fingerThumb        = hand.getThumb();
  Finger  fingerIndex        = hand.getIndexFinger();
  Finger  fingerMiddle       = hand.getMiddleFinger();
  Finger  fingerRing         = hand.getRingFinger(); 
  Finger  fingerPink         = hand.getPinkyFinger(); 
  }
}