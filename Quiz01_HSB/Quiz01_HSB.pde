// HSB color mode (hue, saturation, brightness)
// The top square changes hue, the middle square changes saturation, and the
// bottom square changes brightness.
void setup() {
  size(300,300); // The background/size
  background(255);
}
void draw() {
  fill(255,0,0); // The background colors
  rect(0,0,50,300);
  fill(255,150,0);
  rect(50,0,50,300);
  fill(255,255,0);
  rect(100,0,50,300);
  fill(0,255,0);
  rect(150,0,50,300);
  fill(0,0,255);
  rect(200,0,50,300);
  fill(150,0,255);
  rect(250,0,50,300);
  
  fill(255,0,0,150); // Top square
  rect(mouseX-25, mouseY-100, 50, 50);
  fill(125.5, 125.5, 125.5, 175); // Middle square
  rect(mouseX-25, mouseY-25, 50, 50);
  fill(255, 255, 255, 150); // Bottom square
  rect(mouseX-25, mouseY+50, 50, 50);
}