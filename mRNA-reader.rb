switch = 0

p "Enter a mature mRNA sequence. Must have start and stop codon, and total bases in between must be divisible by 3. Any amount of base pairs may be present before or after the start/stop codons(to represent the mRNA cap and tail), this will not effect the output."

response = gets.chomp.upcase
sequence_array = response.split("")
p sequence_array

amino_acid_index = 3
index = 0
third_index = 0
x = 3
while index < sequence_array.length && switch == 0
  if sequence_array[index] == "A" && sequence_array[index + 1] == "U" && sequence_array[index + 2] == "G"
    p "Start Codon at position #{index}"
    while switch == 0
      amino_acids = []
      amino_acids << sequence_array[amino_acid_index]
      amino_acids << sequence_array[amino_acid_index + 1]
      amino_acids << sequence_array[amino_acid_index + 2]
      if (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "A")
        p "Ile at position #{amino_acid_index}"
        amino_acid_index += 3
      
      
      elsif (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "C")
        p "Phe at position #{amino_acid_index}"
        amino_acid_index += 3
      
      
      elsif (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "G") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "G")
        p "Leu at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "U" && amino_acids[third_index + 2] == "G")
        p "Val at position #{amino_acid_index}"
        amino_acid_index += 3

      
      elsif (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "G") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "C")
        p "Ser at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "G")
        p "Pro at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "G")
        p "Pro at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "G")
        p "Thr at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "C" && amino_acids[third_index + 2] == "G")
        p "Ala at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "C")
        p "Tyr at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "C")
        p "His at position #{amino_acid_index}"
        amino_acid_index += 3

      
      elsif (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "G")
        p "Gln at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "C")
        p "Asn at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "G")
        p "Lys at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "C")
        p "Asp at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "G")
        p "Glu at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "C")
        p "Cys at position #{amino_acid_index}"
        amino_acid_index += 3

      elsif (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "G")
        p "Trp at position #{amino_acid_index}"
        amino_acid_index += 3


      elsif (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "C" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "G") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "A" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "G") 
        p "Arg at position #{amino_acid_index}"
        amino_acid_index += 3



      elsif (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "U") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "C") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "G" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "G")
        p "Gly at position #{amino_acid_index}"
        amino_acid_index += 3

      
      elsif (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "A") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "A" && amino_acids[third_index + 2] == "G") || (amino_acids[third_index] == "U" && amino_acids[third_index + 1] == "G" && amino_acids[third_index + 2] == "A")
        p "Stop codon at position #{amino_acid_index}"
        switch = 1
      end
    end
  else
    index += 1
    amino_acid_index += 1
  end
end

