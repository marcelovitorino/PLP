#include <stdio.h>
#include <string.h>

int main() {

 int x, y, x2, y2;
 scanf("%d%d%d%d", &x, &y, &x2, &y2);

 char cdn[100];
 scanf("%s", cdn);

 int caminho = 0;
 for(int i = 0; i < strlen(cdn); i++){

   if(cdn[i] == 'N'){
     y += 1;
   }else if(cdn[i] == 'S'){
     y -= 1;
   }else if(cdn[i] == 'L'){
     x += 1;
   }else if(cdn[i] == 'O'){
     x -= 1;
   }else if(cdn[i] == 'P'){
     int j = i - 1;
     do{
       if(cdn[j] == 'N'){
         y -= 1;
       }else if(cdn[j] == 'S'){
         y += 1;
       }else if(cdn[j] == 'L'){
         x -= 1;
       }else if(cdn[j] == 'O'){
         x += 1;
       }
       j--;

     }while(j >= 0 && cdn[j] == cdn[i - 1]);
   }
 }

 char resp[4];
 if(x == x2 && y == y2){
   resp[0] = 'S';
   resp[1] = 'I';
   resp[2] = 'M';
 }else{
   resp[0] = 'N';
   resp[1] = 'A';
   resp[2] = 'O';
 }

 resp[3] = '\0';
 printf("%s", resp);
 return 0;
}