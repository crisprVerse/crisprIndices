module load blast
mv gencode.vM25.transcripts.fa gencode_mouse_v25_cdna.fa
makeblastdb -in gencode_mouse_v25_cdna.fa -dbtype nucl -out gencode_mouse_v25_cdna