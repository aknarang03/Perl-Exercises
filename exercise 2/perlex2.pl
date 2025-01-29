# Anjali Narang s1328134
# CS 371-01 Scripting Languages
# Spring 2025

# perlex2.pl
# Exercise 2:  Extract all the words of 7 characters or less from english.sorted and save them to new word list file

# this time, using STDIN instead of read the file directly

printf "%-10s %s\n", "Word", "Word Lengths"; # formatting header so it matches below

while (my $word = <STDIN>) {
	chomp($word);
	my $length = length($word);
    if ($length <= 7) {
        printf "%-10s %d\n", $word, $length; # formatting: left align string with at least 10 spaces reserved; then integer
    }
}

# to run in terminal: perl -w perlex2.pl < ../english.sorted > short.words