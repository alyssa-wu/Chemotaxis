Bacteria [] bact = new Bacteria[1]; //declare bacteria variables here
int myX;
int myY;
int myColor;

 void setup()   
 {     
   size(500,500);
   background(150);//initialize bacteria variables here
   for(int i = 0; i < bact.length; i++)
   {
    bact[i] = new Bacteria(); 
   }
 }   
 
 
 void draw()   
 {    
   background(150);
   for(int i = 0; i < bact.length; i++)
   {
    bact[i].show();//move and show the bacteria   
    bact[i].move();
   }
   //if (mouseX > myX)
   //  myX = myX + (int)(Math.random()*5)-1;
   //else
   //  myX = myX + (int)(Math.random()*5)-3;
 }  
 
 
 class Bacteria    
 {     
  Bacteria()
  {
     myX = (int)(Math.random()*450)+40;
     myY = (int)(Math.random()*450)+40;
     myColor = color((int)(Math.random()*500), (int)(Math.random()*500), (int)(Math.random()*500));
  }
  void show()
  {
    fill(myColor,70);
    ellipse(myX, myY, 50, 50);
  }
  void move()
  {
    //myX = myX + (int)(Math.random()*5)-2;
    if (mouseX > myX)
     myX = myX + (int)(Math.random()*5)-1;
   else
     myX = myX + (int)(Math.random()*5)-3;
    //myY = myY + (int)(Math.random()*5)-2;
    if (mouseY > myY)
     myY = myY + (int)(Math.random()*5)-1;
   else
     myY = myY + (int)(Math.random()*5)-3;
  }
 }    
