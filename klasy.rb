#zacznijmy nasz scrypt od zadeklarowania klasy
#dodatkowo klase trzeba zamknąć end
#pamietaj ze nazwa klasy musi byc z duzej litery! bo inaczej wywali blad
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

#$kot.mleko

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
	
#$kot.zycie

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
    print "ten kot ma: ",$zycie," zyc\n"
  end
  def utrata(y)
    if y== 1
    $zycie = $zycie - 1
    print"niestety twoj kot spadl na cztery lapy\n","kot ma teraz: ",$zycie,"\n"
    end
  end
end

#$kot.utrata(1)

#$x=7 sprawia ze zmienna x jest zmienna globalna co oznacza ze moge jej uzywac do jakiej chce funkcji
#jedyny warunek to dodac przed x'a znaczek $
#a teraz co robi funkcja utrata po pierwsze zostanie ona aktywowana gdy warunek zostanie spelniony czyli y = 1 i przez to kot spadl na 4 lapy
#i kot stracil 1 zycie
