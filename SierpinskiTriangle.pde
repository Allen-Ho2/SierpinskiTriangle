public void setup(){
  size(600,600);
  background(255,50,145);
}
public void draw(){
  sierpinski(150,400,(int)(Math.random()*300));
}
public void sierpinski(int x, int y, int len){
  if(len<=5){
    triangle(x,y, x+len/2, y-len, x+len, y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
