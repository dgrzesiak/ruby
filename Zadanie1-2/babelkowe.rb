module Sortowanie
  def babelkowe(tab)
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
  module_function :babelkowe
end


begin
#probowalem zrobic z wczytywaniem danych do tablicy ale niestety przy sortowaniu takie liczby jak 45 byly mniejsze od 5
  tab = [41,5,23,-10,12,-9,14,56]
  print "\nO to wartości w twojej tablicy przed sortowaniem:\n"
  puts tab
  print "\nTablica posortowana:\n"
  Sortowanie.babelkowe(tab)
end
