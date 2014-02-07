class Level
{
  private Physics physics;
  private Rocket rocket;
  private Planet[] planet;
  private Menu menu;
  private int levelId;
  private boolean paused;

  public Level()
  {
    //init above vars here
    physics = new Physics();
    rocket = new Rocket();
    planet = new Planet[1];

    planet[0] = new Planet("Earch", 1, 1.0f, 1.0f, 1.0f);

    menu = new Menu();

    levelId=1;

    paused=true;
  }

  public void display()
  {


    //if sim is paused, show menu. Sim also starts in paused state
    if (paused)
    {
      menu.display();
    }
    else
    {
      //think of this method as draw() in main class
      switch(levelId)
      {
      case 1:
        //level 1 stuff here
        background(255, 0, 0);
        println("lvl1");
        break;

      case 2:
        //level 2 stuff here
        println("lvl2");
        background(0, 255, 0);
        break;

      case 3:
        //level 3 stuff here
        background(0, 0, 255);
        println("lvl3");
        break;

      default:
        //backup stuff here in case of failure
        background(255);
        println("lvl0");
        break;
      }//end switch
    }//end else
  }

  public void progress()
  {
    /* commented out for demo
     if (levelId<planet.length)
     {
     levelId++;
     } 
     else
     {
     //no more levels
     }*/

    if (levelId==3)
      levelId=1;
    else
      levelId++;
  }

  public void setLevel(int temp)
  {
    levelId=temp;
  }

  public int getLevel()
  {
    return levelId;
  }

  public void handleMenuClick()
  {
    //stuff here to handle menu actions, check if mouse click was inside menu btn - call on mouse click event
    if (paused)
    {
      //if mouseX and mouseY are within menu.button[n], call appropriate method in relation to button
      handleMenuAction(menu.isClicked(mouseX, mouseY));
      println(menu.isClicked(mouseX,mouseY));
    }
  }

  private void handleMenuAction(int action)
  {
    switch(action)
    {
    case Menu._RESUME: //note that the case condition accesses the Menu class directly, denoted by the capital M
      paused=false;
      break;
    case Menu._EXIT:
      System.exit(0);
      break;
    }
  }


  public void pause()
  {
    paused=(paused)? false : true;
  }
}

