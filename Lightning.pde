private int startAtQ;
private int startAtW;

void setup(){
  size(600,600);
  
  startAtQ = width/2;
  startAtW = 10;
  strokeWeight(10);
  int fade =0;
 
}

void draw(){
  background(0,100,100);
    waterfall();
    pushMatrix();
    if(mousePressed){
  for(int i = 0; i < (int) (Math.random() * 20) + 8; i++){
    int r =(int) Math.random()*200 + 100;
    stroke(0,0,150, r);
    Lightning(startAtQ, startAtW);
  }
  }
  popMatrix();
}

void Lightning(int q, int w){
  int endQ = (int) (startAtQ + Math.random()*9 +1);
  int endW = (int) (startAtW + Math.random()*9 );
  int startQ = startAtQ;
  int startW = startAtW;
  for(int i = 0; i < 200; i++){
    line(startQ, startW, endQ, endW);
    startQ = endQ;
    startW = endW;
    endQ = (int) (startQ+Math.random()*8) - 4;
    endW = (int) (startW+Math.random()*9);

  }
 
}
void waterfall(){
  fill(23,23,23);
  rect(200, 0, 200, 800);
  rect(175, 555, 150, 40);
  rect(290, 455, 150, 150);
  rect(120, 405, 100, 200);
}



