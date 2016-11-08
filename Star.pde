class Star
{

  int hab;
  String DisplayName;
  float Distance;
  float Xg;
  float Yg;
  float Zg;
  float AbsMag;

  Star(String data)
  {  
    // Split each line of file at coma
    String[] parts = data.split(",");
      
    // Assign past of the data to variables
    //hab = Integer.parseInt(parts[2]);
    DisplayName = parts[3];
    Distance = Float.parseFloat(parts[12]);
    Xg = Float.parseFloat(parts[13]);
    Yg = Float.parseFloat(parts[14]);
    Zg = Float.parseFloat(parts[15]);
    AbsMag = Float.parseFloat(parts[16]);
    
    
  }



}