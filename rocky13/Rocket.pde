class Rocket
{
  private float fuel;
  private String model;
  private float speed;
  private float rateOfConsumption;
  private PImage rocketImage;
  
  public Rocket()
  {
   //initialize above variables here either through params or direct 
   
  }
  
  //return model val
  public String getModel()
  {
    return model;
  }
  
  //return fuel val
  public float getFuel()
  {
    return fuel;
  }
  
  //return speed val
  public float getSpeed()
  {
   return speed;
  }
  
  //return rateOfConsumption val
  public float getRateOfConsumption()
  {
    return rateOfConsumption;
  }
  
  //set model val
  public void setModel(String temp)
  {
    model=temp;
  }
  
  //set fuel val
  public void setFuel(float temp)
  {
    fuel=temp;
  }
  
  //set speed val
  public void setSpeed(float temp)
  {
    speed=temp;
  }
  
  //set rateOfConsumption val
  public void setRateOfConsumption(float temp)
  {
    rateOfConsumption=temp;
  }
  
  //display rocket
  public void display()
  {
   //display rocket here 
  }
  
}//end Rocket class
