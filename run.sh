
# Run normally
mafft --nuc --clustalout input/10.gappy.fasta > output/10.gappy.clu

# Run with MARS
bin/mars -a DNA -m 0 -i input/10.gappy.fasta -o input/10.gappy-shifted.fasta -q 5 -l 20 -P 1

# Run with Clustalo
mafft --nuc --clustalout input/10.gappy-shifted.fasta > output/10.gappy-shifted.clu

# Format inputs
python format_inputs.py

# Run with Clustalo
mafft --nuc --clustalout input/circular.fasta > output/circular.clu

mafft --nuc --clustalout input/circular-shifted.fasta > output/circular-shifted.clu

# Fix with mars
bin/mars -a DNA -m 0 -i input/circular-shifted.fasta -o input/circular-shifted-fixed.fasta -q 5 -l 20 -P 1

mafft --nuc --clustalout input/circular-shifted-fixed.fasta > output/circular-shifted-fixed.clu