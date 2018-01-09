grid g;

int gridSizeX = 50;
int gridSizeY = 50;
int iterations = 0;

int rotation = 45;
int iterationLimit = 1;


grid[] gridLines = new grid[1000];

void setup(){
  
  background(0);
  stroke(255);
  
  size(900,900);
}


void draw(){
  
  if(iterations < iterationLimit){
     drawGrid();
     rotation += 2;
  }
  else{
   noLoop(); 
  }

  
}


void drawGrid(){
 
  //######## GRID ########  
  
  //Horizontal Lines
  for(int i = gridSizeY; i < height; i += gridSizeY){
    
    gridLines[i] = new grid(0, i);
    gridLines[i].displayGridVert();
  }
  
  //Vertical Lines
  for(int i = gridSizeX; i < width; i += gridSizeX){
    
    gridLines[i] = new grid(i, 0);
    gridLines[i].displayGridHor();
  }
  
  //######## GRID ROTATED ######## 
  for(int i = gridSizeX; i < width; i += gridSizeX){    
    pushMatrix();
    translate(height/2, - height/4);
    rotate(radians(rotation));
    gridLines[i].displayGridHor();
    popMatrix();
  }
  
  
  //for(int i = gridSizeY; i < height; i += gridSizeY){
    
  //  pushMatrix();
  //  translate(width + width/4, height - height / 2);
  //  rotate(radians(135));
  //  gridLines[i].displayGridHor();
  //  popMatrix();
  //}
  
  
}