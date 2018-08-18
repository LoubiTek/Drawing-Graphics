import Turtle.*;

// LoubiTek| Drawing Graphics | 2018

Turtle a = new Turtle(this);

// States
//boolean Intro = true;

PImage Test;

// Type
float target_x = 0;
float target_y = 0;
float c = 0;
float x = 0;
float y = 512;
float w = width;
float h = height;
float r = 0;
//float t = 0;

float Test_x,Test_y = 0;
int Test_r = 0;
float Test_random = random(255);
float[] Test_n = {Test_random,0,32}; // Array Test = (Test_n[0],[1],[2])

// Window Parameters
int RenderWindow_w = 1280;
int RenderWindow_h = 720;
String RenderEngine = P3D;
byte FPS = 60;

// Init
void Initialize()
{
  size(RenderWindow_w,RenderWindow_h,RenderEngine);
  println("Size: 1280*720|P2D");
  print("Title: Drawing Graphics | 2018 | By LoubiTek");
}

// Settings
void settings()
{
  Initialize();
}

// Setup
void setup()
{
  frameRate(FPS);
  colorMode(RGB); // Or HSB ?
  background(0);
  //noCursor();
  //cursor(HAND);
  smooth(0);
  strokeWeight(0.1);
  Test = loadImage("1.png");
}

// Draw
void draw()
{
  //ColorsSwitch();
  Background();
  Clock();
  Draw();
}

// Background
void Background()
{
  fill(32);
  rect(0,599,799,100); // TextBox
  
  Texts();
  
  while(c <= height)
  {
    stroke(200,50,100,c);
    line(x,y+c,width,c*PI);
    c+=0.1;
  }
  
}

// Draw
void Draw()
{
  a();
  b();
  Test();
}

void a()
{
  //a.drawTurtle();
  a.goToPoint(0,0);
  a.right(0.1);
  a.forward(0.1);
  
  a.setWrapAround(true);
  
  //draw shape
  a.forward(100);
  a.right(45);
  a.forward(200);
  a.right(90);
  a.forward(300);
  a.right(45);
  a.forward(400);
  a.right(90);
}

void b()
{
  //strokeWeight(0.5);
  translate(width/2,height/2);
  translate(x,y);
  rotate(radians(r/PI));
  stroke(random(255),random(255),random(255),32); //For random colors
  x = lerp(x,target_x,0.1);
  y = lerp(y,target_y,1);
  r -= PI;
  //x++;
  //y++;
  //t++;
  fill(100,180,c,1);
  rect(x,y,w,h);
}

// Test
void Test()
{
  Test_r += 0.1;
  //pushMatrix();
  translate(Test_n[0],Test_n[1]);
  rotate(radians(r*PI));
  
  noFill();
  noStroke();
  
  ellipse(0,0,16,16);
  scale(1);
  image(Test,Test_x,Test_y);
  //popMatrix();
  noTint();
}

void keyPressed()
{
  //target_x = random(-width/2,height/2);
  //target_y = random(-width/2,height/2);
  
  /*a.setX(x);
  a.setY(y);
  
  x=a.getX();
  y=a.getY();
  
  println(x);
  println(y);*/
  
  a.clearTurtleHistory();
  redraw();
  w = random(255);
  h = random(255);
}

void mousePressed()
{
  background(0);
}
