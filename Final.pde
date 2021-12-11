color bgColor = color(0, 0, 0);
MakeSound sound;

void setup(){
  size(600,600,P2D);
  sound = new MakeSound(255,0,0);
}

void draw(){
  background(125);
  sound.run();
  rectMode(CORNER);
  fill(255,0,0);
  rect(0,300,100,300);
  
  fill(255,165,0);
  rect(100,300,100,300);
  
  fill(255,255,0);
  rect(200,300,100,300);
  
  fill(0,255,0);
  rect(300,300,100,300);
 
  fill(0,0,255);
  rect(400,300,100,300);
  
  fill(255,0,255);
  rect(500,300,100,300);
}
