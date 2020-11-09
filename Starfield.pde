Particle[] star = new Particle[1000];
void setup()
{
 size(600,600);
   for(int i = 0; i < star.length; i++)
  {
    star[i] = new Particle();
    star[0] = new OddballParticle();
  }
}
void draw()
{
  background(0,0,0);
  for(int i = 0; i < star.length; i++)
  {
  star[i].move();
  star[i].show();
  }
}
class Particle
{
  int myColor;
  double myX, myY, myAngle, mySpeed;
  Particle()
  {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myX = myY = 200;
    myAngle = Math.random()*(2*Math.PI);
    mySpeed = Math.random()*10;
  }
  void move()
  {
    myX = (myX + (Math.cos(myAngle)*mySpeed));
    myY = (myY + (Math.sin(myAngle)*mySpeed));
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX,(float)myY,10,10);
  }
}
 class OddballParticle extends Particle
  {
    OddballParticle()
    {
      myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
      myX = myY = 200;
      myAngle = Math.random()*(2*Math.PI);
      mySpeed = Math.random()*8;
    }
    void move()
    {
      myX = (myX + (Math.cos(myAngle)*mySpeed));
      myY = (myY + (Math.sin(myAngle)*mySpeed));
    }
    void show()
    {
      fill(myColor);
      stroke(myColor);
      rect((float)myX,(float)myY,15,15);
    }
  }
