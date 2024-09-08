module tercontrolc3;
import std::io;
import tc;

fn int main(String[] args)
{
	char c; 
	int x; 
	int y;
	int maxX;
	int maxY;
	tc::enter_alt_screen();
	tc::get_cols_rows(&maxX, &maxY);
	while(c != 'q'){
		tc::clear_screen();
		tc::printf_at(0, maxY-1, "x: %s, y: %s", x, y);
		tc::printn("This is a test of printn!");
		tc::print("This is a test of print!");
		tc::printn_at(0,4 ,"This is a test of printn_at!");
		tc::print_at(0,3 ,"This is a test of print_at!");
		c = (char) tc::getch();
		if(c == 's') y+=1;
		if(c == 'w') y-=1;
		if(c == 'd') x+=1;
		if(c == 'a') x-=1;

		if(x < 0) 			{x = maxX-1;}
		else if(x >= maxX)	{x = 0;}
		if(y < 0) 			{y = maxY-1;}
		else if(y >= maxY)	{y = 0;}
		tc::set_cursor(x, y);
	}
	tc::exit_alt_screen();
	return 0;
}
