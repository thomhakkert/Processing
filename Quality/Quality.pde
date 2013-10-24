String lines[] = loadStrings("http://student.aii.avans.nl/CMD/tdjhakke/Quality/data.csv");

color[] colArray = {color(255, 110, 0),color(255, 246, 0),color(255, 0, 238),color(0, 255, 0),color(0, 25, 255),color(255, 0, 0),color(204, 204, 204),color(0, 0, 0),color(0, 229, 255)}; 
int lijnDikte[] = {30, 30, 20, 20, 20, 20, 20, 20, 20};

int land = 1;
float deg = 0.06283185;
int col;
String country;

void setup(){
  background(255);
  size(1200,850);
  strokeCap(SQUARE);
   
}//einde Setup

void draw(){
   int T = 200;
   background(255);
   noLoop();
   String list[] = split(lines[land], ',');
  
////Arrays maken van de csv
//for (int i = 0 ; i < lines.length; i++) {
//    String list[] = split(lines[i], ',');
String country = trim(list[0]);

int cijfers[] = {int(list[1]), int(list[2]), int(list[3]), int(list[4]), int(list[5]), int(list[6]), int(list[7]), int(list[8]), int(list[9])};


for(int g = 0; g < 9; g++){
    col = colArray[g];
    strokeWeight(lijnDikte[g]);
    stroke(col);
    noFill();
    arc(width/2, height/2, T, T, radians(-90),(deg*cijfers[g]));
    T = T+(lijnDikte[g]+35);
};//eind for

//Titel
textAlign(CENTER);
textSize(40);
fill(0,0,0);
text("Quality of Life Index",0,0,width,height);
textSize(15);
text("Click voor een ander land",0,50,width,height);
  
//Land
textAlign(CENTER, BOTTOM);
textSize(25);
text(country, 0,-30,width,height);
}

//Om van land te veranderen
void mouseClicked(){
land = int(random(1, 195));
println(land);
redraw();
}// einde mouseclick
