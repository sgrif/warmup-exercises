# Transcribing DNA into RNA

An RNA string is a string formed from the alphabet containing 'A', 'C', 'G', and 'U'.

Given a DNA string t corresponding to a coding strand, its transcribed RNA string u is formed by replacing all occurrences of 'T' in t with 'U' in u.

Write a program that can translate a given DNA string to the transcribed RNA string corresponding to it.

```ruby
dna = DNA.new("GATGGAACTTGACTACGTAAATT").to_rna
# => "GAUGGAACUUGACUACGUAAAUU"
```
