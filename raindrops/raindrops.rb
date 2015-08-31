require 'pry'
class Raindrops

  def self.convert(num)
    primes = get_primes(num)
    return num.to_s if primes.empty?
    conversions = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
    primes.each_with_object("") { |prime, s| s << conversions[prime] }
  end

  def self.get_primes(num)
    [3,5,7].each_with_object([]) {|prime, a| a << prime if num.to_i % prime == 0}
  end
end
