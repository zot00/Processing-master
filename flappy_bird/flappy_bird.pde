    PImage me;
    PImage pill;
    int gravity = 1;
    int yvel = 1;
    int y = 400;
    int h = (int) random(100, 600);
    float rnum = (float) mouseX + mouseY;
    int px = 900;
void setup(){
  size(900, 1600);
}
void draw(){
  background(0,0,255);
    y+=yvel;
  yvel+=gravity;
  me = loadImage("hooh.png");
  me.resize(100, 100);
  image(me, 0, y);
   rotate(rnum);
  pill = loadImage("pillar.jpeg");
  pill.resize(100, h);
  image(pill, px, 900);
  image(pill, px, 0);
  px-=30;
}
void mouseClicked(){
 yvel=-15; 
}