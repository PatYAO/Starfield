Particle [] bob;
OddballParticle bobby;
//your code here
void setup()
{
  size(500,500);
  bob = new Particle[1000];
  bobby = new OddballParticle();
  noStroke();
  for(int i = 0; i <bob.length; i++){
    bob[i] = new OddballParticle();
  }
  for(int i = 10; i < bob.length; i++){
    bob[i] = new Particle();
  }
}
void draw()
{
  //your code here
  background(0);
  for(int i = 0; i < bob.length; i++){
    bob[i].move();
    bob[i].show();
  }
}
class Particle
{
  //your code here
  double myX,myY,myAngle,mySpeed;
  int myColor,mySize;
  Particle(){
    myX = width/2;
    myY = height/2;
    myAngle = (double)(Math.random() * (2 * Math.PI));
    mySpeed = (double)(Math.random() * 10);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    mySize = 5;
  }
  void move(){
    if(mousePressed == false){
      myX = myX + (Math.cos(myAngle) * mySpeed);
      myY = myY + (Math.sin(myAngle) * mySpeed);
    }
    if(mousePressed == true){
      myX = myX - (Math.cos(myAngle) * (2*mySpeed));
      myY = myY - (Math.sin(myAngle) * (2*mySpeed));
    }
  }
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,mySize,mySize);
  }
}


class OddballParticle extends Particle //inherits from Particle
{
  //your code here
  OddballParticle(){
    myX = width/2;
    myY = height/2;
    myAngle = (double)(Math.random() * (2 * Math.PI));
    mySpeed = (double)(Math.random() * 10);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    mySize = 30;
  }
}
