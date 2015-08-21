class Complement
  VERSION = 1

  def self.of_dna(rna)
    raise ArgumentError unless (rna.split("") - 'GCTA'.split("")).empty?
    rna.tr('GCTA', 'CGAU')
  end

  def self.of_rna(dna)
    raise ArgumentError unless  (dna.split("") - 'CGAU'.split("")).empty?
    dna.tr('CGAU', 'GCTA')
  end

end
