class Star //note that this class does NOT extend Floater
{
  private int x, y, size;
  public Star(){
    x=(int)(Math.random()*500);
    y=(int)(Math.random()*500);
    size=2;
  }
  public void show(){

    ellipse(x,y,size,size);
  }
}
