require_relative '../lib/matematyka.rb' 


describe "#dodaj" do
  it "sprawdzamy czy wywali blad" do
    expect{dodaj(1,2)}.not_to raise_error
  end
  it "sprawdzamy poprawnosc" do
    expect(dodaj(1,2)).to eq(3)
	expect(dodaj(1,2)).to be_a_kind_of Fixnum
	expect(dodaj(1,2)).not_to eq(0)
  end
end

describe "#odejmij" do
  it "sprawdzamy czy wywali blad" do
    expect{odejmij(1,2)}.not_to raise_error
  end
  it "sprawdzamy poprawnosc" do
    expect(odejmij(5,2)).to eq(3)
	expect(odejmij(5,2)).to be_a_kind_of Fixnum
	expect(odejmij(5,2)).not_to eq(0)
  end
end

describe "#pomnoz" do
  it "sprawdzamy czy wywali blad" do
    expect{pomnoz(5,2)}.not_to raise_error
  end
  it "sprawdzamy poprawnosc" do
    expect(pomnoz(5,2)).to eq(10)
	expect(pomnoz(5,2)).to be_a_kind_of Fixnum
	expect(pomnoz(5,2)).not_to eq(0)
  end
end

describe "#podziel" do
  it "sprawdzamy czy wywali blad" do
    expect{podziel(6,2)}.not_to raise_error
  end
  it "sprawdzamy poprawnosc" do
    expect(podziel(6,2)).to eq(3)
	expect(podziel(6,2)).to be_a_kind_of Fixnum
	expect(podziel(6,2)).not_to eq(0)
  end
end

describe "#poteguj" do
  it "sprawdzamy czy wywali blad" do
    expect{poteguj(6,2)}.not_to raise_error
  end
  it "sprawdzamy poprawnosc" do
    expect(poteguj(6,2)).to eq(36)
	expect(poteguj(6,2)).to be_a_kind_of Fixnum
	expect(poteguj(6,2)).not_to eq(0)
  end
end
