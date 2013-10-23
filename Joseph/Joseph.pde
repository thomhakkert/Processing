void setup(){
 int colour = 40;
 int aantalVierkanten = 5;
  
 int w = 600;
 int h = 600;

 size(w,h);
 background(255);
 noStroke();

 for (int i = 1; i < aantalVierkanten; i++) {
    int b = w-(100*i);
    int l = h-(100*i);
    fill(colour, 100-(10*i), 100);
    rect(50*i, 50*i+(30*i), b, l);
  }
  save("2.png");

}
