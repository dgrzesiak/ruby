require_relative '../lib/babelkowe.rb' 

describe "#babelkowe" do
  
  it "sprawdzamy czy wywali blad" do
  tab = [3,2,1]
	expect{babelkowe(tab)}.not_to raise_error
  end
  it "sprawdzamy czy sortuje poprawnie" do
  tab = [3,2,1,-4,0]
    expect(babelkowe(tab)).to eq([-4,0,1,2,3])
  end
end
