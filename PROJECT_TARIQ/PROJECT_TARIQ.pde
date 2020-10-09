//initialize variables and colors
int gameState = 0;
color red = color (255,0,0);
color green = color (0,255,0);
int randomNumber = 0;

//setup the size and background
void setup(){
  size(1000,530);
  background(100);
  
  
  randomNumber = int(random(3));
  
  
}

//create the first maze with lots of rectangles.

void maze1() {
  
  //print start, still in white from before
  textSize(15);
  text("Start",30,30);
  
  //change color to red for maze walls
  fill(255,0,0);
  stroke(255,0,0);
  
  //create the maze 
  rect(0,0,990,10);
  rect(0,520,1090,10);
  rect(0,0,10,530);
  rect(990,0,10,520);
  rect(50,50,10,430);
  rect(50,50,890,10);
  rect(100,100,10,420);
  rect(100,100,100,10);
  rect(250,60,10,100);
  rect(160,150,100,10);
  rect(160,200,150,10);
  rect(310,100,10,210);
  rect(100,250,150,10);
  rect(160,300,150,10);
  rect(160,300,10,170);
  rect(220,350,10,120);
  rect(220,350,160,10);
  rect(370,50,10,500);
  rect(220,470,100,10);
  rect(310,410,10,70);
  rect(930,50,10,150);
  rect(490,190,440,10);
  rect(870,110,10,90);
  rect(820,50,10,100);
  rect(430,140,340,10);
  rect(430,95,340,10);
  rect(430,95,10,365);
  rect(490,190,10,210);
  rect(430,460,510,10);
  rect(490,400,70,10);
  rect(550,250,10,150);
  rect(620,400,310,10);
  rect(930,400,10,60);
  rect(930,460,60,10);
  rect(930,200,10,100);
  rect(620,350,320,10);
  rect(620,350,10,50);
  rect(620,250,250,10);
  rect(620,250,10,150);
  rect(860,310,10,50);
  
  //create a green box so that you can win. 
  fill(0,255,0);
  stroke(0,255,0);
  rect(940,470,50,50);

}

void maze2() {
  
  //print start, still in white from before
  textSize(15);
  text("Start",30,30);
  
  //change color to red for maze walls
  fill(255,0,0);
  stroke(255,0,0);
  
  //create the maze 
  rect(0,0,990,10);
  rect(0,520,1090,10);
  rect(0,0,10,530);
  rect(990,0,10,520);
  rect(50,50,10,230);
  rect(50,330,10,250);
  rect(50,50,330,10);
  rect(430,50,330,10);
  rect(820,50,110,10);
  rect(100,100,10,360);
  rect(100,100,100,10);
  rect(250,60,10,100);
  rect(110,150,150,10);
  rect(160,200,150,10);
  rect(310,100,10,260);
  rect(100,250,150,10);
  rect(160,300,150,10);
  rect(160,300,10,220);
  rect(220,350,10,120);
  rect(220,350,100,10);
  rect(370,350,60,10);
  rect(370,410,10,70);
  rect(310,410,70,10);
  rect(370,50,10,300);
  rect(220,470,50,10);
  rect(380,410,50,10);
  rect(310,410,10,70);
  rect(930,50,10,100);
  rect(490,190,340,10);
  rect(870,110,10,200);
  rect(820,50,10,100);
  rect(820,200,10,50);
  rect(430,140,400,10);
  rect(430,100,330,10);
  rect(430,100,10,320);
  rect(430,410,60,10);
  rect(490,190,10,230);
  rect(430,470,300,10);
  rect(790,435,10,45);
  rect(730,470,10,50);
  rect(790,480,100,10);
  rect(430,470,10,60);
  rect(490,410,70,10);
  rect(550,250,10,160);
  rect(560,350,60,10);
  rect(620,400,190,10);
  rect(930,460,10,60);
  rect(870,400,140,10);
  rect(930,200,10,160);
  rect(620,350,310,10);
  rect(620,250,10,60);
  rect(620,250,210,10);
  rect(620,400,10,70);
  rect(870,310,10,100);
  rect(620,300,210,10);
  rect(680,435,200,10);
  rect(870,400,10,45);
  rect(260,410,10,60);
  
  
  //create a green box so that you can win. 
  fill(0,255,0);
  stroke(0,255,0);
  rect(940,470,50,50);

}



void newMaze() {
  //print start, still in white from before
  textSize(15);
  text("Start",30,30);
  
  //change color to red for maze walls
  fill(255,0,0);
  stroke(255,0,0);
  
  
  fill(0,255,0);
  stroke(0,255,0);
  rect(940,470,50,50);
}

void draw() {
  
  //starting screen-made for no cheating
  if (gameState == 0) {
    background(0);
    fill(255,0,0);
    rect(10,10,30,30);
    fill(255,255,255);
    textSize(30);
    textAlign(CENTER);
    text("Welcome to the Maze",450,250);
    text("Put your mouse in the the red square in the corner to start",450,300);
    
    //once the mouse is in the red you can start the maze
    if (get(mouseX,mouseY) == red) {
      gameState = 1;
    fill(255,255,255);
    ellipse(mouseX,mouseY,10,10);
    }
    
  }
  

  if (gameState == 1) {
    
   
    background(100);
    
    
    if (randomNumber == 0) {
      maze1();
    }
    if (randomNumber == 1) {
    maze2();
    }
    if (randomNumber == 2) {
      newMaze();
    }
    
    //reset color to white so ellipse can be drawn
    fill(255);
    stroke(255);
  

    //if it is red, end game, if it is green, win screen
    if (get(mouseX,mouseY) == red) {
      gameState = 2;
      background(0);
    }
    if (get(mouseX,mouseY) == green) {
      gameState = 3;
    }
    
  // print ellipse after so the mouse is not on a white pixel 
    ellipse(mouseX,mouseY,10,10);
  
  }
 
 // losing screen, and restart
 if(gameState==2){
   fill(255,0,0);
   background(0);
   textSize(30);
   textAlign(CENTER);
   text("Game Over",450,250);
   text("Press R to Restart",450,300);
  }
  
  //winning screen and retry
  if(gameState==3){
   fill(255,0,0);
   background(0);
   textSize(30);
   textAlign(CENTER);
   text("You Win!",450,250);
   text("Press R to Retry",450,300);
  }

}
  
// tells when key is released so no infinite restart looping
void keyReleased(){
 if(key=='r'){
   gameState = 0;
   //chose a random number for the maze we are going to use. Increases for more mazes
   randomNumber = int(random(3));
 }
}

        
