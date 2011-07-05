# Forage

Grep for Nucleotide FASTA files. Converts [IUPAC ambigious nucleotides](http://en.wikipedia.org/wiki/Nucleic_acid_notation) to regex.

Warning: Still in early beta. Request features by clicking on "ISSUES" or, \*sigh\*, email me.

# Usage

    bin/forage.rb sequences.fasta GAAYYAATTACAANA-B > output

This will print any sequence that matches the query. If there is more than one match, then multiple fasta records will be printed (each with an increasing number in the header).