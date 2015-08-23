class Raindrops

  def self.convert(num)
    primes = get_primes(num)
    return num.to_is if primes.empty?
    conversions = {"3" => "Pling", "5" => "Plang", 7 => "Plong"}
    primes.each { }
  end

  def get_primes(num)
    primes = []
    [3,5,7].each {|prime| prime << primes if num % prime == 0}

end
