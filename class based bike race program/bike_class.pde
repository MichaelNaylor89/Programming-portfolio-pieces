final color RED = color(255,0,0);
final color BLUE = color(0,0,255);
final color GREEN = color(0,255,0);
final color YELLOW = color(255,255,0);
final color AQUA = color(0,255,255);
final color PURPLE = color(255,0,255);

final int RACING = 0;
final int FINISH = 1;
int gameMode = RACING;

class motorbike
{
 int x = 5;  //members
 int y;
 int speed=2;
 int size=30;
 color colour;
  
  
  motorbike (int y, color colourOfBike)
  {
    this.y = y;
    this.colour = colourOfBike;
    this.speed = (int)random(5.0);
  }
  
void move()
{
  x = x+speed;
  speed = 1 + (int)random(5.0);
}

void update()
{
 move();//moves bike
 render();//draws bike
}

boolean isFinished()
{
 if( x >(width - 50) )
 {
  return true;
 }
 return false;
}
  
void render()
 {
   float wheelHeight = size/3;
   fill(colour);
   triangle(x,y,x+size,y,x+size/2,y-size/2);
   drawWheel(x,y,wheelHeight);
   drawWheel(x+size,y,wheelHeight);
 }
 
 void drawWheel(int x,int y,float size)
 {
    float inner = size*2/3;
    fill(0);
    ellipse(x,y,size,size);
    fill(255);
    ellipse(x,y,inner,inner);
 }
} //end of class description