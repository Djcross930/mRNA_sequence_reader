# mRNA_sequence_reader
Fun little terminal app that takes any viable mature mRNA sequence and returns the location of the start &amp; stop codons, along with the specific protein codons in between.

Example mRNA sequences:

#1 AUCCGAACAUGAAAAGAGCAAUAUUCAACUAAGCUACC

#2 ACUUCGGACAUGAAUCCGCAGGCAUGACCGACU

#3 GGGCAUGAUCGUUGCCGAUGAAGGAAGACUCCCCCAUCAACGGUGGUAAAAUG


# FAQ biology section:

#### Q) What is a mature mRNA molecule?
#### A) A mRNA molecule is directly transcribed from the DNA of an organism (like you!) by a protein called RNA polymerase. It is then processed into a mature mRNA, which means some portions (introns/exons) are removed, and other portions are added (poly A tail and 5' cap). The mRNA is then transferred out of the nucleus to be translated by a ribosome.

#### Q) How does the ribosome recognize the mRNA sequence?
#### A) Evidence suggests that it uses the 5' cap as a recognition site.

#### Q) What happens after the ribosome recognizes the mRNA sequence?
#### A) The ribosome reads the mRNA sequence, similar to a loop, until it reaches AUG. AUG is the only recognized start codon, and this begins the process of translation. Then, the correct tRNA (transfer-RNA) molecule adds the proteins based of the 3 base pairs it reads. It does this by matching it up with its complimentary pairs. For example, ACG's complimentary pair is UGC. This is also known as its anti-codon. It does this until it recognizes a stop codon, then the process halts.
