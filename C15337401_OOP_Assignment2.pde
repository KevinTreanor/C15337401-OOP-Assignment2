import processing.sound.*;

Stage base = new Stage(0,700);
Tag tag =  new Tag(100,100);
Powerup orb = new Powerup(random(width),700);


void setup()
{
  fullScreen();
  background[0] = loadImage("Stage1.jpg");
  background[1]= loadImage("Stage2.jpg");
  background[2] = loadImage("Stage3.jpg");
  Sprite[0] = loadImage("sprite1.png");
  Sprite[1] = loadImage("sprite2.png");
  Sprite[2] = loadImage("sprite3.png");
  SpriteRev[0] = loadImage("sprite4.png");
  SpriteRev[1] = loadImage("sprite5.png");
  SpriteRev[2] = loadImage("sprite6.png");
  Des[0] = loadImage("Des1.png");
  Des[1] = loadImage("Des2.png");
  Des[2] = loadImage("Des3.png");
  DesRev[0] = loadImage("Des4.png");
  DesRev[1] = loadImage("Des5.png");
  DesRev[2] = loadImage("Des6.png");
  smooth();
  
  frameRate(144);
  
  Music = new SoundFile(this, "Threshold.mp3");
  Music.loop();

}
boolean direction = false;
boolean directiondes = false;
boolean[] keys = new boolean[1000]; 


float yaxis = 549;
float axis = 2;
float desyaxis = 549;
float desaxis = 1250;
int counter = 0;
int frames = 3; 
int state =0;
int Score1 =0;
int Score2  = 0;
int back_num = 0;

final int MAIN_MENU = 0;
final int GAME = 1;
final int STAGE_MENU = 2;
final int HELP_MENU = 3;

PImage background[]  = new PImage[3];
PImage Sprite[] = new PImage[3];
PImage SpriteRev[] = new PImage[3];
PImage Des[] = new PImage[3];
PImage DesRev[] = new PImage[3];
PFont font;
SoundFile Music;



void draw()
{
   switch(state) {
  case MAIN_MENU:
  
  font = createFont("Halo.ttf",1);
  textFont(font);
  background(255);
  textSize(70);
  text("CHASE",(width/2-180),100);
  textSize(40);
  fill(255);
  rect(width/2-150,height/4,300,100);
  fill(0);
  text("PLAY", (width/2-70),(height/4)+70);
  if((width/2)-150<=mouseX && mouseX <= width/2+150 && height/4 <= mouseY && mouseY <= height/4+100)
  {
    state=1;
  }
  
  fill(255);
  rect(width/2-150,height/2,300,100);
  fill(0);
  text("STAGE", (width/2-70),(height/2)+70);
  if((width/2)-150<=mouseX && mouseX <= width/2+150 && height/2 <= mouseY && mouseY <= height/2+100)
  {
    state=2;
  }
  fill(255);
  rect(width/2-150,height*3/4,300,100);
  fill(0);
  text("HELP", (width/2-70),(height*3/4)+70);
  if((width/2)-150<=mouseX && mouseX <= width/2+150 && height*3/4 <= mouseY && mouseY <= height*3/4+100)
  {
    state=3;
  }
  break;
  
  case STAGE_MENU:
  background(255);
  noFill();
  rect(100,height/2,300,100);
  text("Castle",150,height/2);
  
  if(100<=mouseX && mouseX <= 400 && height/2 <= mouseY && mouseY <= height/2+100)
  {
    
    back_num = 0;

  }
  rect(500,height/2,300,100);
  text("Shore",550,height/2);
  if(500<=mouseX && mouseX <= 800 && height/2 <= mouseY && mouseY <= height/2+100)
  {
    background(background[1]);
    back_num = 1;
    
  }
  
  rect(900,height/2,300,100);
  text("Urban",950,height/2);
  if(900<=mouseX && mouseX <= 1200 && height/2 <= mouseY && mouseY <= height/2+100)
  {
    background(background[2]);
    back_num = 2;
    
  }
  text("Back",100,700);
  if(100<=mouseX && mouseX <= 200 && 700 <= mouseY && mouseY <= 710)
  {
    state = 0;
    
  }
  break;
  
  case HELP_MENU:
  background(255);
  textSize(80);
  text("Controls",300,100);
  textSize(40);
  text("Right: Right arrow/ d",100,200);
  text("Left: Left arrow/ a",100,300);
  text("Jump: Up arrow/ w",100,400);
  text("Tag: Down arrow/ s",100,500);
  
  text("Back",100,700);
  if(100<=mouseX && mouseX <= 200 && 700 <= mouseY && mouseY <= 710)
  {
    state = 0;
    
  }
  break;
  
  case GAME:
  
  image(background[back_num],0,0);
  tag.display();
  
  strokeWeight(1);
  fill(0,125,125,50);
  stroke(0);
  
  base.display();
  spriteDraw();
  
  fill(100,255,255);
  textSize(20);
  text("Score1: " + Score1,100,100);
  text("Score2: " + Score2,1200,100);
  
 //Keeps players inside stage
 if(axis>=1350)
 {
   axis = 1;
 }
 
 if(axis<=0)
 {
   axis = 1349;
 }
 if(desaxis>=1350)
 {
   desaxis = 1;
 }
 
 if(desaxis<=0)
 {
   desaxis = 1349;
 }
 
 
  desyaxis = desyaxis+50;
  yaxis = yaxis+50;
  if(0<=axis && axis>=width&& yaxis<=550)
  {
    yaxis = yaxis+2;
    
  }
  else if((width/8)<= axis && axis <=(width/8)+400 && yaxis<= 550)
  {
    yaxis = 350;
  }
  else if((width-width/8)-400<= axis && axis <=(width-width/8) && yaxis<= 550)
  {
    yaxis = 350;
  }
  else if((width/2)-100<=axis && axis <= (width/2)+100 && yaxis <=350) 
  {
    yaxis = 150;
  }
  else
  {
    yaxis = 550;
  }
  
  if(0<=desaxis && desaxis>=width&& desyaxis<=550)
  {
    desyaxis = desyaxis+2;
    
  }
  else if((width/8)<= desaxis && desaxis <=(width/8)+400 && desyaxis<= 550)
  {
    desyaxis = 350;
  }
  else if((width-width/8)-400<= desaxis && desaxis <=(width-width/8) && desyaxis<= 550)
  {
    desyaxis = 350;
  }
  else if((width/2)-100<=desaxis && desaxis <= (width/2)+100 && desyaxis <=350) 
  {
    desyaxis = 150;
  }
  else
  {
    desyaxis = 550;
  }
  textSize(30);
  text("Main Menu",100,750);
  if(100<=mouseX && mouseX <= 250 && 750 <= mouseY && mouseY <= 765)
  {
    state = 0;
    
  }
  
  break;
   }

}

void keyPressed()
{
     
     if (keyCode == RIGHT)  keys[0] = true;
  if (keyCode == LEFT)  keys[1] = true;
  if (keyCode == UP)  keys[2] = true;
  if (key == 'd')  keys[3] = true;
  if (key == 'a')  keys[4] = true;
  if (key == 'w')  keys[5] = true;
     controls();
     
     
}
void keyReleased()
{
  if (keyCode == RIGHT)  keys[0] = false;
  if (keyCode == LEFT)  keys[1] = false;
  if (keyCode == UP)  keys[2] = false;
  if (key == 'd')  keys[3] = false;
  if (key == 'a')  keys[4] = false;
  if (key == 'w')  keys[5] = false;
}
  
void controls()
{
   
  
    if (keys[0] == true) 
    {
     // translate(axis,12);
      axis = axis+12;
      direction = false;
    }
    
    if (keys[1] == true) 
    {
      axis = axis-12;
      direction = true;
     
    }
    if(keys[2] == true)
     {
         yaxis = yaxis-250;
          
         
     }
  
     
    if (keys[3] == true) 
    {
      desaxis = desaxis+12;
      directiondes = true;
    }
    
    if (keys[4] == true) 
    {
      desaxis = desaxis-12;
      directiondes = false;
     
    }
    if(keys[5] == true)
     {
         desyaxis = desyaxis-250;
          
         
     }
}
  

  
void spriteDraw()
{
  if(direction == false)
  {
  image(Sprite[counter], axis, yaxis);
   delay(125);
   counter = ++counter % Sprite.length;
  }
  else
  {
     image(SpriteRev[counter], axis, yaxis);
   delay(125);
   counter = ++counter % SpriteRev.length;
    
  }
  
  if(directiondes == false)
  {
  image(Des[counter], desaxis, desyaxis);
   delay(125);
   counter = ++counter % Des.length;
  }
  else
  {
     image(DesRev[counter], desaxis, desyaxis);
   delay(125);
   counter = ++counter % DesRev.length;
    
  }
}