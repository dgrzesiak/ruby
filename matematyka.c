#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */



int main(int argc, char *argv[]) {
	int wartosc,a,b,wzor,n;
	double x,y,wynik;
	while(wartosc<=5){
	printf ("Podaj co chcesz zrobiæ:\n1.Dodawanie\n2.Odejmowanie\n3.Mnozenie\n4.Dzielenie\n5.Potegowanie\n6.wyjscie\n");
	printf("Podaj opcje:");
	scanf("%i",&wartosc);
	switch (wartosc)
	{
		case 1:
			printf("\nDodawanie\n");
			printf("\nPodaj pierwsza wartosc:");
			scanf("%i",&a);
			printf("\nPodaj druga wartosc:");
			scanf("%i",&b);
			wzor=a+b;
			printf("\n%i+%i=%i\n",a,b,wzor);
		break;
		
		case 2:
			printf("\nOdejmowanie\n");
			printf("\nPodaj pierwsza wartosc:");
			scanf("%i",&a);
			printf("\nPodaj druga wartosc:");
			scanf("%i",&b);
			wzor=a-b;
			printf("\n%i-%i=%i\n",a,b,wzor);
		break;
		
		case 3:
			printf("\nMnozenie\n");
			printf("\nPodaj pierwsza wartosc:");
			scanf("%i",&a);
			printf("\nPodaj druga wartosc:");
			scanf("%i",&b);
			wzor=a*b;
			printf("\n%i*%i=%i\n",a,b,wzor);
		break;
		
		case 4:
			printf("\nOdejmowanie\n");
			printf("\nPodaj pierwsza wartosc:");
			scanf("%lf",&x);
			printf("\nPodaj druga wartosc:");
			scanf("%lf",&y);
			wzor=x/y;
			printf("\n%lf/%lf=%lf\n",x,y,wynik);
		break;
		
		case 5:
			printf("\nPotegowanie\n");
			printf("\nPodaj pierwsza wartosc:");
			scanf("%i",&a);
			printf("\nPodaj druga wartosc:");
			scanf("%i",&b);
			wzor=1;
			n=b;
				while (b > 0){
					wzor = wzor * a;
					b--;
				}
			printf("\n%i^%i=%i\n",a,n,wzor);
		break;
		
		default:
			printf("Koniec programu.");
			break;
	}
}
	return 0;
}
