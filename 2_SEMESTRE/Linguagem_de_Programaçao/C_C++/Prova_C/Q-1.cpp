/*
        QUESTÃO 1- PROVA

    Neste exercício, você vai escrever uma função para fatorar números inteiros positivos. Suponha que n≥2 é um inteiro. 
    Como é bem sabido,n possui uma decomposição única (a menos da ordem) em fatores primos. Por exemplo,60 = 2·2·3·5. 
    O tamanho de tal decomposição é o número de primos que nela ocorre contando a multiplicidade. Assim, o tamanho da decomposição de 60 é 4. 
    Não é difícil estabelecer que o tamanho da fatoração em primos de n é ≤blgnc. Lembre-se que para cada n≥1,blgncé o maior inteiro k tal que 2 k≤n.
    Escreva uma função que recebe n:int com n≥2, e um vetor de int’spde comprimento maior ou igual ablgnc+ 1 e devolve em p a decomposição em fatores 
    em primos den, isto é, após a chamada da função o vetor p satisfaz:

            •p[0], p[1], . . . , p[k]são primos
            •n=p[0]·p[1]·····p[k]
            •p[0]≤p[1]≤p[2]≤···≤p[k]ep[k+ 1] = 0

    Para algum inteiro k≥0.  Note que p[k+ 1] = 0 serve para indicar que a decomposição em primos tem seu último elemento na posição k. 
    Assim, por exemplo, se n= 60, então a sua função deve devolver um vetor p tal que p= (2,2,3,5,0).
*/

#include<iostream>
using namespace std;

void rearranjar (int a[], int n) {
    int aux, m;
    aux = a[0];
    m = 0;

    for (int i = 1; i < n; ++i) {
        if (a[i] > a[m]) {
            m = i;
        }
    }
    aux = a[m];
    a[m] = a[n-1];
    a[n-1] = aux;
}
int primo(int pridesc)
{
    int aux;
    int div=0;

    for(aux=1 ; aux<=pridesc ; aux++)
    
        if(pridesc%aux==0)
            div++;
    
    if(div==2)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
int main()
{
    int n_inicio;
    cout << "Digite um numero inteiro para fatorar: ";
    cin >> n_inicio;
    cout <<"\n";
    int cont=n_inicio;
    int n_primos[1000];
    int cont_two=0;

    for(cont; cont!=1; --cont)
    {
        int pri = primo(cont);
        if(pri==1)
        {
            n_primos[cont_two]=cont;
            ++cont_two;
        }
    }
    int valor_final[1000] ;
    cont=0;
    int cont_three=0;
    int cont_four=0;
    while(n_inicio != 1 and cont<=cont_two)
    {
        if(n_inicio%n_primos[cont]==0)
        {
            ++cont_four;
            valor_final[cont_three]=n_primos[cont];
            ++cont_three;
            n_inicio= n_inicio/n_primos[cont];
            cont=0;
        }
        ++cont; 
    }
    ++cont_four;
    int f_rearranjo = cont_four;
    for (int b = 0; b < f_rearranjo; ++b) 
    {
        rearranjar(valor_final, f_rearranjo - 1);
        --f_rearranjo;
    }
    valor_final[cont_three]=0;
    cout << "O resultado da fatoracao foi:\n";
    for(cont_two=0; cont_two<cont_four; ++cont_two)
    {
        cout << valor_final[cont_two] << "\n";
    } 
}