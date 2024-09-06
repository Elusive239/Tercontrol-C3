module tc3;
import std::io;

def IntPtr = int*;

/**
	CONSTANTS
**/

/* Base Colors */
const ZString TC_NRM @if(!env::WIN32)= "\x1B[0m";	/* Normalize color */
const ZString TC_NRM @if(env::WIN32) = ""; 			/* Normalize color */
const ZString TC_RED 	= 	"\x1B[1;31m"; 		/* Red */
const ZString TC_GRN 	= 	"\x1B[1;32m"; 		/* Green */
const ZString TC_YEL 	= 	"\x1B[1;33m"; 		/* Yellow */
const ZString TC_BLU 	= 	"\x1B[1;34m"; 		/* Blue */
const ZString TC_MAG 	= 	"\x1B[1;35m"; 		/* Magenta */
const ZString TC_CYN 	= 	"\x1B[1;36m"; 		/* Cyan */
const ZString TC_WHT 	= 	"\x1B[1;37m"; 		/* White */

/* Bright Colors */		
const ZString TC_B_NRM 	= 	"\x1B[0m";	  		/* Normalize Bright Color */
const ZString TC_B_RED 	= 	"\x1B[0;31m"; 		/* Bright Red */
const ZString TC_B_GRN 	= 	"\x1B[0;32m"; 		/* Bright Green */
const ZString TC_B_YEL 	= 	"\x1B[0;33m"; 		/* Bright Yellow */
const ZString TC_B_BLU 	= 	"\x1B[0;34m"; 		/* Bright Blue */
const ZString TC_B_MAG 	= 	"\x1B[0;35m"; 		/* Bright Magenta */
const ZString TC_B_CYN 	= 	"\x1B[0;36m"; 		/* Bright Cyan */
const ZString TC_B_WHT 	= 	"\x1B[0;37m"; 		/* Bright White */

/* Background Colors */	
const ZString TC_BG_NRM = 	"\x1B[40m"; 		/* Normalize Background Color */
const ZString TC_BG_RED = 	"\x1B[41m"; 		/* Background Red */
const ZString TC_BG_GRN = 	"\x1B[42m"; 		/* Background Green */
const ZString TC_BG_YEL = 	"\x1B[43m"; 		/* Background Yellow */
const ZString TC_BG_BLU = 	"\x1B[44m"; 		/* Background Blue */
const ZString TC_BG_MAG = 	"\x1B[45m"; 		/* Background Magenta*/
const ZString TC_BG_CYN = 	"\x1B[46m"; 		/* Background Cyan */
const ZString TC_BG_WHT = 	"\x1B[47m"; 		/* Background White */

/* Additional formatting (ANSI) */	
const ZString TC_BLD  	= 	"\x1B[1m"; 			/* Bold */
const ZString TC_DIM  	= 	"\x1B[2m"; 			/* Dim */
const ZString TC_ITAL 	= 	 "\x1B[3m"; 		/* Standout (italics) */
const ZString TC_UNDR 	= 	 "\x1B[4m"; 		/* Underline */
const ZString TC_BLNK 	= 	 "\x1B[5m"; 		/* Blink */
const ZString TC_REV  	= 	"\x1B[7m"; 			/* Reverse */
const ZString TC_INV  	= 	"\x1B[8m"; 			/* Invisible */

/**
	FUNCTIONS
**/

extern fn ZString tc_color_id(uint cid, int l);
extern fn ZString tc_rgb(int r, int g, int b, int l);
extern fn void tc_get_cols_rows(IntPtr cols, IntPtr rows);
extern fn void tc_hide_cursor();
extern fn void tc_show_cursor();
extern fn void tc_enter_alt_screen();
extern fn void tc_exit_alt_screen();
extern fn void tc_echo_off();
extern fn void tc_echo_on();
extern fn void tc_canon_off();
extern fn void tc_canon_on();
extern fn void tc_clear_partial(int x, int y, int width, int height);
extern fn void tc_get_cursor(IntPtr x, IntPtr y);
extern fn void tc_set_cursor(int x, int y);
extern fn void tc_move_cursor(int x, int y);
extern fn void tc_clear_screen();
extern fn void tc_clear_entire_line();
extern fn void tc_clear_line_till_cursor();
extern fn void tc_clear_line_from_cursor();
extern fn void tc_clear_from_top_to_cursor();
extern fn void tc_clear_from_cursor_to_bottom();
extern fn void tc_print(ZString s);
extern fn int tc_getch();

//My Additions
fn void! tc_priv_printf(void* data @unused, char c) @private
{
	tc_print((ZString) &c);
}

macro void tc_printf(String format, args...){
	std::io::Formatter formatter;
	formatter.init(&tc_priv_printf);
	formatter.vprintf(format, args)!!;
}

macro void tc_printfn(String format, args...){
	std::io::Formatter formatter;
	formatter.init(&tc_priv_printf);
	formatter.vprintf(format, args)!!;
	tc_print("\n");
}

macro void tc_printn(ZString s){
	tc_print(s);
	tc_print("\n");
}