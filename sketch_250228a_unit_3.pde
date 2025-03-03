color lightblue=#00E3FF;
color blue=#0074FF;
color darkblue=#1000FF;
color brown=#FF7C00;
color yellow=#FAFF00;
color white=#FFFFFF;
color selectColor;

void setup(){
  size(800,800);
  background(yellow);
  strokeWeight(5);
  stroke(brown);
  
  
}//end of set ==============================================================


void draw(){
tactile(200,100,50);  
fill(lightblue);
circle(200,100,100);

tactile(400,100,50);
fill(blue);
circle(400,100,100);

tactile(600,100,50);
fill(darkblue);
circle(600,100,100);

stroke (brown);
fill(selectColor);
square(200,200,400);

}//end of draw ===========================================================




void tactile (int x, int y, int r){
if(dist(x,y,mouseX,mouseY)<r){ 
    stroke(white);
} else{ 
 stroke(brown);
}

}//end of tactile ============================================================= 
 

void mouseReleased() {
     if(dist(200,100,mouseX,mouseY)<50){
    selectColor=lightblue;
  }
    if(dist(400,100,mouseX,mouseY)<50){
    selectColor=blue;
  }
    if(dist(600,100,mouseX,mouseY)<50){
    selectColor=darkblue;
  }
}//end of mouseReleased ======================================================
