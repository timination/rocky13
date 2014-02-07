Level level;

void setup() {
size(500,500);
level = new Level();
}

void draw() {
  
 level.display();
 
}

void mouseReleased()
{
 level.handleMenuClick(); 
 level.progress();
}

void keyReleased()
{
 if(key=='p' || key=='P')
 {
  level.pause(); 
 }
}
