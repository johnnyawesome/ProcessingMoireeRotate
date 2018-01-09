class grid{
  
  int gridDistanceX, gridDistanceY;

  grid(int x, int y){ 
   
    gridDistanceX = x;
    gridDistanceY = y;
  }
   
  void displayGridVert(){
    
    stroke(255);
    line(gridDistanceX,gridDistanceY,width,gridDistanceY);
  }
  void displayGridHor(){
    
    stroke(255);
    line(gridDistanceX,0,gridDistanceX,height);
  }
}