color red=#FF0000;
color green=#00FF00;
color blue=#0000FF;
color yellow=#FFFF00;
color black=#000000;
color orange=#FF7403;
color white=#FFFFFF;
color purple=#7703FF;
color selectColor;

float sliderX;
float linewidth=0;


void setup(){
  size(1000,800);
  background(white);
  strokeWeight(5);
  stroke(black);
  selectColor=black;
  
  sliderX=400;
  
  
}//end of set ==============================================================


void draw(){ 

  fill(white);
  strokeWeight(5);
  stroke(black);
  rect(0,0,1000,200);
  fill(selectColor);
  rect(525,150,50,20);
  ////NEW, LOAD, SAVE BOTTON///////////////////////
  strokeWeight(5);
  stroke(black);

  rect(525,150,50,20);
  // linewidth control//////////////////////////
  stroke(selectColor);
  strokeWeight(linewidth);
  line(350,100,750,100);
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(sliderX,100,25);

  
//colorselect button//////////////////////////////////  
tactile(50,50,50); 
strokeWeight(5);
fill(red);
circle(50,50,100);

tactile(150,50,50);
strokeWeight(5);
fill(green);
circle(150,50,100);

tactile(250,50,50);
strokeWeight(5);
fill(blue);
circle(250,50,100);

tactile(50,150,50);
strokeWeight(5);
fill(yellow);
circle(50,150,100);

tactile(150,150,50);
strokeWeight(5);
fill(black);
circle(150,150,100);

tactile(250,150,50);
strokeWeight(5);
fill(orange);
circle(250,150,100);


}//end of draw ===========================================================

void mouseDragged (){
  ////////mouse draw//////////////////////////////////////
  controlslider();
  strokeWeight(linewidth);
  stroke(selectColor);
  line(pmouseX,pmouseY,mouseX,mouseY);
}

/////// tactile////////////////////////////////////////////////
void tactile (int x, int y, int r){
if(dist(x,y,mouseX,mouseY)<r){ 
    stroke(purple);
} else{ 
 stroke(black);
}

}
 

void mouseReleased() {
  controlslider();
  if (mouseX>10 && mouseX<60 && mouseY>490 && mouseY<515){
  background (white);
}
     if(dist(50,50,mouseX,mouseY)<50){
    selectColor=red;
  }
    if(dist(150,50,mouseX,mouseY)<50){
    selectColor=green;
  }
    if(dist(250,50,mouseX,mouseY)<50){
    selectColor=blue;
  }
  if(dist(50,150,mouseX,mouseY)<50){
    selectColor=yellow;
  }
  if(dist(150,150,mouseX,mouseY)<50){
    selectColor=black;
  }
  if(dist(250,150,mouseX,mouseY)<50){
    selectColor=orange;
  }
  
}//end of mouseReleased ======================================================


void controlslider(){
  if(mouseX>350 && mouseX<750 && mouseY>75 && mouseY<125){
    sliderX=mouseX;
  }
 
  linewidth=map(sliderX,350,750,0,50);
}


//////////////////////////new button//////////////////////////
