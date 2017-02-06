//alien shooter test
//by Michael Naylor

final int menu = 0;
final int playing = 1;
final int gameOver = 2;
int gameMode = menu;

PImage background;
PImage startBtn;
int x = 0;
int lives = 3;
int score = 0;
int unit = 5;

Alien alien1 = new Alien(1100,(int)random(40,660));

Shooter player = new Shooter(200);

void setup()
{
 size(1200,700);
 
 background = loadImage("city.png");
 background.resize (1200,700);
 
 startBtn = loadImage("start.png");
 startBtn.resize (400,300);
 
 image(background, 0, 0);
}

void draw()
{
  background(255);
  
  if (gameMode == 0)
  {
    image(background, x, 0);
    
    image(startBtn, 400,200);
 
     if (mousePressed && mouseX >400 && mouseX <800 && mouseY > 200 && mouseY < 500){
       gameMode = 1;
     }
  }//end of if gameMode == 0
  
  else if (gameMode == 1)
  {
    image(background, x, 0);
    image(background,x + background.width,0);
    x -= 5;
    
    if (x <= -background.width )
    {
     x = 0; 
    }
    textSize(20);
    text("score: " + score, 500, 50);
    text("lives: " + lives, 600, 50);
    
    boolean isAlienOutOfScreen = alien1.update();
    if(isAlienOutOfScreen == true)
    {
     alien1=new Alien (1100,(int)random(40,660)); 
    }
    
    player.render();
    
    if(player.crash() == true)
    {
     fill(255,0,0); 
     lives -= 1; 
     alien1=new Alien (1100,(int)random(40,660));
    }
    
    if (lives <= 0)
    {
     gameMode = 2; 
    }
    
  }//end of if gameMode = 1
  else if (gameMode == 2)
  {
    image(background, x, 0);
    textSize (80);
    text("Game Over \n Press SPACE \n to play again", 200,300);
  }//end of if gameMode == 2
}//end of draw

void keyPressed()
{
 if(key == CODED) 
 {
   
   if(keyCode == UP && player.y >=21)
   {
    player.y -= 10; 
   }
   else if(keyCode == DOWN && player.y <= background.height-51)
   {
     player.y += 10;
   }
 }
 
 if (key == ' ' && gameMode == 2)
 {
  lives = 3;
  gameMode = 1; 
 }
 
}