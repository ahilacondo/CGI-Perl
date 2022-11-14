#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q = new CGI;
#Proceso para cambiar los espacios por + como en la url de Google
my $differentWords = $q->param('differentWords');
$differentWords = join("+", split(" ",$differentWords));

my $wordsExactly = $q->param('wordsExactly');
$wordsExactly = join("+", split(" ", $wordsExactly));

my $anyWord = $q->param('anyWord');
$anyWord = join("+", split(" ", $anyWord));

print $q->redirect("https://www.google.com/search?as_q=$differentWords&as_epq=$wordsExactly&as_oq=&as_eq=$anyWord");