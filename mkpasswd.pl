#!/usr/bin/env perl

use strict;
use warnings;
use Hashlib;
my @hashes = ( 'adler32', 'blake', 'bmw', 'cubehash', 'echo', 'edonr',
                'fugue', 'gost', 'groestl', 'hamsi', 'jh', 'keccak', 'luffa',
                'sha2', 'shabal', 'shavite', 'simd', 'skein', 'whirlpool' );
my $hash = Hashlib->new();
my $plain = <STDIN>;
chomp($plain);
foreach my $x (@hashes) {
    my $y = $hash->$x(512, $plain);
    print ($x.': '.$y->{base}."\n");
}
print "All hashes listed.\n"
