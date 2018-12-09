class FizzBuzz

  def initialize(start, finish)
    @start = start.to_i
    @finish = finish.to_i
  end

  def range
    @finish - @start
  end

  def divisable_by_3(num)
    if (num%3 == 0)
      return true
    else
      return false
    end
  end

  def divisable_by_5(num)
    if (num%5 == 0)
      return true
    else
      return false
    end
  end

  def fizzBuzzArray
    new_array = []
    for i in @start..(@finish)
      if (divisable_by_3(i) === true && divisable_by_5(i) === false)
        new_array.push("Fizz")
      elsif (divisable_by_5(i) === true && divisable_by_3(i) === false)
        new_array.push("Buzz")
      elsif (divisable_by_3(i) === true && divisable_by_5(i) === true)
        new_array.push("FizzBuzz")
      else
        new_array.push(i)
      end
    end
    return new_array
  end

  def fizzBuzzPrint
    puts "#{fizzBuzzArray()}"
  end

end

test = FizzBuzz.new(3,78)
test.fizzBuzzPrint
