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
  loadData();
}

void loadData()
{
  
  String[] stars = loadStrings("HabHYG15ly.csv");
  
  for(int i = 1; i < stars.length; i++)
  {
  
      Star star = new Star(stars[i]);
      starArray.add(star);
  
  }
  
}

// Delcar variables
int border;
float lineWidth = height/2;
int mousePosX1 = 0;
int mousePosY1 = 0;
int mousePosX2 = 0;
int mousePosY2 = 0;
boolean mouseClicked = false;
 
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
  //float starX = starArray.get(0).Xg;
  //float starY = starArray.get(37).Yg;
  
    for (int i = 0; i<starArray.size() ; i++)
  {
    // Map the position of the stars with repsect to the size of the grid
    float x = map(starArray.get(i).Xg,-5,5, 0 + border,width);
    float y = map(starArray.get(i).Yg, -5,5, 0 , height + border);
    fill(255,0,0);
    ellipse(x,y,10,10);
    // allgin Text
    textAlign(LEFT);
    textAlign(CENTER, BOTTOM);
    text(starArray.get(i).DisplayName,x,y);
  
  }
}

// tried to get mouse click funtion working with two positon of mouseX and mouseY
void mouseClicked()
{
   

    int mousePosX1 = mouseX;
    int mousePosY1 = mouseY;
    
    mouseClicked = true;
    
    if (!mouseClicked)
    {
    
    int mousePosX2 = mouseX;
    int mousePosY2 = mouseY;


      

    }
    
    
    
}


void draw()
{

  drawGrid();
  plotStar();
line(mousePosX1,mousePosY1,mousePosX2,mousePosY2);

}