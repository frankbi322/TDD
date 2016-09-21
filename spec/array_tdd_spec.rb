require 'array_tdd'
require 'rspec'


describe "#my_uniq" do

  it 'returns unique elements' do
    expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
  end

  it 'returns empty array for an empty array' do

  end

  it "doesn't mutate the original array" do

  end

  it 'works for multiple elements in the array' do

  end

end

describe "#two_sum" do
  context 'when no pair of elements sum to zero' do
    it 'returns empty array' do
      expect([1,2,3,4,5].two_sum).to eq([]) #to be_empty
    end
  end

  it 'works for an empty array' do

  end

  context 'when a pair exists' do
    it 'returns the pairs indices' do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
    end
  end

  it 'works when an element is zero' do

  end

  it 'works for floats' do

  end

end

describe '#my_transpose' do

  it 'rotates the array' do
    expect(my_transpose([[0,1,2],[3,4,5],[6,7,8]])).to eq([[0,3,6],[1,4,7],[2,5,8]])
  end
end

describe '#stock_picker' do

  it 'picks the optimal pair of days' do
    expect(stock_picker([10,12,9,16,20,10,11])).to eq([2,4])
  end

  it 'picks the earlier days if two pairs have the same profit' do
    
  end

  it 'buys and sells on the first day if the stock only goes down' do
    expect(stock_picker([20,19,18,17,16])).to eq([0,0])
  end

end
