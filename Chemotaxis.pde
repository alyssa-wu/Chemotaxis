Bacteria bact = new Bacteria(); //declare bacteria variables here   
 void setup()   
 {     
   size(500,500);
   background(150);//initialize bacteria variables here   
 }   
 
 
 void draw()   
 {    
   background(150);
   bact.show();//move and show the bacteria   
   bact.move();
 }  
 
 
 class Bacteria    
 {     
  int myX;
  int myY;
  int myColor;
  Bacteria()
  {
     //myX = (int)(Math.random()*500);
     //myY = (int)(Math.random()*50)+350;
     myX = mouseX;
     myY = mouseY;
     myColor = color((int)(Math.random()*500), (int)(Math.random()*500), (int)(Math.random()*500));
  }
  void show()
  {
    fill(myColor,70);
    ellipse(myX, myY, 50, 50);
  }
  void move()
  {
    myX = mouseX + (int)(Math.random()*5)-2;
    myY = mouseY + (int)(Math.random()*5)-2;
  }
 }    
