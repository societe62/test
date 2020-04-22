void setup()
{
  size(500,500);
  rectMode(CENTER);          //사각형의 끝부분이아닌 중심으로 설정
}
float f=0;
float x=1;
float a=random(0,255);
float b=random(0,255);
float c=random(0,255);
void draw()
{
  background(0,0,0);
  translate(mouseX,mouseY);
  scale(x);
  rotate(f=f+0.1);
  fill(a,b,c); rect(0,0,50,50); 
  fill(c,b,a); ellipse(0,0,50,50);
}
void mousePressed()
{                                        //클릭할 때 마다 색이 변함
  a=random(0,255);
  b=random(0,255);
  c=random(0,255);
}
void keyPressed()
{
  if(key==CODED)
  {
    if(keyCode==UP)  x+=0.3;               //방향키로 도형의 크기가 커진다
    if(keyCode==DOWN) x-=0.3;
  }
}
