require 'execution'

describe '#my_min_quad' do
  it 'finds the smallest number in a list' do
    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    expect(my_min_quad(list)).to eq(-5)
  end
end

describe '#my_min_linear' do
  it 'finds the smallest number in a list' do
    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    expect(my_min_linear(list)).to eq(-5)
  end
end
