#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void menu () {

    puts("+-- Euromilhoes ---------------+");
    puts("|  1  -  Chave Manual          |");
    puts("|  2  -  Chave Automatica      |");
    puts("+-- Outros --------------------+");
    puts("|  3  -  Sair do Programa      |");
    puts("+------------------------------+");

}

void menuFinal () {

    puts("+-- Deseja apostar novamente? -+");
    puts("|  1  -  Sim                   |");
    puts("|  2  -  Nao                   |");
    puts("+------------------------------+");

}

void resetLinha() {
    char r;
    do{
        r = getchar();
    } while (r != '\n');
}

int* numeros (int num[]) {
    printf("\n");

    for (int i = 0; i < 5; i++){
        while (num[i] == 0){

            printf("Digite o %d º numero\n",i+1);
            scanf(" %d",&num[i]);
            resetLinha();
            while (num[i] < 1 || num[i] > 50){

                printf("Numero invalido, digite um numero de 1 a 50!\n");
                scanf(" %d",&num[i]);
                resetLinha();
            }
        }

        if (i != 0) {
            for (int j = 0; j <= i - 1; j++) {
                while (num[j] == num[i]) {
                    num[i] = 0;
                    printf("Nao pode repetir numeros!\n");
                    scanf(" %d", &num[i]);
                    resetLinha();
                }
            }
        }
    }

    return num;
}

int* estrelas (int est[]) {

    for (int i = 0; i < 2; i++){
        while (est[i] == 0){

            printf("Digite a %d º estrela\n",i+1);
            scanf(" %d",&est[i]);
            resetLinha();
            while (est[i] < 1 || est[i] > 12){

                printf("Numero invalido, digite um numero de 1 a 12!\n");
                scanf(" %d",&est[i]);
                resetLinha();
            }
        }

        if (i != 0) {
            for (int j = 0; j <= i - 1; j++) {
                while (est[j] == est[i]) {
                    est[i] = 0;
                    printf("Nao pode repetir numeros!\n");
                    scanf(" %d", &est[i]);
                    resetLinha();
                }
            }
        }
    }

    return est;
}

int* numerosRandom (int sorteNum[]) {

    srand(7);

    for (int i = 0; i < 5; i++){
        while (sorteNum[i] == 0) {
            sorteNum[i] = rand() % 50;
        }

        if (i != 0) {
            for (int j = 0; j <= i - 1; j++) {
                while (sorteNum[j] == sorteNum[i]) {
                    sorteNum[i] = 0;
                    resetLinha();
                }
            }
        }
    }

    return sorteNum;
}

int* estrelasRandom (int sorteEst[]) {

    srand(7);

    for (int i = 0; i < 2; i++){
        while (sorteEst[i] == 0) {
            sorteEst[i] = rand() % 12;
        }
        if (i != 0) {
            for (int j = 0; j <= i - 1; j++) {
                while (sorteEst[j] == sorteEst[i]) {
                    sorteEst[i] = 0;
                    resetLinha();
                }
            }
        }
    }

    return sorteEst;
}

int* bubbleSort (int array[],int size) {

    for (int step = 0; step < size -1; step++){
        for (int i = 0; i < size - step - 1; i++){
            if (array[i] > array[i+1]) {
                int temp = array[i];
                array[i] = array[i+1];
                array[i+1] = temp;
            }
        }
    }

    return array;
}

void escreveNum (int num[], int size) {

    printf("\nNumeros: ");
    for (int i = 0; i < size; i++){
        printf("%d ",num[i]);
    }
    printf("\n");
}

void escreveEst (int est[], int size) {

    printf("Estrelas: ");
    for (int i = 0; i < size; i++){
        printf("%d ",est[i]);
    }
    printf("\n");
}

int compararNum (int num[], int sorteNum[]) {
    int count = 0;

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (num[i] == sorteNum[j]) {
                count++;
            }
        }
    }

    return count;
}

int compararEst (int est[], int sorteEst[]) {
    int count = 0;

    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            if (est[i] == sorteEst[j]) {
                count++;
            }
        }
    }

    return count;
}

void premio (int valorPremio, int numCertos, int estCertos) {
    float premioFinal;

    if ((numCertos == 0 && estCertos == 0) ||
        (numCertos == 0 && estCertos == 1) ||
        (numCertos == 1 && estCertos == 1) ||
        (numCertos == 1 && estCertos == 0) ||
        (numCertos == 0 && estCertos == 2)) {
        printf("Tiveste azar! Nao ganhaste nada...\n\n");

    }

    if (numCertos == 1 && estCertos == 2) {
        premioFinal = valorPremio * 0.00000006;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 2 && estCertos == 0) {
        premioFinal = valorPremio * 0.00000003;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 2 && estCertos == 1) {
        premioFinal = valorPremio * 0.000000045;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 2 && estCertos == 2) {
        premioFinal = valorPremio * 0.00000012;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 3 && estCertos == 0) {
        premioFinal = valorPremio * 0.000000065;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 3 && estCertos == 1) {
        premioFinal = valorPremio * 0.00000009;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 3 && estCertos == 2) {
        premioFinal = valorPremio * 0.00000046;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 4 && estCertos == 0) {
        premioFinal = valorPremio * 0.00000027;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 4 && estCertos == 1) {
        premioFinal = valorPremio * 0.00000092;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 4 && estCertos == 2) {
        premioFinal = valorPremio * 0.0000085;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 5 && estCertos == 0) {
        premioFinal = valorPremio * 0.00024;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 5 && estCertos == 1) {
        premioFinal = valorPremio * 0.0026;
        printf("Parabens, ganhaste %0.2f euros\n\n", premioFinal);
    }

    if (numCertos == 5 && estCertos == 2) {
        printf("Parabens, ganhaste %d euros\n\n", valorPremio);
    }

}


int main(void) {
    int opcMenu = 0;
    int opcMenuFinal = 0;
    int num[5] = {0,0,0,0,0};
    int est[2] = {0,0};
    int sorteNum[5] = {0,0,0,0,0};
    int sorteEst[2] = {0,0};
    int sizenum;
    int sizeest;
    int sizeSorteNum;
    int sizeSorteEst;
    int numCertos;
    int estCertos;
    int valorPremio;

    sizenum = sizeof(num) / sizeof(num[0]);
    sizeest = sizeof(est) / sizeof(est[0]);
    sizeSorteNum = sizeof(sorteNum) / sizeof(sorteNum[0]);
    sizeSorteEst = sizeof(sorteEst) / sizeof(sorteEst[0]);

    numerosRandom(sorteNum);
    estrelasRandom(sorteEst);

    bubbleSort(sorteNum,sizeSorteNum);
    bubbleSort(sorteEst,sizeSorteEst);

    valorPremio = 124000000;


    do {
        menu();
        scanf(" %d",&opcMenu);

        num[0] = 0,num[1] = 0,num[2] = 0,num[3] = 0,num[4] = 0;
        est[0] = 0, est[1] = 0;

        switch (opcMenu) {

            case 1:
                fflush(stdin);
                numeros(num);
                estrelas(est);

                bubbleSort(num,sizenum);
                bubbleSort(est,sizeest);

                escreveNum(num,sizenum);
                escreveEst(est,sizeest);
                printf("Voce introduziu a sua chave com sucesso\n\n");

                numerosRandom(sorteNum);
                estrelasRandom(sorteEst);

                bubbleSort(sorteNum,sizeSorteNum);
                bubbleSort(sorteEst,sizeSorteEst);

                /*Só para testes
                escreveNum(sorteNum,sizeSorteNum);
                escreveEst(sorteEst,sizeSorteEst);*/

                numCertos = compararNum(num,sorteNum);
                estCertos = compararEst(est,sorteEst);
                printf("Acertaste %d numeros e %d estrelas\n",numCertos,estCertos);

                premio(valorPremio,numCertos,estCertos);

                menuFinal();
                scanf(" %d",&opcMenuFinal);

                fflush(stdin);
                break;

            case 2:
                fflush(stdin);
                numerosRandom(num);
                estrelasRandom(est);

                bubbleSort(num,sizenum);
                bubbleSort(est,sizeest);

                escreveNum(num,sizenum);
                escreveEst(est,sizeest);
                printf("Chave sorteada com sucesso\n\n");

                /*Só para testes
                escreveNum(sorteNum,sizeSorteNum);
                escreveEst(sorteEst,sizeSorteEst);*/

                numCertos = compararNum(num,sorteNum);
                estCertos = compararEst(est,sorteEst);
                printf("Acertaste %d numeros e %d estrelas\n",numCertos,estCertos);

                premio(valorPremio,numCertos,estCertos);

                menuFinal();
                scanf(" %d",&opcMenuFinal);

                fflush(stdin);
                break;

            case 3:
                break;

            default:
                fflush(stdin);
                puts("Opcao invalida");
        }

    } while (!(opcMenu == 3 || opcMenuFinal == 2));

  return 0;
}