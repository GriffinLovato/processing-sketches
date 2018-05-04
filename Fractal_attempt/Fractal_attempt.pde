void setup() {
  size(900,900);
  rectMode(CENTER);
  centerSqr(0,0,height/3);
  
  resetMatrix();
  float val = height;
  for (int i = 0; 21 > i; i++) {
    
    val/= 3.0;
    centerSqrs(0,0,val);
  }
  
}

void centerSqrs(float x, float y_, float size) {
  float y = y_;
  for (int i = 0; 9 > i; i++) {
    if (i %3 == 0 && i != 0) {
      y+=size;
    }
    if (i!=4) {
      centerSqr((i%3)*size + x, y, size/3);
    }
    resetMatrix();
  }
}

ArrayList centerSqr(float x,float y,float size) {
  for (int i = 0; 3 > i; i++) {
    for (int j = 0; 3 > j; j++) {
      
      if(i != 1 || j != 1) {
        fill(0);
        rect(x,y,size,size);
      }
      else {
        fill(255);
      rect(x,y,size,size);
      }
      translate(size,0);
    
  }
    translate(-size*3,size);
  }
}