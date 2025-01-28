# Anjali Narang s1328134
# CS 371-01
# Scripting Languages
# Spring 2025

 # The english.sorted file contains a list of words of variable length. 
 # Write perlex1.pl to find the number of occurrences of each word length in english.sorted. 
 # That is, find and print the number of words in english.sorted that are one character long, 
 # two characters long, three characters long and so on. 

# Hash implementation
# wrote before 1/28 class

my $filename = "english.sorted";

# open in read mode or print error if can't open
open(my $file, "<", $filename) or die "Cannot open $filename";

my $wordLengths; # hash to map lengths as key to count

while (my $line = <$file>) {
   chomp($line); # remove newline character at the end
   $wordLengths{length($line)}++; # add 1 to the corresponding count in hash
}

close($file); # do not need the file anymore

print "Word length \t Occurrences \n\n"; # column headers

# below I sort keys based on numerical order
foreach my $length (sort {$a <=> $b} keys %wordLengths) { # for each key in the hash
	print "$length \t\t $wordLengths{$length} \n";
}

# Array implementation 
# to reflect 1/28 class implementation
# difference in output is that it includes the 0 for 26

open($file, "<", $filename) or die "Cannot open $filename";

while (my $line = <$file>) {
	chomp($line);
	my $length = length($line);
   # creating array on the fly
	$wordLengthsArray[$length]++; # add 1 to value at corresponding index
}

close($file);

print "\nWord length \t Occurrences \n\n";

for (my $length = 1; $length <= $#wordLengthsArray; $length++) { # $# gets the index of last element

   if (exists $wordLengthsArray[$length]) {
		print "$length \t\t $wordLengthsArray[$length] \n";
	} else {
		print "$length \t\t 0 \n"; # avoid printing empty values; instead print 0, as in count = 0
	}

}