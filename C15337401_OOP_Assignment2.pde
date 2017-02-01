//import gifAnimation.*;
Stage base = new Stage(0,700);

void setup()
{
  fullScreen();
  background = loadImage("Stage1.jpg");
  Sprite[0] = loadImage("sprite1.png");
  Sprite[1] = loadImage("sprite2.png");
  Sprite[2] = loadImage("sprite3.png");
  frameRate(60);
  
  

}
int frames = 3; 
int currframe = 0;
PImage background;
PImage Sprite[] = new PImage[3];



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
  
 
  base.display();
 if(frameCount%5==0)
 {
  image(Sprite[0],width/2,200);
 }
  if(frameCount%10==0)
 {
 image(Sprite[1],width/2,200);
 }
  if(frameCount%15==0)
 {
  image(Sprite[2],width/2,200);
 }
}
    
  