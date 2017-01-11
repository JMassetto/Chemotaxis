Bacteria [] colony;
void setup()   
{     
  size(600,600);
  background(180,180,180);
  colony = new Bacteria[15];
  for(int row = 0; row < colony.length; row++){
    colony[row] = new Bacteria();
  }
}   
void draw()   
{    
  background(180,180,180);
  for(int num = 0; num < colony.length; num++){
    colony[num].show();
    colony[num].move();
  }
}  
class Bacteria    
{
  int x, y, size;
  Bacteria(){
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    size = (int)((Math.random()*10)+30);
  }
  void show(){
    fill(random(255),random(255),random(255));
    ellipse(x,y,size,size);
  }
  void move(){
    if(mouseX > x && mouseY > y){
      x+=(int)(Math.random()*10)-2;
      y+=(int)(Math.random()*10)-2;
    }
    else if(mouseX < x && mouseY < y){
      x-=(int)(Math.random()*10)-2;
      y-=(int)(Math.random()*10)-2;
    }
    else if(mouseX < x && mouseY > y){
      x-=(int)(Math.random()*10)-2;
      y+=(int)(Math.random()*10)-2;
    }
    else if(mouseX > x && mouseY < y){
      x+=(int)(Math.random()*10)-2;
      y-=(int)(Math.random()*10)-2;
    }
    else{
      x+=(int)(Math.random()*7)-1;
      y+=(int)(Math.random()*7)-1;
    }
  }
} 
