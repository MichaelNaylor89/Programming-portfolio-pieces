//Pong game v 1 made by Michael Naylor

//global variables
float paddleHeight = 75;
float leftPaddlePos = 50;
float rightPaddlePos = 50;

float deltaX = 2;
float deltaY = 2;

float ballY = 100;
float ballX = 100;
float ballSize = 10;

int p1Score = 0;
int p2Score = 0;

int currentRallay = 0;

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
 
 rect (0, leftPaddlePos, 10, paddleHeight);
 rect(489,rightPaddlePos, 10, paddleHeight);
 
 ellipse (ballX, ballY, ballSize, ballSize);
 textFont(f,16);
 fill(0); 
 text("P1 Score: " + p1Score,150,20);
 text("P2 Score: " + p2Score, 250,20);
 text("total Bounces: " + currentRallay, 200,50);
 fill(255);
  
 if (ballX > 0)
 {
  if (ballX <= 15 && ballY >= leftPaddlePos && ballY <= (leftPaddlePos + paddleHeight))
   {
    deltaX = -deltaX; 
    deltaX += 0.2;
    deltaY += 0.2;
    currentRallay += 1;
    print(p1Score +"\n");
    print(deltaX + "\n");
   }
 }
 
 if (ballX <= 0 || ballX >= 500)
 {
  fill(0); 
  text("Game Over \n click to restart",250,250);
  text("High Score:" + highScore,250,200);
  fill(255);
  
  if (p1Score > highScore)
  {
    highScore = p1Score;
  }
  
  if (mousePressed == true)
  {
   p1Score = 0;
   p2Score = 0;
   currentRallay = 0;
   deltaX = 2;
   deltaY = 2;
   ballX = 100;
   ballY = 200;
   ellipse (ballX, ballY, ballSize, ballSize);
   
  }
 }
 
 ballX += deltaX;
 ballY += deltaY;
 
 if (ballX < 500)
  {
   if (ballX >= 480 && ballY >= rightPaddlePos && ballY <= (rightPaddlePos + paddleHeight))
   {
    deltaX = -deltaX; 
    currentRallay += 1;
   }
  }
 
 if (ballY >= 500 || ballY<=0)
  {
   deltaY = -deltaY; 
  }
}

void keyPressed ()
{
 if ( ((keyPressed == true) && (key == 'w')) && leftPaddlePos > 0)
 {
  leftPaddlePos -= 15; 
 }
 
 if  ( ((keyPressed == true) && (key == 's')) && leftPaddlePos < height - paddleHeight)
 {
  leftPaddlePos += 15; 
 }
 
  if ( keyCode == UP && rightPaddlePos > 0)
 {
  rightPaddlePos -= 15; 
 }
 
 if ( keyCode == DOWN && rightPaddlePos < height - paddleHeight)
 {
  rightPaddlePos += 15; 
 }
}