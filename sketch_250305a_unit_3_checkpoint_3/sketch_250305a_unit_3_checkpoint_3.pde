color lightblue=#00E3FF;
color blue=#0074FF;
color darkblue=#1000FF;
color brown=#FF7C00;
color pink=#FF93A7;


float sliderX;
float shade=0;

void setup(){
  size(800,600);
  strokeWeight(5);
  stroke(pink);
  fill(pink);
  sliderX=400;
}

void draw(){
  background(0);
  
  line(100,300,700,300);
  circle(sliderX,300,50);
}


void mouseDragged(){
  controlslider();
    
}

void mouseReleased(){
  controlslider();
}


void controlslider(){
  if(mouseX>100 && mouseX<700 && mouseY>275 && mouseY<325){
    sliderX=mouseX;
  }
}
