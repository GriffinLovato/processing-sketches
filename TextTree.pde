String t = "Trunk Trunk Trunk";
String b = "Branch";
String l = "Leaves";
float w;

size(300,300); //The background.
background(255);

textSize(10); //The trunk of the tree.
fill(160,82,45);
textLeading(14);
textAlign(CENTER);
text(t,120,150,60,300);
text(t,120,192,60,300);
text(t,120,234,60,300);

fill(160,82,45); //The branches of the tree.
noStroke();
textSize(8);
w = textWidth(b);
textAlign(CENTER);
text(b,133,140);
rect(120,141,w,1);
text(b,160,140);
rect(147,141,w,1);

textAlign(RIGHT);
text(b,133,130);
rect(105,131,w,1);
text(b,123,120);
rect(95,121,w,1);

textAlign(LEFT);
text(b,160,130);
rect(157,131,w,1);
text(b,170,120);
rect(167,121,w,1);

textSize(13); //The leaves of the tree.
textAlign(CENTER);
fill(30,100,10);
text(l,148,120);
text(l,80,105);
text(l,216,105);
text(l,80,60);
text(l,216,60);

textSize(30);
text(l,148,110);
text(l,90,85);
text(l,206,85);
text(l,148,60);