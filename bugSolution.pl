my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

# Solution 1: Iterate over a copy of the keys
foreach my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
    if ($key eq 'b') {
        delete $hash{$key};
    }
}

# Reset the hash for the next solution
%hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

# Solution 2: Use a while loop and an iterator
my $iter = keys %hash;
while (my $key = each %hash) {
    print "Key: $key, Value: $hash{$key}\n";
    if ($key eq 'b') {
        delete $hash{$key};
    }
}

# Solution 3: Create a new hash to avoid errors
my %newHash = ();
foreach my $key (keys %hash) {
    if ($key ne 'b') {
        $newHash{$key} = $hash{$key};
    }
}
%hash = %newHash; 
foreach my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}