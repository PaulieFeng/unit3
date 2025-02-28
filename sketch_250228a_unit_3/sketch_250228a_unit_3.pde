color lightblue=#00E3FF;
color blue=#0074FF;
color darkblue=#1000FF;
color brown=#FF7C00;
color yellow=#FAFF00;
color selectColor;

void setup(){
  size(800,800);
  background(yellow);
  strokeWeight(5);
  stroke(brown);
  
  
}//end of set ==============================================================


void draw(){
  
  
fill(lightblue);
circle(200,100,100);


fill(blue);
circle(400,100,100);


fill(darkblue);
circle(600,100,100);

fill(selectColor);
square(200,200,400);

}//end of draw ===========================================================


sfsssf

void mouseReleased() {
     if(dist(200,0,mouseX,mouseY)<50){
    selectColor=lightblue;
  }
    if(dist(100,100,mouseX,mouseY)<50){
    selectColor=lightblue;
  }
    if(dist(100,100,mouseX,mouseY)<50){
    selectColor=lightblue;
  }
}//end of mouseReleased ======================================================
