require 'calculator'

describe Calculator, ' - Classe calculadora' do
  subject(:calc) { described_class.new }

  describe "#sum" do
    context 'with positive numbers' do
      it 'should return positive' do
        result = calc.sum(5, 6)

        expect(result).to be_eql(11)
      end
    end

    context 'with negative numbers' do
      it 'should return negative' do
        result = calc.sum(-5, -7)

        expect(result).to be_eql(-12)
      end
    end

    context 'with positive and negative numbers' do
      it 'should return positive' do
        result = calc.sum(-5, 8)

        expect(result).to be_eql(3)
      end

      it 'should return negative' do
        result = calc.sum(-5, 3)

        expect(result).to be_eql(-2)
      end
    end
  end

  describe "#div" do
    it 'should return exception on division by zero' do
      # scenario = ->{ calc.div(2, 0) }
      # expect(scenario).to raise_exception(ZeroDivisionError)
      expect{ calc.div(2, 0) }.to raise_exception(ZeroDivisionError)
      expect{ calc.div(2, 0) }.to raise_error(ZeroDivisionError)
      expect{ calc.div(2, 0) }.to raise_error('divided by 0')
      expect{ calc.div(2, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect{ calc.div(2, 0) }.to raise_error(/divided/)
    end
  end
end
