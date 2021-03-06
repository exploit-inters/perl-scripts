#!/usr/bin/perl

# Configurable Parameters 

# Modify the $chars to add/remove allowed/disallowed chars
$chars = "abcdefghijklmnopqrstuvwxyz.@$01234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ"; 

# Modify the minimum and maximum length of passwords 
$lmin = 4;
$lmax = 10;


# Non configurable Parameters 
$pass;
$pass_len = 0;

# Script 
$pass_len = rand($lmax) while ($pass_len < $lmin);
$pass.= (split(//, $chars))[rand(length $chars)] while (--$pass_len >= 0);

print "$pass";