#include<iostream>
#include<cstdlib>
using namespace std;
 
void sortowanie_babelkowe(int tab[],int n)
{
  int pom;
 
  for(int i=0;i<n;i++)
    for(int j=0;j<n-i-1;j++) //pętla wewnętrzna
    if(tab[j]>tab[j+1])
    {
      //zamiana miejscami
      pom = tab[j];
      tab[j] = tab[j+1];
      tab[j+1] = pom;
    }
}
 
int main()
{
  int *tab, n;
 
  cout<<"Ile liczb będziesz chciał posortowac: ";
  cin>>n;
  cout<<"Podaj te liczby:";
 
  tab = new int [n]; //przydzielenie pamięci na elementy tablicy
  //wczytanie liczb
  for(int i=0;i<n;i++)
    cin>>tab[i];
 
  sortowanie_babelkowe(tab,n);
	cout<<"Twoje posortowane liczby:";
  //wypisanie posortowanych elementów
  for(int i=0;i<n;i++)
          cout<<tab[i]<<" ";
 
  cout<<endl;
  system("pause");
  return 0;
}
