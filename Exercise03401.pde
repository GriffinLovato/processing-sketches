/* Lovato, Griffin
*
* 3/13/2018
*
* Exercise 034-01
*
* A sketch, displaying multiple cubes with trails. These cubes move
* around stochastically, changing direction every so often. Use w and s to
* move the camera forwards and backwards, and the arrowkeys to move the camera
* up, down, left, and right.
*/

class trail {
  float x,y,z;
  trail (float x_, float y_, float z_) {
    x = x_;
    y = y_;
    z = z_;
  }
  void show() {
    pushMatrix();
    translate(x,y,z);
    box(25);
    popMatrix();
  }
}

class brownMan { //euplel
  ArrayList<trail> b = new ArrayList();
  float x,y,z;
  PVector vel = new PVector(random(10),random(10),random(10));
  float[] rgb = {random(250),random(0),random(0)};
  brownMan() {
    x = random(400);
    y = random(400);
    z = random(400);
    vel = new PVector(random(-2.,2.), random(-2.,2.), random(-2.,2.));
    for (int i = 0; 50 > i; i++) {
      b.add(new trail(x,y,z));
    }
  }
  void display() {
    for (int i = 0; b.size() > i; i++) {
      b.get(i).show();
    }
    int random = int(random(20));
    if (random == 10) {
          vel = new PVector(random(-2,2),random(-2,2),random(-2,2));
    }
    
    b.remove(0);
    b.add(new trail(x,y,z));
    pushMatrix();
    translate(x,y,z);
    
    x += vel.x * .9;
    y += vel.y* .9; 
    z += vel.z* .9;
    
    noStroke();
    fill(rgb[0],rgb[1],rgb[2]);
    box(25);
    popMatrix();
    
    if (x > width*3 || 0 > x) {
      vel.x *= -1;
    }
    if (y > width*3 || 0 > y) {
      vel.y *= -1;
    } 
    if (z > width*3 || 0 > z) {
      vel.z *= -1;
    }
  }
  
  
}
class brownian {
  ArrayList<brownMan> a = new ArrayList();
  void init() {
    for (int i = 0; 50 > i; i++) {
      a.add(new brownMan());
    }
  }
  void update() {
    
    for (int i = 0; a.size() > i; i++) {
      (a.get(i)).display();
    }
  }
  
}
view b = new view();
 brownian a= new brownian();
void setup() {
 size(600,600,P3D);
 a.init();
}
void draw() {
  background(255);
  b.run();
  a.update();
  
}


void keyPressed() {
  b.keyPres();
}
void keyReleased() {
  b.keyRel();
}
class view {
  boolean[] keys = {false,false,false,false,false,false};
  float x = 0; float y = 0; float dir = 0; float z = 0; float yUp = 0;  //all to default of 0
  float speedMove = 1; //speed moving
  void run() {
      doKey();
      camera( x, y , z, x+(cos(radians( dir)))  , y+(yUp/(height*.25)) , z+sin(radians( dir)),0,-1,0);
  }
  void keyPres() {
    if (keyCode == RIGHT) {
       keys[0] = true;
     }
     if (keyCode == LEFT) {
       keys[1] = true;
     }
     if (keyCode == UP) {
        keys[2] = true;
     
     }
     if (keyCode == DOWN) {
       keys[3] = true;
     }
     if (key == 'w') {
       keys[4] = true;
     }
      if (key == 's') {
        keys[5] = true;
     }
  }
  void keyRel() {
    if (keyCode == RIGHT) {
       keys[0] = false;
     }
     if (keyCode == LEFT) {
       keys[1] = false;
     }
     if (keyCode == UP) {
        keys[2] = false;
     
     }
     if (keyCode == DOWN) {
       keys[3] = false;
     }
     if (key == 'w') {
       keys[4] = false;
     }
      if (key == 's') {
        keys[5] = false;
     }
  }
  void doKey() {
     if (keys[1]) {
       dir += speedMove;
     }
     if (keys[0]) {
       dir -= speedMove;
     }
     if (keys[3]) {
       yUp-= speedMove;

     }
     if (keys[2]) {
       yUp+= speedMove;

     }
     if (keys[4]) {
       x += cos(radians(dir)) * speedMove;
       z += sin(radians(dir)) * speedMove;
       y += yUp/(height*.25) * speedMove;
     }
      if (keys[5]) {
       x -= cos(radians(dir)) * speedMove;
       z -= sin(radians(dir)) * speedMove;
       y -= yUp/(height*.25) * speedMove;
       
     }
  }
}