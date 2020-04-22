class rain
{
  float x=random(width);             //모든 변수는 랜덤한 값으로 설정함
  float y=random(-500,-100);
  float z=random(1,3);
  float b=random(1,7);
  float yspeed=random(4,10);
  float ylength=random(10,20);
  void fall()                          //빗물이 떨어지게 만드는 함수
  {
    y=y+yspeed;
    yspeed=yspeed+0.05;
    if(y>=height-5)
    {
      ellipse(x-b,y-b,z,z);                //빗물이 바닥에 닿았을때 작은 동그라미
      ellipse(x+b,y-b,z,z);                //2개로 빗물이 튀는것 처럼 보이게 함
      y = random(-200,-100);               //그리고 위로 올라가서 다시 떨어진다.
      yspeed = random(4,10);              //비가 떨어지는 속도
    }
  }
  void update()                            //빗물의 상태를 업데이트(그리는)함수
  {
    strokeWeight(z);
    stroke(78,43,255);
    line(x,y,x,y+ylength);
  } 
}
