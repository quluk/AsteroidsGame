Spaceship bob = new Spaceship(); 
Star[] starry = new Star[100];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < starry.length; i++)
  starry[i] = new Star();
}
public void draw() 
{
  background(0);
  bob.show(); 
  for(int i = 0; i < starry.length; i++)
  starry[i].show();
        bob.move();
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
        if (key == 'k' || key == 'K'){
      bob.hyperspace();
    }
    }
    
}
