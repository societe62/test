PGraphics pg;        //pg 변수를 생성
PImage window;          //창틀과 산의 이미지 출력
PImage mountain;
rain[] drops = new rain[1000];      //빗물의 총 개수      
void setup()
{
  size(800,500);
  stroke(5);
  for(int i=0; i<drops.length;i++)       //총 개수만큼 새로운 객체를 생성한다
  {
    drops[i] = new rain();
  }
  window = loadImage("Window.png");
  mountain = loadImage("Mountain.jpg");
  pg = createGraphics(width,height);         //pgraphics는 포토샵의 레이어처럼 사용할 수 있다
  pg.beginDraw();
  pg.image(mountain,0,0);
  pg.endDraw();
}
void draw()
{
  background(230,230,250);
  image(pg,70,20);                         //출력
  for(int i=0; i<drops.length;i++)
  {                                    //빗물이 떨어지는 함수와 빗물의 현재 위치를
    drops[i].fall();                  // 출력하는 함수
    drops[i].update();
  }
  image(window,0,0);                    //출력
}
