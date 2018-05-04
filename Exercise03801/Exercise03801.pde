/* Lovato, Griffin
*
* 3/21/2018
*
* Exercise 038-01
*
* A sketch showing brownian motion, with 8 different molecules. The molecules
* move randomly, stopping eventually.
*/

class particle {

  float x,y,sz,sz2,tmp;
  particle(float x_, float y_, float size1, float size2, float temparature) {
    x = x_;
    y = y_;
    sz = size1;
    sz2 = size2;
    tmp = temparature;
  }
  void update() {
    println(x,y,sz,sz2,tmp);
    delay(100);
    ellipse(x,y,sz,sz2);
    tmp *= random(-2,2);
    x += tmp;
    tmp *= random(-2,2);
    y += tmp;
    if((tmp < 0.1) && (tmp > 0.1)) {
      tmp += 0.1;
    }
  }
}


particle brownian0 = new particle(random(0,800),random(0,800),50,50,5);
particle brownian1 = new particle(random(0,800),random(0,800),50,50,5);
particle brownian2 = new particle(random(0,800),random(0,800),50,50,5);
particle brownian3 = new particle(random(0,800),random(0,800),50,50,5);
particle brownian4 = new particle(random(0,800),random(0,800),50,50,5);
particle brownian5 = new particle(random(0,800),random(0,800),50,50,5);
particle brownian6 = new particle(random(0,800),random(0,800),50,50,5);
particle brownian7 = new particle(random(0,800),random(0,800),50,50,5);
void setup() {
  size(800,800);
}
void draw() {
  background(0);
  brownian0.update();
  brownian1.update();
  brownian2.update();
  brownian3.update();
  brownian4.update();
  brownian5.update();
  brownian6.update();
  brownian7.update();
}