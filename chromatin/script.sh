ml ucsc-utils
ml BEDTools
cd /gstore/data/omni/crispr/CRISPRai/large_data_files

bigWigToBedGraph wgEncodeOpenChromDnaseK562BaseOverlapSignalV2.bigWig output.bed
liftOver output.bed hg19ToHg38.over.chain output_hg38.bed unMapped
LC_COLLATE=C sort -k1,1 -k2,2n output_hg38.bed > output_hg38_sorted.bed
bedtools merge -i output_hg38_sorted.bed -c 4 -d -1 -o max > output_hg38_sorted_merged.bed
bedGraphToBigWig output_hg38_sorted_merged.bed hg38.chrom.sizes dnase_hg38.bw
rm -rf output.bed
rm -rf output_hg38.bed
rm -rf output_hg38_sorted.bed
rm -rf output_hg38_sorted_merged.bed
rm -rf unMapped

bigWigToBedGraph wgEncodeOpenChromFaireK562Sig.bigWig output.bed
liftOver output.bed hg19ToHg38.over.chain output_hg38.bed unMapped
LC_COLLATE=C sort -k1,1 -k2,2n output_hg38.bed > output_hg38_sorted.bed
bedtools merge -i output_hg38_sorted.bed -c 4 -d -1 -o max > output_hg38_sorted_merged.bed
bedGraphToBigWig output_hg38_sorted_merged.bed hg38.chrom.sizes faire_hg38.bw
rm -rf output.bed
rm -rf output_hg38.bed
rm -rf output_hg38_sorted.bed
rm -rf output_hg38_sorted_merged.bed
rm -rf unMapped


bigWigToBedGraph wgEncodeSydhNsomeK562Sig.bigWig output.bed
liftOver output.bed hg19ToHg38.over.chain output_hg38.bed unMapped
LC_COLLATE=C sort -k1,1 -k2,2n output_hg38.bed > output_hg38_sorted.bed
bedtools merge -i output_hg38_sorted.bed -c 4 -d -1 -o max > output_hg38_sorted_merged.bed
bedGraphToBigWig output_hg38_sorted_merged.bed hg38.chrom.sizes nsome_hg38.bw
rm -rf output.bed
rm -rf output_hg38.bed
rm -rf output_hg38_sorted.bed
rm -rf output_hg38_sorted_merged.bed
rm -rf unMapped






