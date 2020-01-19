pl ISROsat,earth,moon;
boolean b=false;
void keyPressed()
{
  if(key=='w')
  {
    b=true;}
    
  ///}ISROsat.thrust();
}
void keyReleased()
{
  if(key=='w')
  b=false;
}

void setup()
{
  ISROsat=new pl(800,350,1000,3,0,0,0,18);
  earth=new pl(800,600,1000000000,0,0,0,0,50);
 moon=new pl(1200,300,1000000,2.2,2.2,0,0,30);
  fullScreen();
  frameRate(120);
}
float y=0;
void draw()
{
  background(0);
  ISROsat.appF(earth);
  earth.appF(ISROsat);
  moon.appF(ISROsat);
 moon.appF(earth);
  ISROsat.appF(moon);
  earth.appF(moon);
 ISROsat.draw();
 earth.draw();
 moon.draw();
 if(b)ISROsat.thrust();
 
 
}
