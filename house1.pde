void setup(){
  size(400,400);
  background(230,250,255);
  house(200,200,100);
}

void house(float x, float y, float s){
  fill(255,200,200);
  quad(x-85,y,x-85,y+70,x+85,y+70,x+85,y);  //wall
  
  fill(20,200,250);
  quad(x-120,y,x-60,y-70,x+60,y-70,x+120,y);  //roof
  
  fill(100,250,250);
  square(x-70,y+20,0.3*s);
  line(x-55,y+20,x-55,y+50);
  line(x-70,y+35,x-40,y+35);  //window
  
  fill(255,100,0);
  rect(x+30,y+20,0.35*s,0.5*s);  //door
  
  fill(100);
  rect(x-50,y-100,0.15*s,0.3*s);  //chimney
  
  fill(255,150,0);
  square(x-201,y+70,4*s); //ground
  
}
