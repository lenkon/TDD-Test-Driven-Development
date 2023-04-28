require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context '#factorial' do
    it 'factorial of 0 should return 1' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'factorial of 6 should return 720' do
      expect(@solver.factorial(6)).to eq(720)
    end
    it 'negative integers should raise error' do
      expect { @solver.factorial(-1) }.to raise_error('Input values should be whole numbers')
    end
  end

  context '#reverse' do
    it 'reverse of a string should return the reverse of the string' do
      expect(@solver.reverse('may')).to eq('yam')
      expect(@solver.reverse('god')).to eq('dog')
    end
  end

  context '#fizzbuzz' do
    it 'divisible by 3' do
      expect(@solver.fizzbuzz(21)).to eq('fizz')
    end

    it 'divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'divisible by both 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(1)).to eq('1')
    end
  end
end
