class Animal {
  float x, y, energy;
  Animal(float x_, float y_, float e) {
    x = x_;
    y = y_;
    energy = e;
  }
  void Animalupdate() {
    println(x, y, energy);
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(x, y, 10, 10);
    String xval = "" + x;
    String yval = "" + y;
    String eval = "" + energy;
    textSize(15);
    textAlign(CENTER);
    text(xval,width*0.25,20);
    text(yval,width*0.5,20);
    text(eval,width*0.75,20);
    if (energy <= 0) {
        fill(255,0,0);
        textAlign(CENTER);
        textSize(40);
        text("YOU DIED", width/2, height/2);
        fill(0);
        ellipse(x,y,15,15);
      }
      float speed = map(energy,0,1000,0.25,1);
      println(speed);
    if (keyPressed) {
      if (keyCode == UP) {
        delay(100);
        y -= 10*speed;
        energy -= 1;
      } else if (keyCode == LEFT) {
        delay(100);
        x -= 10*speed;
        energy -= 1;
      } else if (keyCode == RIGHT) {
        delay(100);
        x += 10*speed;
        energy -= 1;
      } else if (keyCode == DOWN) {
        delay(100);
        y += 10*speed;
        energy  -= 1;
      }
    }
  }
}

Animal meme = new Animal(250, 250, 100);
void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  meme.Animalupdate();
}