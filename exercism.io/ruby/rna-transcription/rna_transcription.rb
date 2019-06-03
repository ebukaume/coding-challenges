module Complement
  DNA_RNA_MAPPING = {
    "G" => "C", 
    "C" => "G", 
    "T" => "A", 
    "A" => "U"}

  DNA = DNA_RNA_MAPPING.keys.join
  RNA = DNA_RNA_MAPPING.values.join
  
  def self.of_dna(dna)
    dna.tr(DNA, RNA)
  end
end
