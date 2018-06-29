#PBS -P xe2
#PBS -q expressbw
#PBS -l walltime=06:00:00
#PBS -l mem=31GB
#PBS -l jobfs=400GB
#PBS -l ncpus=28
#PBS -l wd
#PBS -m abe
#PBS -M  james.kondilios@anu.edu.au

for d in /g/data/xe2/projects/james_directory/CurrencyCreekSequences/180620_A00152_0040_AHFWNYDMXX_JON5154_20180621_userprep_Currency_creek_CC01_2/JON5154_20180621_userprep_Currency_creek_CC01_2/*/ ; do
prefix=$( ls $d | head -n 1 | awk -F_R '{print $1}')
seqhax pecheck -o /g/data/xe2/projects/james_directory/CurrencyCreekSequences/interleaved/$prefix $d*R1_001.fastq.gz $d*R2_001.fastq.gz -t 28 &
done
