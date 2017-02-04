import processing.sound.*;

Stage base = new Stage(0,700);
Tag tag =  new Tag(100,100);


void setup()
{
  fullScreen();
  background = loadImage("Stage1.jpg");
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
  
  
  frameRate(60);
  
  Music = new SoundFile(this, "Threshold.mp3");
  Music.loop();

}
boolean direction = false;
boolean directiondes = false;
float yaxis = 549;
float axis;
float desyaxis = 200;
float desaxis = width;
int counter = 0;
int frames = 3; 
PImage background;
PImage Sprite[] = new PImage[3];
PImage SpriteRev[] = new PImage[3];
PImage Des[] = new PImage[3];
PImage DesRev[] = new PImage[3];
SoundFile Music;


void draw()
{
  
  image(background,0,0);
  
 
  base.display();
   spriteDraw();
  
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
  

 
}
void keyPressed()
{
  if (key == CODED) 
  {
    if (keyCode == RIGHT) 
    {
      axis = axis+18;
      direction = false;
    }
    
    if (keyCode == LEFT) 
    {
      axis = axis-18;
      direction = true;
     
    }
    if(keyCode == UP)
     {
         yaxis = yaxis-250;
          
         
     }
  }
     
    if (key == 'd'|| key == 'D') 
    {
      desaxis = desaxis+18;
      directiondes = true;
    }
    
    if (key == 'a' || key == 'A') 
    {
      desaxis = desaxis-18;
      directiondes = false;
     
    }
    if(key == 'w' || key == 'B')
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