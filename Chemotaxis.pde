Bacteria [] bact = new Bacteria[30]; //declare bacteria variables here
//int myX;
//int myY;
int myColor;

int cColor;
int x3;
int y3;

int score = 0;

Circle [] circ = new Circle[15];

 void setup()   
 {     
   size(500,500);
   background(38, 70, 83); //initialize bacteria variables here
   textSize(16);
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
   background(38, 70, 83);
   noStroke();
   for(int i = 0; i < circ.length; i++)
   {
    circ[i].show(); 
   }
   for(int i = 0; i < bact.length; i++)
   {
    bact[i].show(); //move and show the bacteria   
    bact[i].move();
   }
   if(get(x3,y3) == color(38, 70, 83)) 
   {
    score = score + 0;
   } else if(get(x3,y3) == color(233, 196, 106))
   {
     score++;
   } else
   {
     score--;
   }
   fill(255);
   text("Score: " + score, 25, 475);
   fill(244, 162, 97);
   ellipse(x3,y3,15,15);
   if (mouseX > x3)
     x3 = x3 + (int)(Math.random()*5)-1;
    else
     x3 = x3 + (int)(Math.random()*5)-3;
   if (mouseY > y3)
     y3 = y3 + (int)(Math.random()*5)-1;
    else
     y3 = y3 + (int)(Math.random()*5)-3;
 }  
 
 
 class Bacteria    
 {     
  int myX;
  int myY;
  //int myColor;
  Bacteria()
  {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     myColor = color(42, 157, 143);
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, 20, 20);
  }
  void move()
  {
    myX = myX + (int)(Math.random()*5)-2;
   // if (mouseX > myX)
   //  myX = myX + (int)(Math.random()*5)-1;
   //else
   //  myX = myX + (int)(Math.random()*5)-3;
    myY = myY + (int)(Math.random()*5)-2;
   // if (mouseY > myY)
   //  myY = myY + (int)(Math.random()*5)-1;
   //else
   //  myY = myY + (int)(Math.random()*5)-3;
  }
 }    
 
 
 class Circle
 {
   int cX;
   int cY;
   //int cColor;
   Circle()
   {
     cX = (int)(Math.random()*450)+40;
     cY = (int)(Math.random()*450)+40;
     cColor = color(233, 196, 106);
   }
   void show()
   {
     fill(cColor);
     ellipse(cX,cY,10,10);
   }
 } // end class Circle
 
 
