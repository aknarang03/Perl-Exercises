# Anjali Narang
# CS-371
# Scripting Languages
# Spring 2025

 # The english.sorted file contains a list of words of variable length. 
 # Write perlex1.pl to find the number of occurrences of each word length in english.sorted. 
 # That is, find and print the number of words in english.sorted that are one character long, 
 # two characters long, three characters long and so on. 

my $inputFile = "english.sorted"; # since it's declared outside of a loop/such, it will exist throughout 
# the file

open(my $fh, "<", $inputFile) or die "Cannot open $inputFile"; 

# test (delete)
$firstline = <$fh>; 
print "$firstline\n"; 

# going to make a hash map that maps length as key to count. whenever we find another occurrence
# of a length, we add to the count.

while (my $line = <$fh>) { # $line will be local to this block b/c it's a loop
   print $line # test
   
}

