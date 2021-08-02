//ToxicSamurai
//Anyone may use or edit

//Controls the size of the circles
int speed;

void setup() {
  //Creates a 1000x1000 pixel canvas
  size(1000, 1000);
}

void draw() {
  //Keeps the background white
  background(255);
  //Makes it so that the closer the mouse is to (0,0) it is, the smaller the circle is
  speed = mouseX + mouseY/2;
  //Makes the stroke color turquoise
  stroke(62, 224, 208);
  //Makes the circle thick
  strokeWeight(50);
  //Makes the bigger circle
  ellipse(width/2, height/2, speed, speed);
  //Makes the circle not thick
  strokeWeight(5);
  //Makes the smaller circle
  ellipse(width/2, height/2, speed/2, speed/2);
  //Prints the value of speed
  println(speed);
  //Makes first triangle
  triangle(speed+100, speed-100, 500, 500, speed, speed);
  //Makes second triangle
  triangle(speed-100, speed+100, 500, 500, speed, speed);
}
