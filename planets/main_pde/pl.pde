final float G =0.00001;
class pl
{
  float mass,radius;
  float x,y,vx,vy,ax,ay;
  float Gfx,Gfy;
  pl(float x,float y,float mass,float vx,float vy,float ax,float ay,float radius)
  {
    this.mass=mass;
    this.x=x;
    this.y=y;
    this.vx=vx;
    this.vy=vy;
    this.ax=ax;
    this.ay=ay;
    this.radius=radius;
    
  }
  void appF(pl p)
  {
    float d=dist(x,y,0,p.x,p.y,0);
    float Gf=-(G*mass*p.mass)/(d*d);
    Gfx=Gf*(x-p.x)/d;
     Gfy=Gf*(y-p.y)/d;
    ax=Gfx/mass;
    ay=Gfy/mass;
    vx+=ax;
    vy+=ay;
    x+=vx;
    y+=vy;
  }
  void thrust()
  {
    ax+=Gfy*0.1;
    ay+=Gfx*0.1;
     vx+=ax;
    vy+=ay;
  }
  
  void draw()
  {
    ellipse(x,y,this.radius,this.radius);
  }
}


  
  
