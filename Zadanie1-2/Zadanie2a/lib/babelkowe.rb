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
return tab
end

  
