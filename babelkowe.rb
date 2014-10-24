module Sortowanie
  def self.babelkowe(tab)
    k = tab.length
	while k > 1
	j = 0
	  while j < k - 1 do
	    if tab[j] > tab[j+1]
	      pom = tab[j] 
		    tab[j] = tab[j+1] 
		    tab[j+1] = pom 
      end
	    j = j + 1
	  end
	  k-=1
	end
	puts tab
  end
end

begin
  print "Podaj dlugosc ciagu liczb:"
  n2=gets.chomp!
  n=n2.to_i
  tab = []
  print "\nPodaj te liczby:\n"
  while n > 0
    tab << liczba2=gets.chomp!
	liczba = liczba2.to_i
    n = n-1
  end
  print "\nO to wartości w twojej tablicy przed sortowaniem:\n"
  puts tab
  print "\nTablica posortowana:\n"
  Sortowanie.babelkowe(tab)
end
