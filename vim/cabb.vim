iab cm <ESC>A /*<CR>*/ <ESC>O
iab std #include<".h"><ESC>4<LEFT>i
iab hdf #define
iab main void main()<ESC>A {<CR>}<ESC>O

iab uc unsigned char
iab ui unsigned int

iab pf print("\n");<ESC>6<LEFT>i
iab pfi print("%\n",);<ESC>8<LEFT>i
iab sf scanf("%s",);<ESC>2<LEFT>i
iab sfi scanf("%d",&);<ESC>2<LEFT>i
iab rng (<a)&&(<a)<ESC>8<LEFT>i
iab orng (<a)&&(>b)<ESC>8<LEFT>i

iab bk <ESC>A {<CR>}<ESC>O
iab elif else if <ESC>A {<CR>}<ESC>O
iab swi switch(){<CR>case '': <CR>  break; <CR>default: <CR>}
iab vv volatile 
iab vuc volatile unsigned char
iab vui volatile unsigned int 
iab st static int

iab i8 int8_t
iab i16 int16_t
iab i32 int32_t
iab u8 uint8_t
iab u16 uint16_t
iab u32 uint32_t

iab tera 1e12
iab giga 1e9
iab mega 1e6
iab kilo 1000
iab hect 100
iab mill 0.001
iab micr 0.0000001
iab nano 1e-9
iab pico 1e-12

iab w1 while(1);
iab finf for(;;);
iab ff for(int a=0;a<;a++)<ESC>4<LEFT>
iab fb for(int a=0;a>;a--)<ESC>4<LEFT>
