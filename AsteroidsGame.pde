Spaceship bob = new Spaceship(); 
Star[] starry = new Star[100];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets= new ArrayList <Bullet>();
Bullet f=new Bullet(bob);
public void setup() 
{
  size(500,500);
  for(int i = 0; i < starry.length; i++)
  starry[i] = new Star();
  for(int i=0; i<15;i++){
    Asteroid rock= new Asteroid();
    rocks.add(rock);
  }
}
public void draw() 
{
 background(0);
 f.move();
   //bullets.accelerate(1);
 f.show();
 for(int i=0;i<bullets.size();i++){
   bullets.get(i).move();
  bullets.get(i).accelerate(0.1);
   bullets.get(i).show();
 }
 //bullets checker function
 for(int i=0;i<bullets.size();i++){
      if(bullets.get(i).getMyCenterX()>=498){
   bullets.remove(i);
   break;
      }
          if(bullets.get(i).getMyCenterY()<=2){
   bullets.remove(i);
   break;
         }
   for(int t=0; t<rocks.size();t++){
     float y =dist( (float)(bullets.get(i).getMyCenterX()), (float)(bullets.get(i).getMyCenterY()), (float)(rocks.get(t).getmyCenterX()), (float)(rocks.get(t).getmyCenterY()));
     if(y<20){
       rocks.remove(t);
       bullets.remove(i);
       break;
   }
 }
 }
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

 if(rocks.size()<7){
   for(int i=0; i<Math.random()*4;i++){
    Asteroid rock= new Asteroid();
   rocks.add(rock);
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
    
    if(key=='p' ){
      Bullet nbull= new Bullet(bob);
      bullets.add(nbull);
    }
    }
    
