//Michael Naylor

//Portfolio piece 2 procedure monsters

void setup () {
    size (500,500);
    
    drawMonster (50,50,40);
    drawMonster (150,50,80);
    drawMonster (250,50, 120);
}

void drawMonster (int x, int y, int size) {
  
  int aUnit = size/10;
  float eyeSize = size/5;
  
  //draw monster body
  fill(0,200,0);
  rect (x, y, size, size * 1.8);
  fill(255,255,255);
  //draw hair
  drawTriangle(x + aUnit * 2.5, y, size / 2);
  
  //draw right eye
  drawRightEye (x + aUnit * 3, y + aUnit * 3, eyeSize, 0,0,200);
  
  //draw left eye
  drawLeftEye (x + aUnit * 7, y + aUnit * 3, eyeSize, 0,0,200);
  
  //draw nose
  fill(200,0,0);
  ellipse (x + aUnit * 5, y + aUnit * 6, eyeSize * 2 , eyeSize * 2);
  fill(255,255,255);
  //draw right tooth
  drawTriangle(x, y + size *1.5, size / 3);
 
  //draw left tooth
  
  drawTriangle(x + aUnit *6.7, y+size * 1.5, size / 3);
  
  line(x + size /3, y + size * 1.5, x + aUnit *6.7, y + size * 1.5);
  
}

void drawTriangle (float x, float y, int size){
   float triangleSize = size/2;
   line(x, y, x + size, y);
   line(x, y, x + triangleSize, y - triangleSize);
   line(x + triangleSize, y - triangleSize, x + size, y);
}

void drawRightEye(int x, int y, float size, int r, int g, int b) {
    float eyeOffset = size/3;
    ellipse(x, y, size * 2, size * 2);
    fill(r, g, b);
    ellipse(x + eyeOffset, y + eyeOffset, size /2, size /2);
    fill(255,255,255);
}

void drawLeftEye(int x, int y, float size, int r, int g, int b) {
    float eyeOffset = size/3;
    ellipse(x, y, size * 2, size * 2);
    fill(r, g, b);
    ellipse(x - eyeOffset, y + eyeOffset, size /2, size /2);
    fill(255,255,255);
}