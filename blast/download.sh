mkdir gencode_human_v27_cdna
cd gencode_human_v27_cdna
wget http://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_27/gencode.v27.transcripts.fa.gz
gunzip gencode.v27.transcripts.fa.gz

cd ..
mkdir gencode_mouse_v15_cdna
cd gencode_mouse_v15_cdna
wget http://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M15/gencode.vM15.transcripts.fa.gz
gunzip gencode.vM15.transcripts.fa.gz

mkdir ensembl_cyno_102_cdna
cd ensembl_cyno_102_cdna/
wget http://ftp.ensembl.org/pub/release-102/fasta/macaca_fascicularis/cdna/Macaca_fascicularis.Macaca_fascicularis_5.0.cdna.all.fa.gz
mv Macaca_fascicularis.Macaca_fascicularis_5.0.cdna.all.fa.gz Macaca_fascicularis_5.0.cdna.all.fa.gz
gunzip Macaca_fascicularis_5.0.cdna.all.fa.gz
