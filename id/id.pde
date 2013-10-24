int ovalen = int(random(2,8));
int ovaalGrootte = (1000/ovalen);

void setup(){
  size (600, 600);
  background(255);
  noStroke();
  translate(width/2, height/2);
  
  for(int i = 0; i <= ovalen; i++){
    fill(int(random(0,255)), int(random(0,255)), int(random(0,255)));
    ellipse(0, 0, (1000-(ovaalGrootte * i)), (1000-(ovaalGrootte * i)));
  }
  
  save("1.jpg");
  
}
