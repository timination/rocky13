class Menu
{
  private PImage[] button;

  private PVector[] coord;
  
  //think of these at unique menu button IDs to identify which button was clicked on menu
  private static final int _RESUME=0;
  private static final int _EXIT=1;
  ;
  

  public Menu()
  {
    //init image array here
    button = new PImage[2];
    coord = new PVector[2];
    
    
    button[0]= loadImage("btn_example.jpg");
    button[1]= loadImage("btn_example_2.jpg");
    coord[0] = new PVector(100,100);
    coord[1] = new PVector(100,200);
  }

  public void display()
  {
    //build and display menu here
    for (int i=0; i<button.length;i++)
    {
     image(button[i], coord[i].x, coord[i].y); 
    }
  }

  public int isClicked(int x, int y)
  {
    for (int i=0; i<button.length;i++)
    {
      if(x>=coord[i].x && x <= (coord[i].x+button[i].width) && y >= coord[i].y && y <= (coord[i].y+button[i].height) )
      {
        return (i);
        
      }
    }
    return -1;
  }
}

