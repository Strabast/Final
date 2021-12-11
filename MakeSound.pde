import themidibus.*;

class MakeSound
{
  int red,blue,green;
  int channel = 0;
  int pitch;
  int velocity = 200;
  MidiBus myBus;
  
  MakeSound(int r, int g, int b)
  {
    red = r;
    green = g;
    blue = b;
    myBus = new MidiBus(this, -1, 3);
    MidiBus.list();
  }

  void update()
  {
    if(mouseY >= 300){
      if(mousePressed && mouseX >= 0 && mouseX <= 100)
      {
        red = 255;
        green = 0;
        blue = 0;
        pitch = 50;
        myBus.sendNoteOn(channel, pitch, velocity);
      }
      else if(mousePressed && mouseX > 100 && mouseX <= 200)
      {
        red = 255;
        green = 165;
        blue = 0;
        pitch = 52;
        myBus.sendNoteOn(channel, pitch, velocity);
      }
      else if(mousePressed && mouseX > 200 && mouseX <= 300)
      {
        red = 255;
        green = 255;
        blue = 0;
        pitch = 54;
        myBus.sendNoteOn(channel, pitch, velocity);
      }
      else if(mousePressed && mouseX > 300 && mouseX <= 400)
      {
        red = 0;
        green = 255;
        blue = 0;
        pitch = 56;
        myBus.sendNoteOn(channel, pitch, velocity);
      }
      else if(mousePressed && mouseX > 400 && mouseX <= 500)
      {
        red = 0;
        green = 0;
        blue = 255;
        pitch = 58;
        myBus.sendNoteOn(channel, pitch, velocity);
      }
      else if(mousePressed && mouseX > 500 && mouseX <= 600)
      {
        red = 255;
        green = 0;
        blue = 255;
        pitch = 60;
        myBus.sendNoteOn(channel, pitch, velocity);
      }
    }
  }
  
  void draw(){
    background(red,green,blue);
  }
  
  void run(){
    update();
    draw();
  }
}
