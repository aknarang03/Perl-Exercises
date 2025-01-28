# Anjali Narang s1328134
# CS 371-01
# Scripting Languages
# Spring 2025

 # The english.sorted file contains a list of words of variable length. 
 # Write perlex1.pl to find the number of occurrences of each word length in english.sorted. 
 # That is, find and print the number of words in english.sorted that are one character long, 
 # two characters long, three characters long and so on. 

my $filename = "english.sorted";

# open in read mode or print error if can't open
open(my $file, "<", $filename) or die "Cannot open $filename";

my $wordLengths; # hash to map lengths as key to count

while (my $line = <$file>) {
   chomp($line); # remove newline character at the end
   $wordLengths{length($line)}++;  # add 1 to the corresponding count in hash
}

close($file) # do not need the file anymore

print “Word length \t Occurrences \n\n”; # column headers

foreach my $length (keys %wordLengths) { # for each key in the hash
	print “$length \t\t $wordLengths{$length} \n”;
}