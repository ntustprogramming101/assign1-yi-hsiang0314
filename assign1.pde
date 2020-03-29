PImage background ;
PImage groundhog ;
PImage life ;
PImage robot ;
PImage soil ;
PImage soldier ;
int soldierX;
int soldierY;
int robotX;
int robotY;
int laserW;
int laserX;

void setup() {
	size(640, 480, P2D);
	// Enter Your Setup Code Here
background = loadImage("img/bg.jpg");
groundhog = loadImage("img/groundhog.png");
life = loadImage("img/life.png");
robot = loadImage("img/robot.png");
soil = loadImage("img/soil.png");
soldier = loadImage("img/soldier.png");
//soldier start position 
soldierY=floor(random(2,6))*80;
//robot start postion
robotX=floor(random(2,8))*80;
robotY=floor(random(2,6))*80;
if(robotY==soldierY && (soldierY<400)){
  robotY=soldierY+80;
}
if(robotY==soldierY && (soldierY==400)){
  robotY=soldierY-80;
}
laserW=10;
laserX=robotX+25;


}

void draw() {
	// Enter Your Code Here
//bg
image(background,0,0);
noStroke();
//grass
rectMode(CORNER);  
fill(124, 204, 25); 
rect(0, 145, 640, 15); 
//sun
fill(255, 255, 0); 
circle(590,50, 125);
fill(253, 184, 19); 
circle(590, 50, 120);
//soil
image(soil,0,160);
//groundhog
image(groundhog,280,80);
//life
image(life,10,10);
image(life,80,10);
image(life,150,10);
//soldier
image(soldier,soldierX,soldierY);
soldierX+=2;
if (soldierX>640){
soldierX=-80;
}
//robot
image(robot,robotX,robotY);
//laser
fill(255,0,0);
rectMode(CENTER);
rect(laserX, robotY+37, laserW, 10, 100);
if(laserW<40){laserW+=2;
}else{laserW=40;
}
laserX-=2;
if (laserX<robotX-160+20){
laserW=10;
laserW+=2;
laserX=robotX+25;
laserX-=2;
}



}
