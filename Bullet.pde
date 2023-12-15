class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX=theShip.getMyCenterX();
    myCenterY=theShip.getMyCenterY();
    myPointDirection=theShip.getMyPointDirection();
    myXspeed=theShip.getMyXSpeed();
    myYspeed=theShip.getMyYSpeed();
  }
  public void show(){
    fill(255,0,0);
    ellipse((float)myCenterX,(float)myCenterY,7,7);
  }
      public double getMyCenterX(){
      return myCenterX;
    }
    
    public double getMyCenterY(){
      return myCenterY;
    }
    public double getMyXSpeed(){
      return myXspeed;
    }
        public double getMyYSpeed(){
      return myYspeed;
    }
    public double getMyPointDirection(){
      return myPointDirection;
    }
}
