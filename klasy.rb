#zacznijmy nasz scrypt od zadeklarowania klasy
#dodatkowo klase trzeba zamknąć end
class Kot
end

#do tej klasy trzeba będzie dodać jakiś inicjalizator
class Kot
	def initialize
		print "Kot zostal dodany\n"
	end
	
end
#teraz warto dodać do tego wywołanie
$kot = Kot.new
#=>Kot został dodany
#i ta klasa zostanie wywołana w momencie deklaracji Kot.new
#warto by było dodać do tego nową metodę np koty lubią mleko
class Kot
def initialize
		print "Kot zostal dodany\n"
	end
def mleko
		print "Kot dostal mleko\n"
	end
end
#aby to wywołać wystarczy dodać
$kot.mleko
#=>kot dostal mleko
#a teraz załóżmy ze koty maja 7 żyć
$zycie= 7
class Kot
def initialize
		print "Kot zostal dodany\n"
	end
def mleko
		print "Kot dostal mleko\n"
	end
def zycie
		
		print ("ten kot ma :")
		print $zycie
		print (" zyc\n")
	end
end	
$kot.zycie
#=>ten kot ma : 7 zyc
#wiemy ze koty spadaja na 4 łapy i załóżmy ze traca przez to 1 życie
class Kot
$zycie= 7
def initialize
		print "Kot zostal dodany\n"
	end
def mleko
		print "Kot dostal mleko\n"
	end
def zycie
		
		print ("ten kot ma :")
		print $zycie
		print (" zyc\n")
	end
def utrata(y)
		if y== 1
		$zycie = $zycie - 1
		print"niestety twoj kot spadl na cztery łapy\n"
		print "kot ma teraz:"
		print $zycie
		end
		
	end
end
$kot.utrata(1)
#$x=7 sprawia ze zmienna x jest zmienna globalna co oznacza ze moge jej uzywac do jakiej chce funkcji
#jedyny warunek to dodac przed x'a znaczek $
#a teraz co robi funkcja utrata po pierwsze zostanie ona aktywowana gdy warunek zostanie spelniony czyli y = 1 i przez to kot spadl na 4 lapy
#i kot stracil 1 zycie

#A teraz zajmijmy się inna rzecza a dokladnie metoda
#deklaruje sie to w taki o to sposob
module kod
end
#i w zasadzie mamy gotowa metode
#aby do niej dodac funkcje musimy dodac przed nazwa self.
module Kod
  def self.pocztowy
    print "nr kodu\n"
  end
end

#aby wywołać tą metode nalezy wpisac
Kod.pocztowy
#=> nr kodu
#dodatkowo warto zaznaczyc ze w tej chwili nasza klasa "pocztowy jest publiczna jesli chcemy zeby byla prywatna wystarczy dodac private
module Kod
  def self.pocztowy
    print "nr kodu\n"
  end
  private
  def self.telefon
    print "45674321\n"
  end
end
Kod.telefon
#=>45674321
#ok warto zauwazyc ze to self nie koniecznie ladnie wyglada wiec mozna by to usunac
module Kod
  def pocztowy
    print "nr kodu\n"
  end
  private
  def telefon
    print "45674321\n"
  end
end
#i gdy bysmy chcieli to wywolac teraz
Kod.pocztowy
Kod.telefon
#=>undefined method 'pocztowy for Kod:Module (NoMethodError)
#oczywiscie jest sposob nawet na to
module Kod
  def pocztowy
    print "nr kodu\n"
  end
  module_function :pocztowy
  private
  def telefon
    print "45674321\n"
  end
  module_function :telefon
end
Kod.pocztowy
Kod.telefon
#po dopisaniu pod funkcja module_function :nazwa sprawia ze nie musimy dodawac self. 
#a to :nazwa oznacza ze dziedziczy ta nazwe i jestesmy w stanie ja wykonac
#=>nr kodu
#=>45674321
