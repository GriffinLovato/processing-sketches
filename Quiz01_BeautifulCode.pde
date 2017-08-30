// Griffin Lovato
// 8/30/2017
// This sketch was made to display my understanding of "beautiful code",
// along with basic syntax for creating an average sketch.
size(300,300);
rect(0,0,299,299);
point(150,150);

color center = color (0,0,0);
fill(center);
ellipse(150,150,7.5,7.5);

color squareone = color (255,0,0);
fill(squareone);
rect(30,30,50,50);
color squareoneright = color (150,0,0);
fill(squareoneright);
quad(80,30,149,149,149,149,80,80);
color squareonebottom = color (100,0,0);
fill(squareonebottom);
quad(30,80,149,149,149,149,80,80);

color squaretwo = color (255,125,0);
fill(squaretwo);
rect(122.5,30,50,50);
color squaretwobottom = color (120,60,0);
fill(squaretwobottom);
triangle(122.5,80,150,149,172.5,80);

color squarethree = color (255,255,0);
fill(squarethree);
rect(210,30,50,50);
color squarethreeleft = color (150,150,0);
fill(squarethreeleft);
quad(210,30,151,151,151,151,210,80);
color squarethreebottom = color (100,100,0);
fill(squarethreebottom);
quad(210,80,151,151,151,151,260,80);

color squarefour = color (0,255,0);
fill(squarefour);
rect(30,122.5,50,50);
color squarefourright = color (0,150,0);
fill(squarefourright);
triangle(80,122.5,149,150,80,172.5);

color squarefive = color (0,200,255);
fill(squarefive);
rect(210,122.5,50,50);
color squarefiveleft = color (0,120,150);
fill(squarefiveleft);
triangle(210,122.5,151,150,210,172.5);

color squaresix = color (0,0,255);
fill(squaresix);
rect(30,210,50,50);
color squaresixtop = color (10,10,255);
fill(squaresixtop);
quad(30,210,149,151,149,151,80,210);
color squaresixright = color (0,0,150);
fill(squaresixright);
quad(80,260,149,151,149,151,80,210);

color squareseven = color (100,0,175);
fill(squareseven);
rect(122.5,210,50,50);
color squareseventop = color (150,10,255);
fill(squareseventop);
triangle(122.5,210,150,151,172.5,210);

color squareeight = color (255,0,100);
fill(squareeight);
rect(210,210,50,50);
color squareeightleft = color (150,0,60);
fill(squareeightleft);
quad(210,210,151,151,151,151,210,260);
color squareeighttop = color (255, 10, 150);
fill(squareeighttop);
quad(210,210,151,151,151,151,260,210);