class Prime

  def nth(num)
    return 2 if num == 1
    list = (2..num).to_a
    primes = (2..(Math.sqrt(num).to_i)).to_a
    puts list
    puts primes
    primes.each_with_index do |prime, index|
      next unless list[prime]
      primes.delete(i) unless i % list[index] == 0
    end
    primes
  end

  private
  def is_prime?(number)
    limit = Math.sqrt(number)

    @@primes.each do |prime|
      break if prime > limit
      return false if (number % prime).eql? 0
    end

    true
  end


end
