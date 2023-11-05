Particle[] parts = new Particle[1000];

boolean start = false;

void setup() {
  size(500,500);
  noStroke();
  for (int i = 0; i < parts.length; i++){
    parts[i] = new Particle();
}
  for (int i = 999; i < parts.length; i++){
    parts[i] = new OddballParticle();
  }
}
void draw(){
  background (0,150,220);
  fill(220,150,50); 
  rect(0,400,500,100);
  fill(0, 175, 0); //seagrass
  triangle(0, 500, 10, 390, 20, 500);
  triangle(10, 500, 20, 370, 30, 500);
  triangle(20, 500, 30, 340, 40, 500);
  triangle(75, 460, 85, 410, 95, 460);
  triangle(212, 410, 225, 370, 230, 410);
  triangle(275, 410, 280, 370, 285, 410);
  triangle(480, 410, 485, 320, 490, 410);
  triangle(490, 410, 495, 300, 500, 410);
  fill(150, 150, 150); //rocks
  ellipse(75, 475, 120, 80);
  ellipse(250, 410, 75, 40);
  ellipse(420, 415, 150, 60);
  
  for (int i = 0; i<parts.length; i++){
    parts[i].show();
    parts[i].drift();
  }
}

class Particle{
//water bubbles
  double myX, myY, mySpeed, myAngle;
  int myColor; 
  
  Particle(){
    myX = 250;
    myY = 250;
    myColor = (255);
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (Math.random()*10);
  }
  void show(){
    //stroke(255);
    fill(myColor, 100);
    ellipse((float)myX, (float)myY, 20,20);

  }
  void drift(){
   myX = myX + (Math.cos(myAngle)*mySpeed);
   myY = myY + (Math.sin(myAngle)*mySpeed);

  }
}
class OddballParticle extends Particle{
  OddballParticle(){
    myX = 250;
    myY = 250;
    myColor = 0;
    mySpeed = 1;
    
  }
  void show(){
    fill(myColor);
    ellipse((float)myX, (float)myY, 50,50);    
    ellipse((float)myX+50, (float)myY+50, 50,50); 
    ellipse((float)myX-50, (float)myY+50, 50,50);  
  }
  void drift(){
    if (mouseX > myX){
      myX = myX+(int)(Math.random()*5)-1;
} 
    else{
      myX = myX+(int)(Math.random()*5)-3;
}
    if (mouseY > myY){
      myY = myY+(int)(Math.random()*5)-1;
} 
    else{
      myY = myY+(int)(Math.random()*5)-3;
  }
}

}
