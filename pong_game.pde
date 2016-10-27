//Pong game v 1 made by Michael Naylor

//global variables
float paddleHeight = 75;
float paddlePos = 50;

float deltaX = 2;
float deltaY = 2;

float ballY = 100;
float ballX = 100;
float ballSize = 20;

int score = 0;

int highScore = 0;

PFont f;

void setup()
{
 size (500,500); 
 
 f = createFont("Arial",16,true); 
}

void draw()
{
 background (150,150,250);
 
 rect (0, paddlePos, 10, paddleHeight);
 
 ellipse (ballX, ballY, ballSize, ballSize);
 textFont(f,16);
 fill(0); 
 text("Score: " + score,250,20);
 fill(255);
 
 if (ballX > 0)
 {
  if (ballX <= 15 && ballY >= paddlePos && ballY <= (paddlePos + paddleHeight))
   {
    deltaX = -deltaX; 
    deltaX += 0.2;
    deltaY += 0.2;
    score += 1;
    print(score +"\n");
    print(deltaX + "\n");
   }
 }
 
 if (ballX <= 0)
 {
  fill(0); 
  text("Game Over \n click to restart",250,250);
  text("High Score:" + highScore,250,200);
  fill(255);
  
  if (score > highScore)
  {
    highScore = score;
  }
  
  if (mousePressed == true)
  {
   score = 0;
   deltaX = 2;
   deltaY = 2;
   ballX = 100;
   ballY = 200;
   ellipse (ballX, ballY, ballSize, ballSize);
   
  }
 }
 
 ballX += deltaX;
 ballY += deltaY;
 
 if (ballX >= width -5)
 {
  deltaX = -deltaX; 
 }
 
 if (ballY >= 500 || ballY<=0)
  {
   deltaY = -deltaY; 
  }
}

void keyPressed ()
{
 if ( keyCode == UP && paddlePos > 0 || ((keyPressed == true) && (key == 'w')) && paddlePos > 0)
 {
  paddlePos -= 15; 
 }
 
 if ( keyCode == DOWN && paddlePos < height - paddleHeight || ((keyPressed == true) && (key == 's')) && paddlePos < height - paddleHeight)
 {
  paddlePos += 15; 
 }
}