#include <stdio.h>

void gotoxy(int x,int y){
  printf("%c[%d;%df",0x1B,y,x);
}

int main(){
  gotoxy(0,0);
  printf("HOLA PINCHE PUTITA \n");
  return 0;
}
