#pip install pyfaidx
cd hg38_major/fastas
cp ../hg38_major.fa ./
faidx -x hg38_major.fa
rm hg38_major.fa
rm hg38_major.fa.fai

cd hg38_minor/fastas
cp ../hg38_minor.fa ./
faidx -x hg38_minor.fa
rm hg38_minor.fa
rm -rf hg38_minor.fa.fai