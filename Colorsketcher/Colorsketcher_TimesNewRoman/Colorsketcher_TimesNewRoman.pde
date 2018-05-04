String letters = "";
int x = 102;
int y = 102;
int z = 102;
int a = (x+y+z)/3;
int e = 255-a;
int back = 102;
PFont timesNewRoman;

void setup() {
  size(500,500);
  timesNewRoman = createFont("Times New Roman", 484);
  textFont(timesNewRoman);
  textSize(80);
  textAlign(CENTER);
  stroke(255);
}

void draw() {
  background(x,y,z);
  fill(255);
  textSize(80);
  text(letters,250,250);
  fill(x,0,0);
  rect(50,400,50,50);
  fill(0,y,0);
  rect(225,400,50,50);
  fill(0,0,z);
  rect(400,400,50,50);
  fill(a);
  rect(225,50,50,50);
  fill(e);
  rect(50,50,50,50);
  
  String r = "" + x;
  String g = "" + y;
  String b = "" + z;
  String c = "" + a;
  String d = "" + e;
  
  
  fill(255); {
  textSize(15);
  textAlign(CENTER);
  text(r,75,430);
  text(g,250,430);
  text(b,425,430);
  text(c,250,80);
  text(d,75,80);
  }
}

void keyPressed() {
  if ((key == ENTER) || (key == RETURN)) {
    letters = letters.toLowerCase();
    println(letters);
    if (letters.equals("red")) {
      x = 255;
      y = 0;
      z = 0;
    } else if (letters.equals("lime")) {
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
      x = 139;
      y = 69;
      z = 19;
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
    } else if ((letters.equals("gray")) || (letters.equals("grey"))) {
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
    } else if (letters.equals("scarlet")) {
      x = 255;
      y = 53;
      z = 20;
    } else if (letters.equals("orange")) {
      x = 255;
      y = 185;
      z = 0;
    } else if (letters.equals("darkgreen")) {
      x = 0;
      y = 100;
      z = 0;
    } else if (letters.equals("xanthic")) {
      x = 237;
      y = 237;
      z = 20;
    } else if (letters.equals("mahogany")) {
      x = 192;
      y = 64;
      z = 0;
    } else if (letters.equals("magenta")) {
      x = 255;
      y = 0;
      z = 255;
    } else if (letters.equals("xanadu")) {
      x = 115;
      y = 134;
      z = 120;
    } else if (letters.equals("redorange")) {
      x = 254;
      y = 83;
      z = 0;
    } else if (letters.equals("yelloworange")){
      x = 255;
      y = 204;
      z = 0;
    } else if (letters.equals("yellowgreen")) {
      x = 173;
      y = 255;
      z = 47;
    } else if (letters.equals("bluegreen")) {
      x = 0;
      y = 200;
      z = 200;
    } else if (letters.equals("maroon")) {
      x = 128;
      y = 0;
      z = 0;
    } else if (letters.equals("cyan")) {
      x = 0;
      y = 255;
      z = 255;
    } else if (letters.equals("cobalt")) {
      x = 0;
      y = 71;
      z = 171;
    } else if (letters.equals("beige")) {
      x = 245;
      y = 245;
      z = 220;
    } else if (letters.equals("taupe")) {
      x = 179;
      y = 139;
      z = 109;
    } else if (letters.equals("copper")) {
      x = 184;
      y = 115;
      z = 51;
    } else if (letters.equals("cornflowerblue")) {
      x = 100;
      y = 149;
      z = 237;
    } else if (letters.equals("navy")) {
      x = 0;
      y = 0;
      z = 128;
    } else if (letters.equals("smaragdine")) {
      x = 80;
      y = 200;
      z = 117;
    } else if (letters.equals("huntergreen")) {
      x = 53;
      y = 94;
      z = 59;
    } else if (letters.equals("mikado")) {
      x = 255;
      y = 196;
      z = 12;
    } else if (letters.equals("peacockblue")) {
      x = 0;
      y = 164;
      z = 180;
    } else if (letters.equals("sarcoline")) {
      x = 250;
      y = 223;
      z = 174;
    } else if (letters.equals("coquelicot")) {
      x = 225;
      y = 56;
      z = 0;
    } else if (letters.equals("glaucous")) {
      x = 96;
      y = 130;
      z = 182;
    } else if (letters.equals("wenge")) {
      x = 100;
      y = 84;
      z = 82;
    } else if (letters.equals("fulvous")) {
      x = 228;
      y = 132;
      z = 0;
    } else if (letters.equals("falu")) {
      x = 131;
      y = 21;
      z = 21;
    } else if (letters.equals("crimson")) {
      x = 153;
      y = 0;
      z = 0;
    } else if ((letters.equals("eburnean")) || (letters.equals("ivory"))) {
      x = 254;
      y = 246;
      z = 204;
    } else if (letters.equals("amarath")) {
      x = 229;
      y = 43;
      z = 80;
    } else if ((letters.equals("banan")) || (letters.equals("banana"))) {
      x = 255;
      y = 225;
      z = 53;
    } else if ((letters.equals("mallard")) || (letters.equals("drakesneck"))) {
      x = 8;
      y = 176;
      z = 124;
    } else if (letters.equals("incarnadine")) {
      x = 149;
      y = 67;
      z = 71;
    } else if (letters.equals("zaffre")) {
      x = 0;
      y = 20;
      z = 168;
    } else if (letters.equals("tan")) {
      x = 210;
      y = 180;
      z = 140;
    } else if (letters.equals("lavendar")) {
      x = 178;
      y = 164;
      z = 212;
    } else if ((letters.equals("aero")) || (letters.equals("aeroblue"))) {
      x = 201;
      y = 255;
      z = 229;
    } else if (letters.equals("bazaar")) {
      x = 153;
      y = 120;
      z = 122;
    } else if (letters.equals("beer")) {
      x = 242;
      y = 143;
      z = 28;
    } else if (letters.equals("blood")) {
      x = 138;
      y = 3;
      z = 3;
    } else if (letters.equals("brass")) {
      x = 181;
      y = 168;
      z = 66;
    } else if (letters.equals("buff")) {
      x = 240;
      y = 219;
      z = 130;
    } else if (letters.equals("cadet")) {
      x = 84;
      y = 105;
      z = 115;
    } else if (letters.equals("cheese")) {
      x = 255;
      y = 166;
      z = 0;
    } else if (letters.equals("cherry")) {
      x = 222;
      y = 48;
      z = 99;
    } else if (letters.equals("cola")) {
      x = 61;
      y = 48;
      z = 36;
    } else if (letters.equals("coral")) {
      x = 255;
      y = 127;
      z = 79;
    } else if (letters.equals("chocolate")) {
      x = 78;
      y = 46;
      z = 40;
    } else if (letters.equals("goldenrod")) {
      x = 217;
      y = 166;
      z = 33;
    } else if (letters.equals("green")) {
      x = 0;
      y = 127;
      z = 0;
    } else if (letters.equals("imperial")) {
      x = 97;
      y = 46;
      z = 107;
    } else if (letters.equals("indigo")) {
      x = 74;
      y = 0;
      z = 130;
    } else if (letters.equals("red1/2")) {
      x = 127;
    } else if (letters.equals("green1/2")) {
      y = 127;
    } else if (letters.equals("blue1/2")) {
      z = 127;
    } else if (letters.equals("nored")) {
      x = 0;
    } else if (letters.equals("nogreen")) {
      y = 0;
    } else if (letters.equals("noblue")) {
      z = 0;
    } else if (letters.equals("red3/4")) {
      x = 191;
    } else if (letters.equals("green3/4")) {
      y = 191;
    } else if (letters.equals("blue3/4")) {
      z = 191;
    } else if (letters.equals("red1/4")) {
      x = 64;
    } else if (letters.equals("green1/4")) {
      y = 64;
    } else if (letters.equals("blue1/4")) {
      z = 64;
    } else if (letters.equals("red1/1")) {
      x = 255;
    } else if (letters.equals("green1/1")) {
      y = 255;
    } else if (letters.equals("blue1/1")) {
      z = 255;
    } else if ((letters.equals("aubergine")) || (letters.equals("eggplant"))) {
      x = 60;
      y = 26;
      z = 81;
    } else if (letters.equals("periwinkle")) {
      x = 204;
      y = 204;
      z = 255;
    } else if (letters.equals("ochre")) {
      x = 204;
      y = 119;
      z = 34;
    } else if (letters.equals("vermilion")) {
      x = 227;
      y = 66;
      z = 52;
    }
    letters = "";
    a = (x+y+z)/3;
    e = 255-a;
  } else if ((key > 31) && (key != CODED)) {
    letters = letters + key;
  }
}   