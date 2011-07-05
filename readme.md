# Forage

Grep for Nucleotide FASTA files. Converts [IUPAC ambigious nucleotides](http://en.wikipedia.org/wiki/Nucleic_acid_notation) to regex.

[REQUEST A FEATURE](https://github.com/audy/Forage/issues/new) (it's free!)

# Usage

    bin/forage.rb sequences.fasta GAAYYAATTACAANA-B > output

This will print any sequence that matches the query. If there is more than one match, then multiple fasta records will be printed (each with an increasing number in the header).