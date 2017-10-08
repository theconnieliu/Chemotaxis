//declare bacteria variables here 
 Bacteria [] bob;
 void setup()   
 {     
   //initialize bacteria variables here  
   size(500,700);
   bob = new Bacteria[20];
   for(int i = 0; i < bob.length; i++)
   {
     bob[i] = new Bacteria();
   }
 }   
 
 void draw()   
 {    
   //move and show the bacteria
   background(0);
   for(int i = 0; i < bob.length; i++){
     bob[i].move();
     bob[i].show();
   }
 }  
 class Bacteria    
 {
    int myX, myY, myColor;
   Bacteria()
   {
     myX = width/2;
     myY = height/2;
     myColor = (int)(Math.random()*255);
   }
   void move()
   {
     myX = myX + (int)(Math.random()*9)-4;
     myY = myY + (int)(Math.random()*9)-4;
   }
   void show()
   {
     noStroke();
     fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     ellipse(myX, myY, (int)(Math.random()*30), (int)(Math.random()*20));
   }
  
 }      