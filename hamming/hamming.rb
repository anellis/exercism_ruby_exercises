class Hamming
  VERSION = 1

  def self.compute(a_strand, b_strand)
    raise ArgumentError unless a_strand.length == b_strand.length
    (0...a_strand.length).count {|index| a_strand[index] != b_strand[index]}
  end
end
