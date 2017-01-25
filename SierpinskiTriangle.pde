int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);
int baseCase = 10;

public void setup()
{
	size(1300,1300);
}
public void draw()
{
	background(0,0,0);
	color c1 = color(r,g,b);
	fill(c1);
	sierpinski(10,1290,1280);
}
public void mouseDragged()
{
	r = (int)(Math.random()*255);
	g = (int)(Math.random()*255);
	b = (int)(Math.random()*255);
}

public void mouseClicked() {
	int direction = -1;
	if(baseCase == 10) {
		direction = 1;
	}
	if(baseCase == 1280) {
		direction = 1;
	}
	if(direction == -1) {
		baseCase = baseCase * 2;
	}
	if(direction == 1) {
		baseCase = baseCase / 2;
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len < baseCase) {
		triangle(x, y, x+len, y, x+len/2, y - len);
	} else {
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}