/*
Lovato, Griffin
 
 GUI code
 
 5/17/2018
 
 Code for the GUI for the ned of year coding project. Displays a menu with several buttons,
 with a tab selector on the top right to show/hide the GUI buttons.
*/

import controlP5.*;
import processing.sound.*;
SoundFile menu;
SoundFile click;

ControlP5 cp5;

boolean mainmenu, pang, weirdmario, templerun, quitter, mainmenumusic;
int quit = 0;

void setup() {
  menu= new SoundFile (this, "menu.mp3");
  click= new SoundFile (this, "click.mp3");
  menu.play();
  size(1000, 500);
  noStroke();
  smooth();
  cp5 = new ControlP5(this);

  cp5.addTab("Hide Menu")
    .setColorLabel(color(255))
    .setColorActive(color(255, 0, 0))
    .setSize(50,20)
    ;

  cp5.getTab("default")
    .activateEvent(false)
    .setLabel("Show Menu")
    .setId(1)
    .setColorLabel(color(255))
    .setColorActive(color(0, 255, 0))
    .setSize(50,20)
    ;

  cp5.getTab("Hide Menu")
    .activateEvent(false)
    .setId(2)
    ;


  cp5.addButton("Play Pang")
    .setValue(1)
    .setPosition(width/2-75, 150)
    .setSize(150, 30)
    ;

  cp5.addButton("Play Weird Mario")
    .setValue(2)
    .setPosition(width/2-75, 190)
    .setSize(150, 30);
  ;

  cp5.addButton("templerun")
    .setValue(3)
    .setPosition(width/2-75, 230)
    .setSize(150, 30)
    ;

  cp5.addButton("Be A Quitter")
    .setValue(4)
    .setPosition(width/2-75, 300)
    .setSize(150, 30)
    ;

  cp5.addButton("Back To Menu")
    .setValue(5)
    .setPosition(930, 10)
    .setSize(60, 20)
    ;
    
  cp5.addButton("")
    .setValue(6)
    .setPosition(998,498)
    .setSize(2,2)
    ;

  cp5.getController("Back To Menu").moveTo("global");
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isGroup()) {
    println("event from group : "+theEvent.getGroup().getValue()+" from "+theEvent.getGroup());
  } else if (theEvent.isController()) {
    println("event from controller : "+theEvent.getController().getValue()+" from "+theEvent.getController());
    click.play();
    click.rate(75);
  } else if (theEvent.isTab()) {
    println("one tabby boi");
  }

  if (theEvent.getController().getValue() == 1) {
    pang = true;
    mainmenu = false;
    weirdmario = false;
    templerun = false;
    quitter = false;
    //setId() = 2;
  } else if (theEvent.getController().getValue() == 2) {
    pang = false;
    mainmenu = false;
    weirdmario = true;
    templerun = false;
    quitter = false;
  } else if (theEvent.getController().getValue() == 3) {
    pang = false;
    mainmenu = false;
    weirdmario = false;
    templerun = true;
    quitter = false;
  } else if (theEvent.getController().getValue() == 4) {
    pang = false;
    mainmenu = false;
    weirdmario = false;
    templerun = false;
    quitter = true;
    quit += 1;
  } else if (theEvent.getController().getValue() == 5) {
    pang = false;
    mainmenu = true;
    weirdmario = false;
    templerun = false;
    quitter = false;
  } else if (theEvent.getController().getValue() == 6) {
    textSize(10);
    fill(255);
    text("Easter Egg!",950,475);
  }
}

void draw() {
  if (1>0){
  }
  if (mainmenu==true) {
    background(150, 100, 75);
    fill(0, 50, 255);
    textAlign(CENTER);
    textSize(60);
    text("Game Name", width/2, 100);
  } else if (pang==true) {
    background(100);
    fill(255);
    textAlign(CENTER);
    textSize(80);
    text("PANG", width/2, height/2);
  } else if (weirdmario==true) {
    background(100);
    fill(255);
    textAlign(CENTER);
    textSize(80);
    text("WEIRD MARIO", width/2, height/2);
  } else if (templerun==true) {
    background(100);
    fill(255);
    textAlign(CENTER);
    textSize(80);
    text("TEMPLE RUN", width/2, height/2);
  } else if (quitter==true) {
    background(0);
    fill(255, 0, 0);
    textAlign(CENTER);
    textSize(80);
    text("QUITTER", width/2, height/2);
  }

  if (quit == 2) {
    exit();
  }
}