BEGIN {
  FS = ";"
  id = 1
  print "#ID	root	superkingdom	phylum	class	order	family	genus	species"
}

/^C/ {
  match($1,/[[:alpha:]]+$/)
  print id"\tRoot\t"substr($1,RSTART,RLENGTH)"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7
  id +=1
}

/^U/ {
  print id"\tRoot\t\t\t\t\t\t\t"
  id +=1
}
