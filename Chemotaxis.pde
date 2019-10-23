Bacteria [] yes = new Bacteria[100];
int score = 0;
void setup()   
{     
	size(500,500);
  for(int i = 0;i<yes.length;i++){
    yes[i] = new Bacteria(250,250,(int)(Math.random()*255));
  }
}   
void draw()   
{    
  	for(int i = 0; i<yes.length;i++){
      yes[i].show();
      yes[i].move();
  }
  score++;
  if(score>400){
    for(int i = 0;i<yes.length;i++){
      yes[i].opac();
    }
    score = 0;
  }
}  
class Bacteria    
{     
  int mx, my, col; 
  int col2 = (int)(Math.random()*255);
  int col3 = (int)(Math.random()*255);
  Bacteria(int x, int y, int colour){
    mx = x;
    my = y;
    col = (colour);
  }
  Bacteria(int x, int y){
    mx = x;
    my = y;
  }
  void move(){
    mx += (int)(Math.random()*9)-4;
    my += (int)(Math.random()*9)-4;
  }
  void show(){
    fill(col,col2,col3);
    stroke(col,col2,col3);
    ellipse(mx,my,5,5);
  }
  void opac(){
    fill(col,col2,col3,10);
  }
}  
