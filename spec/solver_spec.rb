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
end
