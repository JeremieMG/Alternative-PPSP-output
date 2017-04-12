# Alternative-PPSP-output
Project to find an alternative output from the PhyloPyhiaS+ software output.

## 1. Run Kaiju
```
kaiju -t nodes.dmp -f kaiju_db.fmi -i inputfile.fastq/fasta
```

## 2. Run addTaxonNames with the resulting output (Kaiju's tool)
```
addTaxonNames -t nodes.dmp -n names.dmp -r superkingdom,phylum,order,class,family,genus,species -i kaiju.out -o kaiju.names.out
```

## 3. Run the awk script with the resulting output (available at https://github.com/JeremieMG/Alternative-PPSP-output)
```
awk -f pps_out.awk kaiju.names.out
```
