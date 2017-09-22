void setup()
{
	noLoop();
	size(400,400);
}
void draw()
{
	for(int x = 25; x <= 380; x +=40)
 	{
    	for(int y = 25; y <= 380; y +=40)
   		 {
			Die hard = new Die(x,y);
			hard.show(); 
		}
	}
}
void mousePressed()
{
	redraw();
}


class Die //models one single dice cube
{
	int myX;
	int myY;

	Die(int x, int y) 
	{
		myX = x;
		myY = y;
	}
	
	
	void show()
	{
		fill(255);
    	rect(myX, myY, 35, 35);
    	int yatzee = (int)(Math.random()*6);
	}

	void roll( int yatzee)
	{
		if(yatzee == 0)
		{
			fill(0);
			noStroke();
			ellipse(myX+25, myY+25, 10, 10);
			num = num+1;
		}
		else if(yatzee ==1)
		{
			fill(0);
			noStroke();
			ellipse(myX+20-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+40-5, 10, 10);
			num = num+2;
		}
		else if(yatzee==2)
		{
			fill(0);
			noStroke();
			ellipse(myX+30-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+40-5, 10, 10);
			ellipse(myX+20-5, myY+40-5, 10, 10);
			num = num+3;
		}
		else if(yatzee==3)
		{
			fill(0);
			noStroke();
			ellipse(myX+20-5, myY+40-5, 10, 10);
			ellipse(myX+20-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+40-5, 10, 10);
			num = num+4;
		}
		else if(yatzee==4)
		{
			fill(0);
			noStroke();
			ellipse(myX+20-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+40-5, 10, 10);
			ellipse(myX+20-5, myY+40-5, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
			num = num+5;
		}
		else if (yatzee==5)
		{
			fill(0);
			noStroke();
			ellipse(myX+20-5, myY+10, 10, 10);
			ellipse(myX+40-5, myY+10, 10, 10);
			ellipse(myX+40-5, myY+25, 10, 10);
			ellipse(myX+40-5, myY+40, 10, 10);
			ellipse(myX+20-5, myY+25, 10, 10);
			ellipse(myX+20-5, myY+40, 10, 10);
			num = num+6;
		}
	}
}



  