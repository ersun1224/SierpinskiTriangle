int r = (int)(Math.random()*155+100);
int g = (int)(Math.random()*155+100);
int b = (int)(Math.random()*155+100);
int baseCase = 10;
int direction = -1;

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

	if(baseCase < 10) {
		direction = -1;
	}
	if(baseCase > 1280) {
		direction = 1;
	} 
}
public void mouseDragged()
{
	if(frameCount % 12 == 0) {
		r = (int)(Math.random()*155+100);
		g = (int)(Math.random()*155+100);
		b = (int)(Math.random()*155+100);
	}
}

public void mousePressed() {
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