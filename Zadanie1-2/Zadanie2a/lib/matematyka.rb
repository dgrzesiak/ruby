
  def dodaj(x,y)
    return x+y
  end
  def odejmij(x,y)
	return x-y
  end
  def pomnoz(x,y)
	iloczyn = 0
	while x > 0
      iloczyn=iloczyn+y
      x=x-1	 
    end
    return iloczyn
  end
  def podziel(x,y)
	return x/y
  end
  def poteguj(x,y)
	result = 1
	n=y
      while y > 0
		result = result * x
		y -= 1
      end
	return result
  end
  
require 'test/unit'

