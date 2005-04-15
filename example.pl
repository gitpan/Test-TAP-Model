#!/usr/bin/perl

use Storable qw/store/;
use Test::TAP::Model;

my $s = Test::TAP::Model->new;

$s->run_tests(@ARGV);

store($s->structure, "example.storable");
