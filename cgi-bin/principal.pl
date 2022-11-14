#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q = new CGI;
my $target = $q->param('search');
#Proceso para cambiar los esespacios por +
$target = join("+", split(" ", $target));

print $q->redirect("https://www.google.com.pe/search?q=$target&source=hp");
