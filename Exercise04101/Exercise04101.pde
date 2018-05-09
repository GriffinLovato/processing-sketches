/* Lovato, Griffin
 *
 * 5/7/2018
 *
 * Exercise 041-01
 *
 * Several GUI elements in a row. The buttons change the background, the dropdown list changes the color of the ellipse next to it,
 * and the slider changes the size of the ellipse next to it.
 */

import controlP5.*;

ControlP5 cp5;

DropdownList d1;

int cnt = 0;
int sliderValue;
int back;
int circlecolor;


void setup() {
  size(500, 500);
  noStroke();
  smooth();
  cp5 = new ControlP5(this);

  cp5.addButton("White_Background")
    .setValue(0)
    .setPosition(50, 50)
    .setSize(100, 20)
    ;

  cp5.addButton("Black_Background")
    .setValue(0)
    .setPosition(150, 50)
    .setSize(100, 20)
    ;

  cp5.addButton("DarkGray_Background")
    .setValue(0)
    .setPosition(350, 50)
    .setSize(100, 20)
    ;

  cp5.addButton("Gray_Background")
    .setValue(0)
    .setPosition(250, 50)
    .setSize(100, 20)
    ;

  cp5.addSlider("sliderValue")
    .setPosition(200, 300)
    .setRange(10, 100)
    ;

  d1 = cp5.addDropdownList("Listboi")
    .setPosition(200, 175)
    ;

  customize(d1);
}

void customize(DropdownList ddl) {
  ddl.setBackgroundColor(color(190));
  ddl.setItemHeight(20);
  ddl.setBarHeight(15);
  ddl.getCaptionLabel().set("dropdown");
  ddl.addItem("Green_Circle", 0)
    .setValue(2)
    ;
  ddl.addItem("Yellow_Circle", 0)
    .setValue(2)
    ;
  ddl.addItem("Blue_Circle", 0)
    .setValue(2)
    ;
  ddl.setColorBackground(color(60));
  ddl.setColorActive(color(255, 128));
}

void keyPressed() {
  if (key=='1') {
    d1.setHeight(210);
  } else if (key=='2') {
    d1.setHeight(120);
  } else if (key=='3') {
    d1.setItemHeight(30);
  } else if (key=='4') {
    d1.setItemHeight(12);
    d1.setBackgroundColor(color(255));
  } else if (key=='5') {
    int n = (int)(random(100000));
    d1.addItem("item"+n, n);
  } else if (key=='6') {
    d1.removeItem("item"+cnt);
    cnt++;
  } else if (key=='7') {
    d1.clear();
  }
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isGroup()) {
    println("event from group : "+theEvent.getGroup().getValue()+" from "+theEvent.getGroup());
  } else if (theEvent.isController()) {
    println("event from controller : "+theEvent.getController().getValue()+" from "+theEvent.getController());
  }
  if (theEvent.getController().getValue() == 0) {
    circlecolor=1;
  } else if (theEvent.getController().getValue() == 1) {
    circlecolor=2;
  } else if (theEvent.getController().getValue() == 2) {
    circlecolor=3;
  } else {
    circlecolor=-1;
  }
}


void draw() {
  background(back);

  fill(0, 255, 255);
  ellipse(100, 300, sliderValue, sliderValue);
  

  if (circlecolor == 1) {
    fill(0, 255, 0);
    ellipse(100, 180, 55, 55);
  } else if (circlecolor == 2) {
    fill(255,255,0);
    ellipse(100, 180, 55, 55);
  } else if (circlecolor == 3) {
    fill(0,0,255);
    ellipse(100,180,55,55);
  }


  fill(0, 75, 255);
  textSize(20);
  textAlign(CENTER);
  text("Buttons:", width/2, 40);
  text("Dropdown:", width/2, 165);
  text("Slider:", width/2, 290);
}

public void White_Background(int theValue) {
  println("White");
  back = 255;
}

public void Black_Background(int theValue) {
  println("Black");
  back = 0;
}

public void Gray_Background(int theValue) {
  println("Gray");
  back = 125;
}

public void DarkGray_Background(int theValue) {
  println("DarkGray");
  back = 50;
}

public void Green_Circle(int theValue) {
}

public void Yellow_Circle(int theValue) {
}
