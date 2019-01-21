int i=0;
int x=0;
int y=0;

void setup() {
  size(1200, 900);
  background(255);
}

void draw() {
  fill(0);
  laberinto();
  limite();
  if(keyPressed==true){
    background(255);
  figura();
  }
  else
  
  piernas();
}

void figura() {
  beginShape();
  fill(0, 0, 0);
  vertex(10+x, 50+y);
  vertex(15+x, 50+y);
  vertex(15+x, 60+y);
  vertex(20+x, 60+y);
  vertex(20+x, 65+y);
  vertex(25+x, 65+y);
  vertex(25+x, 70+y);
  vertex(30+x, 70+y);
  vertex(30+x, 75+y);
  vertex(35+x, 75+y);
  vertex(35+x, 70+y);
  vertex(40+x, 70+y);
  vertex(40+x, 65+y);
  vertex(45+x, 65+y);
  vertex(45+x, 60+y);
  vertex(50+x, 60+y);
  vertex(50+x, 55+y);
  vertex(55+x, 55+y);
  vertex(55+x, 25+y);
  vertex(40+x, 25+y);
  vertex(40+x, 20+y);
  vertex(55+x, 20+y);
  vertex(55+x, 10+y);
  vertex(80+x, 10+y);
  vertex(80+x, 25+y);
  vertex(85+x, 25+y);
  vertex(85+x, 30+y);
  vertex(90+x, 30+y);
  vertex(90+x, 45+y);
  vertex(70+x, 45+y);
  vertex(70+x, 50+y);
  vertex(80+x, 50+y);
  vertex(80+x, 55+y);
  vertex(65+x, 55+y);
  vertex(65+x, 60+y);
  vertex(75+x, 60+y);
  vertex(75+x, 70+y);
  vertex(70+x, 70+y);
  vertex(70+x, 65+y);
  vertex(65+x, 65+y);
  vertex(65+x, 75+y);
  vertex(60+x, 75+y);
  vertex(60+x, 85+y);
  vertex(55+x, 85+y);
  vertex(55+x, 90+y);
  vertex(50+x, 90+y);
  vertex(50+x, 95+y);
  vertex(25+x, 95+y);
  vertex(25+x, 85+y);
  vertex(20+x, 85+y);
  vertex(20+x, 75+y);
  vertex(15+x, 75+y);
  vertex(15+x, 70+y);
  vertex(10+x, 70+y);
  vertex(10+x, 50+y);
  endShape();

  beginShape();
  fill(255);
  vertex(60+x, 30+y);
  vertex(65+x, 30+y);
  vertex(65+x, 35+y);
  vertex(60+x, 35+y);
  vertex(60+x, 30+y);
  endShape();

  beginShape();
  fill(255);
  vertex(70+x, 15+y);
  vertex(78+x, 15+y);
  vertex(78+x, 20+y);
  vertex(70+x, 20+y);
  vertex(70+x, 15+y);
  endShape();
}

void piernas() {

  beginShape();
  fill(0, 0, 0);
  vertex(50+x, 95+y);
  vertex(50+x, 100+y);
  vertex(55+x, 100+y);
  vertex(55+x, 105+y);
  vertex(45+x, 105+y);
  vertex(45+x, 95+y);
  vertex(30+x, 95+y);
  vertex(30+x, 100+y);
  vertex(35+x, 100+y);
  vertex(35+x, 105+y);
  vertex(25+x, 105+y);
  vertex(25+x, 95+y);
  vertex(50+x, 95+y);
  endShape();
}

void laberinto() {

  rect(200, 100, 300, 100);
  rect(700, 100, 300, 100);

  rect(200, 700, 300, 100);
  rect(700, 700, 300, 100);

  rect(0, 400, 250, 100);
  rect(950, 400, 250, 100);
}

void limite() {
  if (x>150 && x<500 && y>50 && y<193) {
    x=0;
    y=0;
  }

  if (x>650 && x<1000 && y>50 && y<193) {
    x=0;
    y=0;
  }

  if (x<250 && y>350 && y<500) {
    x=0;
    y=0;
  }

  if (x>900 && x<1200 && y>350 && y<500) {
    x=0;
    y=0;
  }

  if (x>150 && x<500 && y>650 && y<800) {
    x=0;
    y=0;
  }

  if (x>650 && x<1000 && y>650 && y<800) {
    x=0;
    y=0;
  }

  if (x>450 && x<700 && y>250 && x>300 && x<800 && y<550) {
    x=350;
  }
}

void keyPressed() {
  background(255);
  //println(key);      //key=> convierte de hexa a letra
  //println(keyCode);    //keyCode=> solo recibe hexa
  //textSize(50);
  //text(keyCode,100,50);

  switch(keyCode) {
  case 38:
    if (y>-5) {
      y=y-5;
      figura();
    } else {
      y=0;
      figura();
      piernas();
    }
    break;
  case 40:
    if (y<850) {
      figura();
      y=y+5;
    } else {
      y=850;
      figura();
      piernas();
    }
    break;
  case 39:
    if (x<1145) {
      figura();
      x=x+5;
    } else {
      x=1145;
      figura();
      piernas();
    }
    break;
  case 37:
    if (x>-10) {
      figura();
      x=x-5;
    } else {
      x=0;
      figura();
      piernas();
    }
    break;
  }
}
