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

int counter = 0;
int frames = 3; 
int currframe = 0;
PImage background;
PImage Sprite[] = new PImage[3];



void draw()
{
  
  image(background,0,0);
  
 
  base.display();
 
 image(Sprite[counter], width/2, 500);
 delay(130);
 counter = ++counter % Sprite.length;
}
    
  