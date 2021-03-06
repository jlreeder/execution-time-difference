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

describe '#largest_contiguous_subsum' do
  it 'finds the largest contiguous subsum of two nums' do
    list = [5, 3, -7]
    expect(largest_contiguous_subsum(list)).to eq(8)
  end

  it 'finds the largest contiguous subsum of three nums' do
    list = [2, 3, -6, 7, -6, 7]
    expect(largest_contiguous_subsum(list)).to eq(8)
  end

  it 'finds the largest contiguous subsum when negative' do
    list = [-5, -1, -3]
    expect(largest_contiguous_subsum(list)).to eq(-1)
  end
end


describe '#largest_contiguous_subsum2' do
  context 'when there are positive members of the array' do
    it 'finds the largest contiguous subsum of two nums' do
      list = [5, 3, -7]
      expect(largest_contiguous_subsum2(list)).to eq(8)
    end

    it 'finds the largest contiguous subsum of three with neg' do
      list = [2, 3, -6, 7, -6, 7]
      expect(largest_contiguous_subsum2(list)).to eq(8)
    end

    it 'finds the largest contiguous subsum of three with neg simple' do
      list = [7, -6, 7]
      expect(largest_contiguous_subsum2(list)).to eq(8)
    end

    it 'finds the largest contiguous subsum of three positive nums' do
      list = [1, 2, 3]
      expect(largest_contiguous_subsum2(list)).to eq(6)
    end
  end

  context 'when every element is negative' do
    it 'finds the largest contiguous subsum' do
      list = [-5, -1, -3]
      expect(largest_contiguous_subsum2(list)).to eq(-1)
    end
  end
end
