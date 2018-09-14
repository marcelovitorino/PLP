#include <stdio.h>
#include <string.h>

int main(){
int numQuestoes;
scanf("%d", &numQuestoes);
int vetor[numQuestoes];
for (int i = 0; i < numQuestoes; i++){
  scanf(" %d", &vetor[i]);
}
int qtdPart;
scanf("%d", &qtdPart);
char matris[qtdPart][numQuestoes];
int id = 0;
int b = 0;
int a = 0;
for (int i = 0; i < qtdPart; i++){
  for (int j = 0; j < numQuestoes; j++){
    scanf(" %c", &matris[i][j]);
    if(matris[i][j] == 'V'){
      a = a + vetor[j];
    }
  }
  if(a > b){
    b = a;
    a = 0;
    id = i;
  }else{
    a = 0;
  }
}
printf("%d:%d\n", id+1, b);
}