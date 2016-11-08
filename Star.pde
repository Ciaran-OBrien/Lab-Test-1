class Star
{

  int HabHyg;
  int hab;
  String description;

  Star(String line)
  {  
    // Split each line of file at coma
    String[] parts = line.split(",");
     
    HabHyg = Integer.parseInt(parts[0]);
    hab = Integer.parseInt(parts[2]);
    description = parts[3];
    
    
  }



}