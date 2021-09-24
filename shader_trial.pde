import processing.video.*;

PGraphics pg;
PImage im;
Movie mov;

void setup() {
  size(1000, 800, P3D);
  //fullScreen(P3D, 1);
  pg = createGraphics(width,height, P3D);

  /* start oscP5, listening for incoming messages at port 12000
     IP = 127.0.0.1 */
  oscP5 = new OscP5(this, 12000);


  // Image
  im = loadImage("images/garden.jpg");
  
  // Video
  mov = new Movie(this, "videos/snake.mp4");
  mov.loop();
  
  initFilters();
  initShaders();
}

void movieEvent(Movie movie) {
  mov.read();  
}

void draw() {
  background(20);

  updateUniforms_Filters();
  updateUniforms_Shaders();

  // Main objects as background
  //drawSpheres();
  
  // Draw color shaders as background
  drawShaders();
  
  // Image as background
  //image(im, 0,0, width, height);
  
  // Video as background
  image(mov, 0, 0, width, height);
  
  // post-processing effects
  presets();
  glitchFx();
  strobeFx();
  randomMasksFx();
  toggleFilters();

  // Overall subtle line pattern
  filter(lines);

  // Debugging texts
  fill(255);
  textSize(25);
  text(frameRate, 5, 30);
}
