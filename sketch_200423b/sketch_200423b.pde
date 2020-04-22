PFont D2font;
void setup()
{
  size(1000,500);
  textSize(30);
  D2font = createFont("D2Coding",80);
  textFont(D2font);
}
float i[]={1.0,2.0,3.0,4.0,5.0};
String hello[]={"안","녕","하","세","요"};
void draw()
{
  background(0);
  for(int j=0;j<5;j++)
  {
    text(hello[j],250+j*100,250+50*cos(i[j])); i[j]=i[j]+0.05;
  }
}
