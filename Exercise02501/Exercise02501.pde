/* Lovato, Griffin
*
* 12/15/2017
*
* Exercise 02501
*
* The red line goes along the x-axis, the green line goes along
* the y-axis, and the blue line goes along the z-axis.
*/
void setup() {
size(500,500,P3D);
}
void draw() {
background(0);
strokeWeight(3);
camera(0,0,0,250,250,-250,1.0,1.0,1.0);

stroke(255,0,0);
line(0,250,-250,500,250,-250); //x axis
stroke(0,255,0);
line(250,0,-250,250,500,-250); //y axis  
stroke(0,0,255);
line(250,250,0,250,250,-500); //z axis

translate(250,250,-250);
fill(200,0,200);
noStroke();
sphere(5);
}