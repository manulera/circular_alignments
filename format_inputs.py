from Bio import SeqIO
from pydna.parsers import parse

plasmid = parse("input/example.gb")[0]
plasmid = plasmid.looped()
chromatogram = SeqIO.read("input/example.ab1", "abi")

# Write both sequences to a FASTA file
with open("input/circular.fasta", "w") as output_handle:
    SeqIO.write([chromatogram, plasmid], output_handle, "fasta")

with open("input/circular-shifted.fasta", "w") as output_handle:
    SeqIO.write([chromatogram, plasmid.shifted(700)], output_handle, "fasta")
