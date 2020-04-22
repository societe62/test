void setup()
{
  size(500,500);
}
void draw()
{
  strokeWeight(keyStroke);
  if(mousePressed)
  {
   line(pmouseX,pmouseY,mouseX,mouseY); 
  }
  keySet();
}
int keyColor=1;
int keyStroke=1;
void keyPressed()
{
  if(key == ' ') background(0);
  if(key==CODED)
  {
    if(keyCode == UP) keyColor++;
    if(keyCode == DOWN) keyColor--;
    if(keyCode == RIGHT) keyStroke++;
    if(keyCode == LEFT) keyStroke--;
  } 
  if(keyColor>3) keyColor=1;
  if(keyColor<1) keyColor=3;
  if(keyStroke<1) keyStroke=1;
}
void keySet()
{
  if(keyColor==1) stroke(255,0,0);
  if(keyColor==2) stroke(0,255,0);
  if(keyColor==3) stroke(0,0,255);
}
