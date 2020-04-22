PGraphics pg;
PImage window;
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
  pg = createGraphics(width,height);
  pg.beginDraw();
  pg.image(mountain,0,0);
  pg.endDraw();
}
void draw()
{
  background(230,230,250);
  image(pg,70,20);
  for(int i=0; i<drops.length;i++)
  {                                    //빗물이 떨어지는 함수와 빗물의 현재 위치를
    drops[i].fall();                  // 출력하는 함수
    drops[i].update();
  }
  image(window,0,0);
}
