void setup() {
  size(300,300);
  background(255);
}
int A = 1;
int B = 1;
void draw() {
int C = A + B;
A = B;
B = C;
println(B);
}