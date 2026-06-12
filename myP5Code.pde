setup = function() {
    size(400, 400);
};


var answer = 1;
var ballX = 200;
var ballY = 200;
var emojiX = 250;
var emojiY = 250;
var emojiSize = 32;

// Makes the MAgic 8 Ball appear
draw = function(){
  background(100,100,100);
  fill(0, 0, 0);
  ellipse(ballX, ballY, 375, 375);
  fill(60, 0, 255);
  triangle(200, 104, 280, 280, 120, 280);
  fill(255, 255, 255);
  textSize(12);
  
  if (answer == 1) {
    text("YESSIR", 176, 200); 
  }
  //Shows a diff answer based on randomized number
  else if (answer ==2 ){
    text("NAH BRO", 190, 210);
  }
  else if (answer == 3){
    text("I MEAN...", 175, 210);
  }
  else if (answer == 4) {
    text("REPEAT", 155, 210);
  }
  else if (answer == 5){
    text("DEFINITELY", 160, 210);
  }
  else if (answer == 6){
    text("REALLY?", 147, 198);
  }
  
  if (answer == 1) {
    textSize(emojiSize);
    text("😉", emojiX, emojiY);
  }
};

// Chooses a new random answer when clicking mouse
mouseClicked = function(){
  answer = round(random(1, 6));
  ballX = random(190,210);
  ballY = random(190, 210);
  if (answer == 1) {
    emojiX = random(100, 300);
    emojiY = random(100, 300);
  }
};

mousePressed = function() {
  if (answer == 1) {
    emojiX = mouseX;
    emojiY = mouseY;
    emojiSize = round(random(20, 40));
  }
};



