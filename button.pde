 
color ec,es;
color rc,rs;

float disrx,disry;
float disex,disey;
void setup(){
  
  size(640,480);
  background(255);
  ec=color(255);
  rc=color(0);
   
  es=color(0);
  rs=color(255);
}


void draw(){
  
    stroke(0);
  fill(ec);
  ellipse(width/2-50,height/2-50,50,50);
  
  stroke(0);
  fill(rc);
  rect(width/2+20,height/2-70,50,50);
  
  disrx=(width/2-50)-mouseX;
  disry=(height/2-50)-mouseY;
   disex=(width/2+20)-mouseX;
  disey=(height/2-70)-mouseY;
  
  if(sqrt(sq(disrx)+sq(disry))<25){
    if(mousePressed){ 
      ec=color(0);
      background(0);
      es=color(255);
      rs=color(0);
    }  
  }
  
  if((mouseX>(width/2+20)&&mouseX<(width/2+20+50))&&(mouseY>(height/2-70)&&mouseY<(height/2-70+50))){
    if(mousePressed){ 
      ec=color(255);
      background(255);
      es=color(0);
      rs=color(255);
    }  
    
  }
   stroke(es);
  fill(ec);
  ellipse(width/2-50,height/2-50,50,50);
  
  stroke(rs);
  fill(rc);
  rect(width/2+20,height/2-70,50,50);
}