color lightblue=#00E3FF;
color blue=#0074FF;
color darkblue=#1000FF;
color brown=#FF7C00;
color pink=#FF93A7;


float sliderY;
float shade=0;
float linewidth=0;

void setup(){
  size(800,600);
  strokeWeight(linewidth);
  stroke(pink);
  fill(pink);
  sliderY=400;
}


void draw(){
  background(shade);
  strokeWeight(linewidth);
  line(400,100,400,500);
  circle(400,sliderY,50);
}


void mouseDragged(){
  controlslider();
    
}

void mouseReleased(){
  controlslider();
}


void controlslider(){
  if(mouseX>300 && mouseX<500 && mouseY>100 && mouseY<500){
    sliderY=mouseY;
  }
  shade=map(sliderY,100,500,0,255);
  linewidth=map(sliderY,100,600,0,15);
}
