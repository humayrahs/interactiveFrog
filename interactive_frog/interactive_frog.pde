int xBody, yBody, bodyW, bodyH;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  xBody = width/2;
  yBody = height/2;
  bodyW = 300;      //to maintain aspect ratio keep in 3:2 min 30,20
  bodyH = 200;
}

void draw() {
  
  fill(0, 255, 0);  //green stuff
  //main body spec 30px wide 20px deep
  ellipse(xBody, yBody, bodyW, bodyH);    //base
  ellipse(xBody, yBody, bodyW/2, bodyH/4);     //mouth

  //feet
  ellipse(xBody-(bodyW*0.4), yBody+(bodyH/2), bodyW*0.4, bodyH*0.4);    //foot left
  ellipse(xBody+(bodyW*0.4), yBody+(bodyH/2), bodyW*0.4, bodyH*0.4);   //foot right

  //whites
  fill(255);
  ellipse(xBody-(bodyW*0.33), yBody-(bodyH/2), bodyW*0.30, bodyW*0.30);  //pupil left
  ellipse(xBody+(bodyW*0.33), yBody-(bodyH/2), bodyW*0.30, bodyW*0.30);  //pupil right

  fill(0);    //pupils
  ellipse(xBody-(bodyW*0.33), yBody-(bodyH/2), bodyW*0.15, bodyW*0.15);  //pupil left
  ellipse(xBody+(bodyW*0.33), yBody-(bodyH/2), bodyW*0.15, bodyW*0.15);  //pupil right

   if(mousePressed == true){
     fill(255,0,50,200);
     ellipse(xBody-(bodyW*0.33), yBody-(bodyH/5), bodyW*0.10, bodyW*0.05);  //blush left
     ellipse(xBody+(bodyW*0.33), yBody-(bodyH/5), bodyW*0.10, bodyW*0.05);  //blush right
   }
   
   if(keyPressed == true){
     if(key == CODED){
       if(keyCode == RIGHT){
         fill(255);
         ellipse(xBody+(bodyW*0.33), yBody-(bodyH/2), bodyW*0.30, bodyW*0.30);
         fill(0);
         rect(xBody+(bodyW*0.33), yBody-(bodyH/2), bodyW*0.15, bodyW*0.05);
       }
       else if(keyCode == LEFT){
         fill(255);
         ellipse(xBody-(bodyW*0.33), yBody-(bodyH/2), bodyW*0.30, bodyW*0.30);
         fill(0);
         rect(xBody-(bodyW*0.33), yBody-(bodyH/2), bodyW*0.15, bodyW*0.05);
       }
     }
   }

  //closed eyes
  //line(xBody-(bodyW*0.2),yBody-(bodyH/2),xBody-(bodyW*0.5),yBody-(bodyH/2));
  //line(xBody+(bodyW*0.2),yBody-(bodyH/2),xBody+(bodyW*0.45),yBody-(bodyH/2));
  
}
