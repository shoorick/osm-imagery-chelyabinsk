#!/usr/bin/perl

my ( $var ) = $ARGV[0] =~ /^(\w+)/;
print "var $var = ";
while (<>) {
    s/LineString/Polygon/;
    s/("coordinates": \[)/$1\[/;
    s/^(                \])/$1]/;
    print;
}
