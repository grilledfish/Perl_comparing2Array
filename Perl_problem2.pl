#!/usr/bin/perl

use strict;
use warnings;

# Complete the compareTriplets function below.
sub compareTriplets {
    my $alice ="";
    my $bob ="";
    my $alice_r =0;
    my $bob_r =0;
    ($alice , $bob) = @_;
for(my $i =0; $i < scalar(@$alice); $i++){
if ($$alice[$i] > $$bob[$i]){
    $alice_r +=1;
} elsif($$alice[$i] < $$bob[$i] ){
    $bob_r +=1;
}
}

return (\$alice_r,\$bob_r); 
}
open(my $fptr, '>', $ENV{'OUTPUT_PATH'});

my $a = rtrim(my $a_temp = <STDIN>);

my @a = split /\s+/, $a;

my $b = rtrim(my $b_temp = <STDIN>);

my @b = split /\s+/, $b;

my $result ="";
my $result2 ="";
($result,$result2) = compareTriplets \@a, \@b;
print $fptr join " " ,($$result,$$result2);

print $fptr "\n";

close $fptr;

sub ltrim {
    my $str = shift;

    $str =~ s/^\s+//;

    return $str;
}

sub rtrim {
    my $str = shift;

    $str =~ s/\s+$//;

    return $str;
}


