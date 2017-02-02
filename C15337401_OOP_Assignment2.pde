Stage base = new Stage(0,700);

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
  frameRate(60);
  
  

}
boolean direction = false;
float yaxis = 549;
float axis;
int counter = 0;
int frames = 3; 
int currframe = 0;
PImage background;
PImage Sprite[] = new PImage[3];
PImage SpriteRev[] = new PImage[3];



void draw()
{
  
  image(background,0,0);
  
 
  base.display();
   spriteDraw();
  
  yaxis = yaxis+50;
  if(0<=axis && axis>=width&& yaxis<=550)
  {
    yaxis = yaxis+2;
    
  }
  else if((width/8)<= axis && axis >=(width/8)+400 && yaxis<= 400)
  {
    yaxis = 400;
  }
  else
  {
    yaxis = 550;
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
         yaxis = yaxis-200;
          
         
     }
 
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
   delay(130);
   counter = ++counter % Sprite.length;
    
  }
}