# Anjali Narang s1328134
# CS 371-01 Scripting Languages
# Spring 2025

# perlex2-regex.pl
# Exercise 2:  Extract all the words of 7 characters or less from english.sorted and save them to new word list file.
# This time, use regex.

printf "%-10s %s\n", "Word", "Word Lengths";

while (my $word = <STDIN>) {
	chomp($word);
    if ($word =~ /^.{1,7}$/) { # match any character except newline 1-7 times from beginning to end of string
        # if not counting apostraphes, you can instead do /^{A-Za-z}{1-7}$/
        printf "%-10s %d\n", $word, $length;
    }
}

# to run in terminal: perl -w perlex2.pl < ../english.sorted > short.words