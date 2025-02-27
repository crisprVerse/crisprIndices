module load blast
mv gencode.v34.transcripts.fa gencode_human_v34_cdna.fa
makeblastdb -in gencode_human_v34_cdna.fa -dbtype nucl -out gencode_human_v34_cdna