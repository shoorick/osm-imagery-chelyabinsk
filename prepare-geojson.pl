#!/usr/bin/perl

print 'var bing = ';
while (<>) {
    s/LineString/Polygon/;
    s/("coordinates": \[)/$1\[/;
    s/^(                \])/$1]/;
    print;
}
