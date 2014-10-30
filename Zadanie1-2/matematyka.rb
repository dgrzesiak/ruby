module Matematyka
  def dodaj(x,y)
    print x,"+",y,"=",x+y
	print "\n"
  end
   module_function :dodaj
  def odejmij(x,y)
	print x,"-",y,"=",x-y 
	print "\n"
  end
    module_function :odejmij
  def pomnoz(x,y)
      n=x
	  iloczyn=0
	while x > 0
      iloczyn=iloczyn+y
      x=x-1	  
    end
    print n,"*", y, "=", iloczyn
  end
    module_function :pomnoz
  def podziel(x,y)
    print x,"/",y,"=",x/y
	print "\n"
  end
    module_function :podziel
  def poteguj(x,y)
	result = 1
	n=y
      while y > 0
		result = result * x
		y -= 1
      end
	print x,"^",n,"=",result
	print "\n"
  end
	module_function :poteguj
end

begin
  print "Podaj co chcesz zrobic:\n1.Dodawanie\n2.Odejmowanie\n3.Mnozenie\n4.Dzielenie\n5.Potegowanie\n6.wyjscie\n"
  print "Wybierz opcje:"
  mode = gets.chomp!
    case mode.to_i
      when 1 then print "\nDodawanie\n"			
        print"\nPodaj 1 wartosc:\n"
          a2=gets.chomp!
          a=a2.to_i
        print"\nPodaj 2 wartosc:\n"
          b2=gets.chomp!
          b=b2.to_i
        Matematyka.dodaj(a,b)
      when 2 then print "\nOdejmowanie.\n"		
        print"\nPodaj 1 wartosc:\n"
          a2=gets.chomp!
	  a=a2.to_i
	print"\nPodaj 2 wartosc:\n"
	  b2=gets.chomp!
	  b=b2.to_i
	Matematyka.odejmij(a,b)
      when 3 then print "\nMnozenie.\n"		
        print"\nPodaj 1 wartosc:\n"
	  a2=gets.chomp!
	  a=a2.to_i
	print"\nPodaj 2 wartosc:\n"
	  b2=gets.chomp!
	  b=b2.to_i
	Matematyka.pomnoz(a,b)
      when 4 then print "\nDzielenie.\n"		
	print"\nPodaj 1 wartosc:\n"
	  a2=gets.chomp!
	  a=a2.to_f
	print"\nPodaj 2 wartosc:\n"
	  b2=gets.chomp!
	  b=b2.to_f
	Matematyka.podziel(a,b)
      when 5 then print "\nPotegowanie.\n"		
	print"\nPodaj 1 wartosc:\n"
	  a2=gets.chomp!
	  a=a2.to_i
	print"\nPodaj 2 wartosc:\n"
	  b2=gets.chomp!
	  b=b2.to_i
	Matematyka.poteguj(a,b)
      when 6 then
	print "\nkoniec programu!\n"
      exit
    end
end
