/*
    QUESTÃO 02 - PROVA 

    Suponha que o número de andares de uma coleção de n ≥ 1
    prédios, todos numa mesma rua, seja dado por um vetor de ints não-negativos.
    Por exemplo, o vetor (10, 20, 12, 15, 17) representa um perfil no qual o primeiro
    prédio tem 10 andares, o segundo, 20 andares, e assim sucessivamente. Admita
    que uma nova lei foi aprovada na cidade que obriga que todos os prédios de
    uma mesma rua tenham o mesmo número de andares. Neste problema você vai
    escrever um programa que recebe um vetor como acima, e devolve o número
    mínimo de andares que devem ser construídos para satisfazer esta nova lei.
*/

#include <iostream>
using namespace std;

int max(int *inicio, int *fim)
{
    int var = *inicio;
    while(inicio != fim)
    {
        if(var > *inicio)
        {
            ++inicio;
        }
        else
        {
            var = *inicio;
            ++inicio;
        }
    }
    return var; 

}
int main () 
{
    int andares [5];
    int cont = 0;
    int predios = 1;

    for (cont=0; cont <5; ++cont)
    {

        cout << "\nDigite o numero de andares do predio " << predios << "\n";
        cin >> andares[cont];
        ++predios;
    }
    cout << "\n";
    int maior = max(andares, andares+5);
    int result [5];
    cont=0;

    for (cont=0; cont <5; ++cont)
    {
        result[cont] = maior - andares[cont];
    }
    cont=0;
    predios=1;
    
    for (cont=0; cont <5; ++cont)
    {
         cout << "O numero de andares que o predio " << predios <<  " deve construir para se adequar com a nova lei da rua equivale a: " << result[cont] << "\n";
        ++predios;
    }
}