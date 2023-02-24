require 'calculator'

describe Calculator do
  it 'should return the sum of two numbers' do
    result = Calculator.new.sum(5 ,6)

    expect(result).to be_eql(11)
  end

  it 'should return the sum of two numbers even when there are negative numbers' do
    result = Calculator.new.sum(-5 ,6)

    expect(result).to be_eql(1)
  end
end
