OPC opc;
PImage dot;

void setup()
{
  size(720, 540);
  int spacing = height/27;

  // Load a sample image
  dot = loadImage("color-dot.png");

  // Connect to the local instance of fcserver
  opc = new OPC(this, "127.0.0.1", 7890);

  //      ___
  //     | 1 | 
  //  --- --- --- ---
  // | 4 | 0 | 2 | 5 |
  //  --- --- --- ---
  //     | 3 |   
  //      ---

  // Map one 64-LED strip to the center of the window
  opc.ledGrid9x9(0 * 81, width * 3/8, height * 1/6, spacing, 0, true, false);   
  opc.ledGrid9x9(1 * 81, width * 3/8, height * 3/6, spacing, 0, true, false);   
  opc.ledGrid9x9(2 * 81, width * 5/8, height * 3/6, spacing, 0, true, false);   
  opc.ledGrid9x9(3 * 81, width * 3/8, height * 5/6, spacing, 0, true, false);   
  opc.ledGrid9x9(4 * 81, width * 1/8, height * 3/6, spacing, 0, true, false);   
  opc.ledGrid9x9(5 * 81, width * 7/8, height * 3/6, spacing, 0, true, false);
}

void draw()
{

  PImage img;
  img = loadImage("solved.png");
  background(img);
  //background(0);

  // Draw the image, centered at the mouse location
  float dotSize = width * 0.2;
  image(dot, mouseX - dotSize/2, mouseY - dotSize/2, dotSize, dotSize);
}
