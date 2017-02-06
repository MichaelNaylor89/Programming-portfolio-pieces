class Shooter 
{
 int x = 20;
 int y;
 
 Shooter ( int y)
 {
  this.y = y; 
 }
 
 void render()
 {
  fill(255,0,0);
  rect(x,y,50,20);
  triangle(x+50, y,x+50, y+20, x+60, y+10);
  fill(0,0,100);
  rect(x,y-10,20,10);
 }
 
 boolean crash()
 {
  color detectedColour;
  for (int i = y; i<=y + 20; i++)
  {
     detectedColour = get (x+65, i);
     if(detectedColour == color(0,0,255))
     {
      return true; 
     }
  }
    return false;
 }
 
}