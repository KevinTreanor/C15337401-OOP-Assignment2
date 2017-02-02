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
 
 if (keyCode == RIGHT)
 { 
   image(Sprite[counter], axis, 550);
   delay(125);
   counter = ++counter % Sprite.length;
   
 }
 
 if (keyCode == LEFT)
 { 
    
   image(SpriteRev[counter], axis, 550);
   delay(130);
   counter = ++counter % Sprite.length;
 }
 
}
void keyPressed()
{
  if (key == CODED) 
  {
    if (keyCode == RIGHT) 
    {
      axis = axis+30;
    }
    
    if (keyCode == LEFT) 
    {
      axis = axis-30;
    }
  }
  
}