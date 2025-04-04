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
PImage apple;

void setup(){
  size(1000,800);
  background(white);
  strokeWeight(5);
  stroke(black);
  selectColor=black;
  sliderX=400;
  apple=loadImage("apple.png");
  
}//end of set ==============================================================


void draw(){ 

  fill(white);
  strokeWeight(5);
  stroke(black);
  rect(0,0,1000,200);
  fill(selectColor);
  rect(525,150,50,20);
  image(apple,100,100);
  ////NEW, LOAD, SAVE BOTTON///////////////////////
  strokeWeight(5);
  stroke(black);
  fill(red);
  rect(825,25,100,20);
  fill(green);
  rect(825,75,100,20);
  fill(blue);
  rect(825,125,100,20);
  
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
  
  //new button
  if(mouseX>825 && mouseX<925 && mouseY>25 && mouseY<45){
  background(white);
}
// load button
  if(mouseX>825 && mouseX<925 && mouseY>75 && mouseY<95){
  selectInput("Pick an image to load", "openImage");
}
// save button
  if(mouseX>825 && mouseX<925 && mouseY>125 && mouseY<145){
  selectOutput("Choose a name for your new image file", "openImage");
}  
}//end of mouseReleased ======================================================
void saveImage(File f){
  if(f!=null){
    PImage canvas = get(71,1,width-71, height-1);
    canvas.save(f.getAbsolutePath());
  }
}
void openImage(File f) {
  if(f!=null){
    int n=0;
    while (n<100){
      PImage pic = loadImage(f.getPath());
      image(pic,0,0);
      n=n+1;
    }
  }
}
void controlslider(){
  if(mouseX>350 && mouseX<750 && mouseY>75 && mouseY<125){
    sliderX=mouseX;
  }
 
  linewidth=map(sliderX,350,750,0,50);
}
