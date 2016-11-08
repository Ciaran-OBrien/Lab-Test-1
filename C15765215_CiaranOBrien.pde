/*
Name: Ciaraán O'Brien
 Student Number:  C15765215
 Date: 08/11/16
 Lab Test 1
 */

void setup()
{
  size(500, 500);
  background(0);
}

float border;
float lineWidth = height/2;

void drawGrid()
{
  // Set the border that holds the grid values to be 10% of the window size
  border = width * 0.1f;



  // Draw grid
  strokeWeight(1);
  stroke (255, 105, 180);

  for (int i = 1; i < width; i++)
  {
    
    //float x1 = border + ((i - 1) * lineWidth);
    //float x2 = border + (i * lineWidth);
    
    // line(x1, x2, height - border, width - border);
  
  }
  //line(border, height-border, height - border, width - border);


for(int i=0; i<width; i+=lineWidth){
   line(i,0,i,height);
 }
 for(int w=0; w<height; w+=lineWidth){
   line(0,w,width,w);
 }
}
void draw()
{

  drawGrid();
}