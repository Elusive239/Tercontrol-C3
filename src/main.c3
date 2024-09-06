module tercontrolc3;
import std::io;
import tc3;

fn int main(String[] args)
{
	tc3::tc_enter_alt_screen();
	
	int x; 
	int y;
	int maxX;
	int maxY;
	tc3::tc_get_cols_rows(&maxX, &maxY);
	char c; 
	while(c != 'q'){
		tc3::tc_clear_screen();
		tc3::tc_set_cursor(0, 0);
		tc3::tc_printf("x: %s, y: %s", x, y);
		tc3::tc_set_cursor(x, y);
		c = (char) tc3::tc_getch();
		if(c == 'w') {y-=1;}
		if(c == 's'){ y+=1;}
		if(c == 'd'){ x+=1;}
		if(c == 'a'){ x-=1;}

		if(x < 0) 			{x = maxX-1;}
		else if(x >= maxX)	{x = 0;}
		if(y < 0) 			{y = maxY-1;}
		else if(y >= maxY)	{y = 0;}
		tc3::tc_set_cursor(x, y);
	}

	tc3::tc_exit_alt_screen();
	return 0;
}
