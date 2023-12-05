Spaceship bob = new Spaceship(); 
Star[] starry = new Star[100];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < starry.length; i++)
  starry[i] = new Star();
  for(int i=0; i<10;i++){
    Asteroid rock= new Asteroid();
    rocks.add(rock);
  }
}
public void draw() 
{
  background(0);
  bob.show(); 
  for(int i = 0; i < starry.length; i++)
  starry[i].show();
   bob.move();
 for(int i=0; i<rocks.size();i++){
    
    rocks.get(i).move();
    rocks.get(i).show();
    float d =dist( (float)(bob.getMyCenterX()), (float)(bob.getMyCenterY()), (float)(rocks.get(i).getmyCenterX()), (float)(rocks.get(i).getmyCenterY()));
    if (d < 20){
      rocks.remove(i);
      i--;
    }
 }
}

public void keyPressed() {
   if (keyPressed) {
    if (key == 'w' || key == 'W') {
      bob.accelerate(1);
    }
    if (key == 'd' || key == 'D'){
      bob.turn(5);
    }
        if (key == 'a' || key == 'A'){
      bob.turn(-5);
    }
        if (key == 'h'){
      bob.hyperspace();
    }
    }
    
}
