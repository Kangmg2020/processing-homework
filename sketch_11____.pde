class Character {
  float x;
  float y;
  float dx;
  float dy;
  boolean isMouseControlled;
  
  Character(float startX, float startY, float startDX, float startDY, boolean mouseControlled) {
    x = startX;
    y = startY;
    dx = startDX;
    dy = startDY;
    isMouseControlled = mouseControlled;
  }
  
  void update() {
    if (isMouseControlled) {
      x += (mouseX - x) / 10;
      y += (mouseY - y) / 10;
    } else {
      if( x <=50 && dx<0){  // 좌측 벽 충돌 시
        dx = -dx;
      }
      if( x >=width - 50 && dx>0){  // 우측 벽 충돌 시
        dx = -dx;
      }
      if(y <= 50 && dy<0){//천장 충돌시
        dy = -dy;
      }
      if(y >=height - 50 && dy>0){//바닥 충돌시
        dy = -dy;
      }
      x += dx;
      y += dy;
    }
  }
  
  void display() {
    // 캐릭터의 그리기 코드
    fill(250, 250, 250);
    circle(x, y, 150);
    fill(250, 250, 250);
    float tempX = x - 30;
    float tempY = y - 20;
    circle(tempX, tempY, 50);
    fill(0, 0, 0);
    circle(tempX, tempY, 20);
    tempX += 60;
    fill(250, 250, 250);
    circle(tempX, tempY, 50);
    fill(0, 0, 0);
    circle(tempX, tempY, 20);
    tempX -= 30;
    tempY += 30;
    fill(255, 0, 0);
    circle(tempX, tempY, 30);
    fill(0, 0, 0);
    ellipse(x, y + 50, 50, 30);
    fill(255, 220, 170);
    

  }
}

class Pikachu {
  float x;
  float y;
  float dx;
  float dy;
  float a, b, r, s;

  Pikachu (float startX, float startY, float startDX, float startDY) {
    x = startX;
    y = startY;
    dx = startDX;
    dy = startDY;;
  }
  void update() {
    x += dx;
    y += dy;
  if( x <=50 && dx<0){  // 좌측 벽 충돌 시
    dx = -dx;
  }
  if( x >=width - 50 && dx>0){  // 우측 벽 충돌 시
    dx = -dx;
  }
  if(y <= 50 && dy<0){//천장 충돌시
    dy = -dy;
  }
  if(y >=height - 50 && dy>0){//바닥 충돌시
    dy = -dy;
  }
}
  void display(){  // 피카츄의 좌표, 피카츄의 크기 입력
  int s = 50;
  fill(255,255,0);
  ellipse(x-0.8*s,y-s,s*0.45,s*2);
  ellipse(x+0.8*s,y-s,s*0.45,s*2);
  circle(x,y,2.5*s);
  fill(0,0,0);
  arc(x-s*0.8,y-s*1.5,s*0.38,s*1.05,PI,PI*2);
  arc(x+s*0.8,y-s*1.5,s*0.38,s*1.05,PI,PI*2);
  daeching(s*0.6,s*0.45,s*0.6, x, y);
  fill(255,255,255);  
  daeching(s*0.55,s*0.55,s*0.25, x, y);
  fill(255,0,0);
  daeching(s*0.85,-s*0.55,s*0.5, x, y);
  fill(0,0,0);
  triangle(x-s*0.1,y+s*0.1,x+s*0.1,y+s*0.1,x,y+s*0.2);
  fill(255,255,0);
  bezier(x-s*0.35,y+s*0.5,x-s*0.2,y+s*0.6,x-s*0.1,y+s*0.6,x,y+s*0.5);
  bezier(x+s*0.35,y+s*0.5,x+s*0.2,y+s*0.6,x+s*0.1,y+s*0.6,x,y+s*0.5);
  }
  void daeching(float a,float b,float r, float x, float y){ // 대칭인 원 그리기 
  //(기준 x로 부터의 거리,기준 x로 부터의 거리,원의 크기,기준x, 기준y)
   x=x-a;
   y=y-b;
   circle(x,y,r);
   x=x+a*2;
   circle(x,y,r);
  }
}

class House {
  float x;
  float y;
  float dx;
  float dy;
  boolean isKeyboardControlled;
  
  House(float startX, float startY, float startDX, float startDY, boolean KeyboardControlled) {
    x = startX;
    y = startY;
    dx = startDX;
    dy = startDY;
    isKeyboardControlled = KeyboardControlled;
  }
  
  void update() {
    if (isKeyboardControlled) {
      
      if (key == 'w') {println (key);y -= 4;key = 0;}
      else if (key == 's') {println (key);y += 4; key = 0;}
      else if (key == 'd') {println (key);x += 4;key = 0;}
      else if (key == 'a') {println (key);x -= 4 ;key = 0;}
      else {x=x;y=y;};
      
    }
    else {
      if( x <=50 && dx<0){  // 좌측 벽 충돌 시
        dx = -dx;
      }
      if( x >=width - 50 && dx>0){  // 우측 벽 충돌 시
        dx = -dx;
      }
      if(y <= 50 && dy<0){//천장 충돌시
        dy = -dy;
      }
      if(y >=height - 50 && dy>0){//바닥 충돌시
        dy = -dy;
      }
      x += dx;
      y += dy;
    }
  }
  
  void display() {
    // 캐릭터의 그리기 코드
  fill(255,200,200);
  quad(x-85,y,x-85,y+70,x+85,y+70,x+85,y); 
  fill(20,200,250);
  quad(x-120,y,x-60,y-70,x+60,y-70,x+120,y); 
  fill(100,250,250);
  square(x-70,y+20,30);
  line(x-55,y+20,x-55,y+50);
  line(x-70,y+35,x-40,y+35); 
  fill(255,100,0);
  rect(x+30,y+20,30,50); 
  fill(100);
  rect(x-50,y-100,25,30);
  }
}

int numCharacters = 2;
Character[] characters = new Character[numCharacters];
Pikachu[] Pikachus = new Pikachu[numCharacters];
House[] houses = new House[numCharacters];

void setup() {
  size(1000, 1000);
  background(200, 100, 200);
  
  characters[0] = new Character(250, 100, random(-4,4), random(-4,4), false);
  characters[1] = new Character(400, 300, -0.5, 1.5, true); // 마우스에 따라 움직임
  for (int i = 0; i < numCharacters; i++) {
    Pikachus[i] = new Pikachu(random(width), random(height), random(-4,4), random(-4,4));
  }
  houses[0] = new House (100,300, random(-4,4), random(-4,4), false);
  houses[1] = new House (200, 200, 0, 0, true);
}

void draw() {
  background(255,255, 255);
  
  for (int i = 0; i < numCharacters; i++) {
    characters[i].update();
    characters[i].display();
    Pikachus[i].update();
    Pikachus[i].display();
    houses[i].update();
    houses[i].display();
  }
}
