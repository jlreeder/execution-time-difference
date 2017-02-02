require 'execution'

describe '#my_min' do
  it 'finds the smallest number in a list' do
    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    expect(my_min(list)).to eq(-5)
  end
end
