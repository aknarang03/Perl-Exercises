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

open(my $fh, "<", $inputFile) or die "Cannot open $inputFile"; # open in read mode or print error if can't open

# going to make a hash that maps length as key to count. whenever we find another occurrence
# of a length, we add to the count.

my $wordLengths; # hash

while (my $line = <$fh>) { # $line will be local to this block b/c it's a loop
   chomp($line); # to get rid of new line character at end.. otherwise there are no 1 letter words
   $wordLengths{length($line)}++;  # add 1 to the corresponding count in hash
}

print "length 3: ".$wordLengths{3}."\n"; # test
print "length 1: ".$wordLengths{1}; # test; outputs 26 b/c the file has all 26 singular letters

# close the file?