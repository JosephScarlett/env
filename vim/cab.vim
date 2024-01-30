iab xpt int *p;
iab xcp const int *p;
iab xad int *p = &num;
iab xxi int num, *p, p=&num;

iab cm /*<CR>*/ <ESC>O
iab inc #include
iab stdio #include<stdio.h><CR>
iab hstring #include<string.h><CR>
iab stdlib #include<stdlib.h><CR>
iab hmath #include<math.h><CR>
iab def #define
iab defs #define SIZE  
iab szz SIZE
iab hcolor #define fg(c) ("\033[38;5;"#c"m")<CR>#define rs "\033[0m"<CR>

iab attr _attribute_

iab vmain void main(){<CR>}<ESC>O
iab imain int main(){<CR>}<ESC>O
iab amain int main(int argc,char*argv[]){<CR>}<ESC>O
iab rt return
iab rtt return 0;
iab rtr return 1;

iab uu unsigned 
iab uuc unsigned char
iab uui unsigned int
iab uus unsigned short
iab uul unsigned long
iab uull unsigned long long

iab bnl {<CR>}<ESC>O
iab br {}<LEFT>
iab bc ()<LEFT>

iab pp *
iab ppp **
iab fnp (* )();
iab fnpi int (* )(int);
iab fnpc char (* )(char);
iab .. ->
iab le <=
iab ge >=
iab nq !=
iab eq ==
iab eqo ==1
iab eqz ==0
iab ng ~
iab or ^
iab mo %
iab mod %d
iab mos %s
iab modi %s%s<LEFT><LEFT>
iab modp %s%p%s
iab modd %s%d%s
iab mods %s%s%s

iab pf printf("\n");<LEFT><LEFT><LEFT><LEFT><LEFT>
iab pfi printf("%\n",);<LEFT><LEFT><LEFT><LEFT>
iab pfc printf("%s %s\n",fg(11),rs);<ESC>18h
iab sf scanf("%s",);<LEFT><LEFT><LEFT><LEFT>
iab sfi scanf("%d",&);<LEFT><LEFT><LEFT><LEFT>
iab irng (lb<a)&&(ub<a)
iab orng (lb<a)&&(ub>b)

iab elif else if{<CR>}<ESC>O
iab swi switch(){<CR>case '': <CR>  break; <CR>default: <CR>}
iab ee extern
iab vv volatile 
iab rr register
iab ss static

iab sof sizeof()<LEFT>
iab tdf typedef
iab inl inline
iab uni union
iab stt struct
iab stb struct{};<LEFT><LEFT>
iab stnl struct{<CR>};<ESC>O

iab cc char
iab ccc const char
iab ccp (*char)
iab ii int
iab iip (*int)
iab ll long
iab lll long long
iab ff float
iab ffp (*float)
iab dd double
iab ddp (*double)
iab vo void
iab voc (void*)

iab i8 int8_t
iab i16 int16_t
iab i32 int32_t
iab u8 uint8_t
iab u16 uint16_t
iab u32 uint32_t

iab mtb m[][] = {0};
iab arb a[] = {0};

iab if if()<LEFT>
iab ifb if(){<CR>}<ESC>O
iab elif else if()<LEFT>
iab elifb else if(){<CR>}<ESC>O
iab else else{}<LEFT>
iab nulb '\0'

iab swi switch(){<CR>}<ESC>O
iab cas case '':
iab sbr break; 
iab sdf default:

iab winf while(1);
iab wh while(){}<LEFT><LEFT><LEFT>
iab dow do{<CR>}while();<ESC>O

iab finf for(;;);
iab for for(){}<LEFT><LEFT><LEFT>
iab ff for(int i=0;i<;i++){<CR>}<ESC>O
iab fb for(int i=0;i>;i--){<CR>}<ESC>O
iab fv for(; i!=0;i--){<CR>}<ESC>O
iab fd for(int i=;i!=0;a--){<CR>}<ESC>O

iab hif #if
iab hifd #ifdef
iab hifn #ifndef
iab helf #elif
iab heli #elifdef
iab hein #elifndef
iab hels #else
iab hend #endif
iab prag #pragma

iab tera 1000000000000
iab giga 1000000000
iab mega 1000000
iab kilo 1000
iab hect 100
iab mill 1e-3
iab micr 1e-6
iab nano 1e-9
iab pico 1e-12

