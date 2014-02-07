class Planet
{
  private String name;
  private int distanceFromSun;
  private float airDensity;
  private float gravitationalPull;
  private float escapeVelocity;

  public Planet(String name, int distanceFromSun, float airDensity, float gravitationalPull, float escapeVelocity)
  {
    //i think this is the right way round but it the stuff might have to switch sides of the equals sign

    this.name=name;
    this.distanceFromSun=distanceFromSun;
    this.airDensity=airDensity;
    this.gravitationalPull=gravitationalPull;
    this.escapeVelocity=escapeVelocity;
  }
  
  public String getName()
  {
    return name;
  }
  
  public int getDistanceFromSun()
  {
    return distanceFromSun;
  }
  
  public float getAirDensity()
  {
    return airDensity;
  }
  
  public float getGravitationalPull()
  {
    return gravitationalPull;
  }
  
  public float getEscapeVelocity()
  {
    return escapeVelocity;
  }
  
  public void display()
  {
    //might not be needed, depends on how we handle stuffs 
  }
  
}

