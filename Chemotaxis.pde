Bacteria [] bact = new Bacteria[1]; //declare bacteria variables here
int myX;
int myY;
int myColor;

Circle [] circ = new Circle[8];

 void setup()   
 {     
   size(500,500);
   background(150);//initialize bacteria variables here
   for(int i = 0; i < bact.length; i++)
   {
    bact[i] = new Bacteria(); 
   }
   for(int i = 0; i < circ.length; i++)
   {
    circ[i] = new Circle(); 
   }
 }   
 
 
 void draw()   
 {    
   background(150);
   //fill(142,72,42);
   //ellipse(200,300,20,20);
   for(int i = 0; i < bact.length; i++)
   {
    bact[i].show();//move and show the bacteria   
    bact[i].move();
   }
   for(int i = 0; i < circ.length; i++)
   {
    circ[i].show(); 
   }
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
    fill(myColor);
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
 
 
 class Circle
 {
   int cX;
   int cY;
   int cColor;
   Circle()
   {
     cX = (int)(Math.random()*450)+40;
     cY = (int)(Math.random()*450)+40;
     cColor = color(104,26,26);
   }
   void show()
   {
     fill(cColor);
     ellipse(cX,cY,20,20);
   }
 } // end class Circle
 
