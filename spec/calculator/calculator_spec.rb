require 'calculator'

describe Calculator do
  describe "#sum" do
    context 'with positive numbers' do
      it 'should return positive' do
        result = subject.sum(5 ,6)

        expect(result).to be_eql(11)
      end
    end
    context 'with negative numbers' do
      it 'should return negative' do
        result = subject.sum(-5 ,-7)

        expect(result).to be_eql(-12)
      end
    end
    context 'with positive and negative numbers' do
      it 'should return positive' do
        result = subject.sum(-5 ,8)

        expect(result).to be_eql(3)
      end

      it 'should return negative' do
        result = subject.sum(-5 ,3)

        expect(result).to be_eql(-2)
      end
    end
  end
end
