require 'pry'
class Raindrops

  def self.convert(num)
    primes = get_primes(num)
    return num.to_s if primes.empty?
    conversions = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
    s = []
    primes.each do |prime|
      s << conversions[prime]
    end
    s.join
  end

  def self.get_primes(num)
    primes = []
    [3,5,7].each {|prime| primes << prime if num.to_i % prime == 0}
    primes
  end
end
