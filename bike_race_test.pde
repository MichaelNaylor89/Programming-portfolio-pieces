//classes test

int blueWins = 0;
int redWins = 0;
int greenWins = 0;
int yellowWins = 0;
int aquaWins = 0;
int purpleWins = 0;

int totalRaces = 0;

motorbike b1;
motorbike b2;
motorbike b3;
motorbike b4;
motorbike b5;
motorbike b6;

void setup ()//only runs once at start
{
  //set canvas size
  size (1200,200);
  
  b1 = new motorbike(20, BLUE);
  b2 = new motorbike(50, RED);
  b3 = new motorbike(80, GREEN);
  b4 = new motorbike(110, YELLOW);
  b5 = new motorbike(140,AQUA);
  b6 = new motorbike(170,PURPLE);
}//end of setup

void draw () //draws 60 times per second
{
  if (gameMode == RACING )
  {
      //sets backgroud color (draws repeatedly)
      background (125);
      
      
     if (b1.isFinished () == true)
     {
       text("Blue wins", 10,20);
       gameMode = FINISH;
       blueWins +=1;
       totalRaces +=1;
     }
     else
     {
      
       b1.update();
     }
     
     if (b2.isFinished () == true)
     {
      text("Red wins", 10,20);
      gameMode = FINISH;
      redWins +=1;
      totalRaces +=1;
     }
     else
     {
       b2.update();
     }
     
     if (b3.isFinished () == true)
     { 
      text("Green wins", 10, 20);
      gameMode = FINISH;
      greenWins +=1;
      totalRaces +=1;
     }
     else
     {
       b3.update();
     }
     if (b4.isFinished () == true)
     {
      text("Yellow wins",10,20);
      gameMode = FINISH;
      yellowWins += 1;
      totalRaces += 1;
     }
     else
     {
      b4.update();
     }
     if (b5.isFinished () == true)
     {
      text("Aqua wins",10,20);
      gameMode = FINISH;
      aquaWins += 1;
      totalRaces +=1;
     }
     else
     {
       b5.update();
     }
     if (b6.isFinished () == true)
     {
      text("Purple wins",10,20);
      gameMode = FINISH;
      purpleWins += 1;
      totalRaces += 1;
     }
     else
     {
      b6.update(); 
     }
     
     if (gameMode ==FINISH)
      {
       text("Total wins Blue:" + blueWins + 
       "\n Total wins Red:" + redWins +
       "\n Total wins Green:" + greenWins +
       "\n total wins Yellow:" + yellowWins +
       "\n total wins Aqua:" + aquaWins +
       "\n total wins Purple:" + purpleWins +
       "\n total races:" + totalRaces, 10,40); 
      }
  }
  
}//end of draw

void keyPressed ()
{
 if( key== ' ' && gameMode == FINISH) 
 {
  b1 = new motorbike(20, BLUE);
  b2 = new motorbike(50, RED);
  b3 = new motorbike(80, GREEN);
  b4 = new motorbike(110, YELLOW);
  b5 = new motorbike(140,AQUA);
  b6 = new motorbike(170,PURPLE);  
  gameMode = RACING;
 }
}