int r =2;

void setup(){
  size(700,700);
}

void draw(){
  background(255);
  
  pushMatrix();
  translate(350+r*PI,350);
  r++;
  if (r>200){
    r=2;
  }
  rotate(frameCount/5.0);
  
  strokeWeight(20);
  circle(0,0,400);
  
  strokeWeight(50);
  circle(0,0,50);
  
  strokeWeight(8);
  line(0,0,0,190);
  line(0,0,0,-190);
  line(0,0,190,0);
  line(0,0,-190,0);
  popMatrix();
}
