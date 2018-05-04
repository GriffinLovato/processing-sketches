/* Lovato, Griffin
*
* 11/28/17
*
* Golden Ratio; Now with Squares!
*/

float G = 1.61803398875;

void setup() {
  size(500,500);
  background(255);
  strokeWeight(3);
}

void draw() {
  rect(240,240,10,10);
  scale(G);
  translate(-16,0);
  rect(152,144,10,10);
  scale(G);
  translate(0,-16);
  rect(95,93,10,10);
  scale(G);
  translate(-2.5,1.5);
  rect(70,56.5,10,10);
  scale(G);
  translate(-3.25,-3.25);
  rect(42.12,46.85,10,10);
  scale(G);
  translate(-3.15,-3.2);
  rect(16.6,27.75,10,10);
}