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
end
