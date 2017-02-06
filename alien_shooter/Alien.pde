class Alien
{
 int x, y;
 int moveCounter = 1;
 int moveDirection = 1;
  
  Alien (int x, int y)
  {
   this.x = x;
   this.y = y;
  }

  void render ()
  {
   fill(255,0,0);
   ellipse(x, y, 30,30);
   fill(0,0,255);
   ellipse(x, y, 50, 15);
  }
  
  boolean move ()
  {
   x -= 3;
   
   if (y > 0 && y < height)
   {
     if(moveCounter >= 0 && moveCounter <= 30)
     {
       y += moveDirection;
     }
     else 
     {
      moveDirection = -moveDirection; 
     }
     moveCounter += moveDirection;
   }
   
   if (x <= -10){return true;}
   else {return false;}
   
  }

  boolean update ()
  {
  render();
  return move();
  }
  
}