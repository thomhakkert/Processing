import processing.pdf.*;

void setup() {
  beginRecord(PDF, "ijsje.pdf");
  size(500, 500);
  noLoop();
  background(0);
  stroke(255); 
}

void draw() {
  // Draw something good here
  fill(255);
  triangle(50, 250, 250, 450, 450, 250);
  ellipse(250, 250, 250, 250);
  endRecord();
  save("ijsje.jpg");
}


