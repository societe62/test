void setup()
{
  size(500,500);             // 사이즈 500,500
}
void draw()
{
  strokeWeight(keyStroke);
  if(mousePressed)
  {
   line(pmouseX,pmouseY,mouseX,mouseY);   // 마우스가 클릭될때만 선이 그려진다.
  }
  keySet();
}
int keyColor=1;
int keyStroke=1;
void keyPressed()                           //키 입력을 받아오는 함수
{
  if(key == ' ') background(0);
  if(key==CODED)
  {
    if(keyCode == UP) keyColor++;             //위 아래 키를 누르면 그릴때의 색이 달라진다.
    if(keyCode == DOWN) keyColor--;
    if(keyCode == RIGHT) keyStroke++;        // 좌 우 키를 누르면 선의 굵기가 달라진다.
    if(keyCode == LEFT) keyStroke--;
  } 
  if(keyColor>3) keyColor=1;                 // 색은 빨강,파랑,초록 3가지가 존재한다.
  if(keyColor<1) keyColor=3;
  if(keyStroke<1) keyStroke=1;
}
void keySet()                                 // 변수의 값에 따른 색 변화 
{
  if(keyColor==1) stroke(255,0,0);
  if(keyColor==2) stroke(0,255,0);
  if(keyColor==3) stroke(0,0,255);
}
