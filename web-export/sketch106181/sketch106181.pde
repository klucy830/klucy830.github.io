
PImage img;

// Baby
PImage img2;

// baby's Position
float XPos;

// fortunecookies
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;

// Falling Speed
int dx = 0;
int dy = 2;

// Enemy Locations
float x = 0;
float y = -20;
float x1 = 0;
float y1 = -360;
float x2 = 0;
float y2 = -150;
float x3 = 0;
float y3 = -490;
float x4 = 0;
float y4 = -290;

boolean gameover = false;



void setup() {

  size(800, 500);
  img = loadImage("sky.png"); //bg
  img2 = loadImage("baby.png"); //Baby
  img3 = loadImage("fortunecookie_alcoholism.png"); //alcoholism
  img4 = loadImage("fortunecookie_Alzheimer.png");//alzheimer
  img5 = loadImage("fortunecookie_clusterheadache.png"); //clusterheadache
  img6 = loadImage("fortunecookie_Kidneystone.png"); //kidneystone
  img7 = loadImage("fortunecookie_skincancer.png"); //skincancer
  x = random(50, 750);
  x1 = random(50, 750);
  x2 = random(50, 750);
  x3 = random(50, 750);
  x4 = random(50, 750);
}


void draw() {
  if (!gameover) {
    background(0);
    image(img, 0, 0);
    image(img2, XPos, 300);
    int score = millis();

    textSize(32);
    text("Score: " + score, 500, 31);
    fill(255);

    y = y + dy;
    y1 = y1 + dy;
    y2 = y2 + dy;
    y3 = y3 + dy;
    y4 = y4 + dy;

    image(img3, x, y);
    image(img4, x1, y1);
    image(img5, x2, y2);
    image(img6, x3, y3);
    image(img7, x4, y4);


    if ( y > height) {
      y=-100; 
      x=random(50, 750);
    }
    if ( y1 > height) {
      y1=-100; 
      x1=random(50, 750);
    }
    if ( y2 > height) {
      y2=-100; 
      x2=random(50, 750);
    }
    if ( y3 > height) {
      y3=-100; 
      x3=random(50, 750);
    }
    if ( y4 > height) {
      y4=-100; 
      x4=random(50, 750);
    }


    if (key==CODED) {
      if (keyPressed == true) {
        if (keyCode == RIGHT && XPos<700) {
          XPos += 4;
        } else {
          if (keyCode == LEFT && XPos>-100) {
            XPos -= 4;
          }
        }
      }
    }

    //===========================
    // Collision

    if (collision(x, y)) {
      dy = 0; 
      gameover = true; 
      textSize(50);
      text("GAME OVER: " + score, 150, 250);
      fill(255, 0, 0);
    }
    if (collision1(x1, y1)) {
      dy = 0; 
      gameover = true; 
      textSize(50);
      text("GAME OVER: " + score, 150, 250);
      fill(255, 0, 0);
    }
    if (collision2(x2, y2)) {
      dy = 0; 
      gameover = true; 
      textSize(50);
      text("GAME OVER: " + score, 150, 250);
      fill(255, 0, 0);
    }
    if (collision3(x3, y3)) {
      dy = 0; 
      gameover = true; 
      textSize(50);
      text("GAME OVER: " + score, 150, 250);
      fill(255, 0, 0);
    }
    if (collision4(x4, y4)) {
      dy = 0; 
      gameover = true; 
      textSize(50);
      text("GAME OVER: " + score, 150, 250);
      fill(255, 0, 0);
    }
  }
}

boolean collision (float x, float y)
{
  if (Math.abs(x-XPos)<60 && y > 330) {
    return(true);
  } else {
    return(false);
  }
}


boolean collision1 (float x1, float y1)
{
  if (Math.abs(x1-XPos)<60 && y1 > 330) {
    return(true);
  } else {
    return(false);
  }
}

boolean collision2 (float x2, float y2)
{
  if (Math.abs(x2-XPos)<60 && y2 > 330) {
    return(true);
  } else {
    return(false);
  }
}

boolean collision3 (float x3, float y3)
{
  if (Math.abs(x3-XPos)<60 && y3 > 330) {
    return(true);
  } else {
    return(false);
  }
}

boolean collision4 (float x4, float y4)
{
  if (Math.abs(x4-XPos)<50 && y4 > 330) {
    return(true);
  } else {
    return(false);
  }
}