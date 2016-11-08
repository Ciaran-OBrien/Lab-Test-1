/*
Name: Ciaraán O'Brien
 Student Number:  C15765215
 Date: 08/11/16
 Lab Test 1
 */

ArrayList <Star> starArray = new ArrayList<Star>();

void setup()
{
  size(500, 500);
  background(0);
}

void loadData()
{
  
  String[] stars = loadStrings("HabHYG15ly.csv");
  
  for(int i = 0; i < stars.length; i++)
  {
  
      Star star = new Star(stars[i]);
      starArray.add(star);
  
  }
  
}

int border;
float lineWidth = height/2;

void drawGrid()
{
  // Set the border that holds the grid values to be 10% of the window size
  border = 50;



  // Draw grid
  strokeWeight(1);
  stroke (255, 105, 180);

for(int i=border; i <=width; i+=lineWidth){
   
  line(i,border,i,height);
 }
 for(int w=border; w <= height; w+=lineWidth){
 line(border,w,width,w);
 }
}

void plotStar()
{
  fill(255,0,0);
  ellipse(200,200,10,10);

}

void draw()
{

  drawGrid();
  plotStar();
}