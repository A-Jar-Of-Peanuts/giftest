ArrayList<PImage> gif; 

void setup() {
  size(600, 600); 
  gif = new ArrayList<PImage>(); 
  int i = 0; 
  while( i<10 ) {
    gif.add(loadImage("frame_0"+i+"_delay-0.05s.gif")); 
    i++;
  }
  while(i<=32) {
    gif.add(loadImage("frame_"+i+"_delay-0.05s.gif")); 
    i++;
  }
}
int j = 0; 
void draw() {
  PImage frame = gif.get(j); 
  image(frame, 0, 0, width, height); 
  if(j>31){
    j = 0; 
  } else j++; 
}
