color lightblue=#00E3FF;
color blue=#0074FF;
color darkblue=#1000FF;
color brown=#FF7C00;
color pink=#FF93A7;

int toggle;

void setup(){
  size (800,600);
  strokeWeight(5);
  textSize(30);
  
  toggle=1;
}

void draw(){
  background(brown);
  fill(darkblue);
  stroke(lightblue);
  rect(100,100,200,100);
  
  if (toggle>0){
  guidelines();
  }
}

void mouseReleased(){
  if(mouseX>100 && mouseX<300 && mouseY>100 && mouseY<200){
    toggle=toggle*-1;
  }
  
}

void guidelines(){
  fill(pink);
  stroke(pink);
  line(0,mouseY,width,mouseY);
  line(mouseX,0,mouseX,height);

}
