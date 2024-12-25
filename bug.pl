my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

foreach my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}

#This will print out all the keys and values from the hash.
#However if a key is deleted during the loop then the next iteration may fail

delete $hash{'b'};