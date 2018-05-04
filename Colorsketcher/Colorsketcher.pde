String letters = "";
int x = 102;
int y = 102;
int z = 102;
int back = 102;

void setup() {
  size(200,200);
  textSize(32);
  textAlign(CENTER);
}

void draw() {
  background(x,y,z);
  text(letters,100,100);
}

void keyPressed() {
  if ((key == ENTER) || (key == RETURN)) {
    letters = letters.toLowerCase();
    println(letters);
    if (letters.equals("red")) {
      x = 255;
      y = 0;
      z = 0;
    } else if (letters.equals("green")) {
      x = 0;
      y = 255;
      z = 0;
    } else if (letters.equals("blue")) {
      x = 0;
      y = 0;
      z = 255;
    } else if (letters.equals("yellow")) {
      x = 255;
      y = 255;
      z = 0;
    } else if (letters.equals("purple")) {
      x = 200;
      y = 0;
      z = 200;
    } else if (letters.equals("brown")) {
      x = 175;
      y = 45;
      z = 45;
    } else if (letters.equals("pink")) {
      x = 255;
      y = 100;
      z = 200;
    } else if (letters.equals("royalblue")) {
      x = 25;
      y = 25;
      z = 115;
    } else if (letters.equals("black")) {
      x = 0;
      y = 0;
      z = 0;
    } else if (letters.equals("gray")) {
      x = 102;
      y = 102;
      z = 102;
    } else if (letters.equals("white")) {
      x = 225;
      y = 225;
      z = 225;
    } else if (letters.equals("gold")) {
      x = 255;
      y = 215;
      z = 0;
    } else if (letters.equals("silver")) {
      x = 192;
      y = 192;
      z = 192;
    } else if (letters.equals("bronze")) {
      x = 205;
      y = 127;
      z = 50;
    }
    letters = "";
  } else if ((key > 31) && (key != CODED)) {
    letters = letters + key;
  }
}
        
      