let guyX, guyY;
let energyX, energyY;
function setup() {
  createCanvas(400, 400);
  guyX = 25;
  guyY = 25;
  energyX = random(400);
  energyY = random(400);
  energyCollected = false
  angleMode(DEGREES);
}

function draw() {
  background(220);
  
  let d = dist(guyX, guyY, energyX, energyY);
  
  addGuy(guyX, guyY, 1);

  addEnergy(energyX, energyY, 0.75);

  if (dist(guyX, guyY, energyX, energyY) < 50) {
    
    energyCollected = true
  }
}

function addGuy(x, y, size) {
  push();
  translate(x, y);
  scale(size);
  if (dist < 10) {
    fill("hsl(352,36%,39%)");
  } else {
    fill("mistyrose");
  }
  ellipse(25, 25, 50);
  if (dist < 10) {
    fill("hsl(347,91%,45%)");
  } else {
    fill("black");
  }
  arc(25, 23, 50, 50, 180, 360);
  pop();
}

function addEnergy(x, y, size) {
  push();
  translate(x, y);
  scale(size);
  fill("hsla(200, 100%, 50%, 1)");
  ellipse(25, 25, 50);
  noStroke();
  fill("hsla(200, 100%, 60%, 1)");
  ellipse(25, 25, 45);
  fill("hsla(200, 100%, 70%, 1)");
  ellipse(25, 25, 35);
  fill("hsla(200, 100%, 80%, 1)");
  ellipse(25, 25, 30);
  fill("hsla(200, 100%, 90%, 1)");
  ellipse(25, 25, 20);
  pop();
}

function keyPressed() {
  if (keyCode === LEFT_ARROW) {
    guyX = guyX + -10;
  } else if (keyCode === RIGHT_ARROW) {
    guyX = guyX + 10;
  }
  if (keyCode === UP_ARROW) {
    guyY = guyY + -10;
  } else if (keyCode === DOWN_ARROW) {
    guyY = guyY + 10;
  }
}
