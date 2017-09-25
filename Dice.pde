int num;
int sum = 0;
void setup()
{
	noLoop();
	size(600,600);
}
void draw()
{
	background (0);
	for(int x = 25; x <= 560; x +=50)
 	{
    	for(int y = 25; y <= 520; y +=50)
   		 {
			Die hard = new Die(x,y);
			hard.show(); 
			sum = sum+hard.yatzee;
		}
	}
	textSize(25);
	fill(150,150,150);
	text("Your total is "+ sum,200,550);
	fill(255,0,0);
	text("Insert Coin",240,575);
}
void mousePressed()
{
	
	redraw();
	sum = 0;
}


class Die //models one single dice cube
{
	int myX;
	int myY;
	int yatzee;
	Die(int x, int y) 
	{
		myX = x;
		myY = y;
		roll();
	}
	
	
	void show()
	{
		fill(255);
    	rect(myX, myY, 45, 45);
    	if(yatzee == 1)
		{
			fill(0);
			noStroke();
			ellipse(myX+25, myY+25, 10, 10);
			num = num+1;
		}
		else if(yatzee ==2)
		{
			fill(0);
			noStroke();
			ellipse(myX+20-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+40-5, 10, 10);
			num = num+2;
		}
		else if(yatzee==3)
		{
			fill(0);
			noStroke();
			ellipse(myX+30-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+40-5, 10, 10);
			ellipse(myX+20-5, myY+40-5, 10, 10);
			num = num+3;
		}
		else if(yatzee==4)
		{
			fill(0);
			noStroke();
			ellipse(myX+20-5, myY+40-5, 10, 10);
			ellipse(myX+20-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+20-5, 10, 10);
			ellipse(myX+40-5, myY+40-5, 10, 10);
			num = num+4;
		}
		else if(yatzee==5)
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
		else if (yatzee==6)
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
		void roll()
    	{
	   		yatzee = (int)(Math.random()*6)+1;
		}
}



  