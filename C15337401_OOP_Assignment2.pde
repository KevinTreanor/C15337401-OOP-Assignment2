//import gifAnimation.*;
Stage base = new Stage(0,700);

void setup()
{
  fullScreen();
  background = loadImage("Stage1.jpg");
  Sprite = loadImage("Sprite.gif");
  
  

}
int frames = 3; 
int currframe = 0;
PImage background;
PImage Sprite;



void draw()
{
  
  
   /* currframe = (currframe+1) % frames;  // Use % to cycle through frames
  int offset = 0;
  for (int x = -100; x < width; x += sprite[0].width) { 
    image(sprite[(currframe+offset) % frames], x, -20);
    offset+=2;
    image(sprite[(currframe+offset) % frames], x, height/2);
    offset+=2;
    
  }*/
  image(background,0,0);
  image(Sprite,width/2,height/2);
 
  base.display();
 
  
}
    
  