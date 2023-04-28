class Solver
  def factorial(num)
    raise 'Input values should be whole numbers' if num.negative?

    output = 1
    i = 1
    while i <= num
      output *= i
      i += 1
    end
    output
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
