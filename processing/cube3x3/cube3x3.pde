OPC opc;
PImage dot;

void setup()
{
  size(720, 540);
  int spacing = height/9;

  // Load a sample image
  dot = loadImage("color-dot.png");

  // Connect to the local instance of fcserver
  opc = new OPC(this, "", 7890);

  //      ___
  //     | 1 | 
  //  --- --- --- ---
  // | 4 | 0 | 2 | 5 |
  //  --- --- --- ---
  //     | 3 |   
  //      ---

  //opc.ledGrid3x3(0 * 9, width * 3/8, height * 3/6, spacing, 0, false, false);   
  //opc.ledGrid3x3(1 * 9, width * 3/8, height * 1/6, spacing, 0, false, false);   
  //opc.ledGrid3x3(2 * 9, width * 5/8, height * 3/6, spacing, 0, false, false);   
  //opc.ledGrid3x3(3 * 9, width * 3/8, height * 5/6, spacing, 0, false, false);   
  //opc.ledGrid3x3(4 * 9, width * 1/8, height * 3/6, spacing, 0, false, false);   
  //opc.ledGrid3x3(5 * 9, width * 7/8, height * 3/6, spacing, 0, false, false);
  
  opc.ledGrid3x3(0 * 9, width * 3/8, height * 1/6, spacing, 3.14, true, false);   
  opc.ledStrip( 9,12, width/2, height * 5/12, spacing, 0, true);   
  opc.ledStrip(21,12, width/2, height * 6/12, spacing, 0, false);   
  opc.ledStrip(33,12, width/2, height * 7/12, spacing, 0, true);     
  opc.ledGrid3x3(45, width * 3/8, height * 5/6, spacing, 3.14, true, true);
    
  
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
