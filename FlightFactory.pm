package FlightFactory;

use strict;
use warnings;

use Flight::Cargo;
use Flight::Holiday;

sub new_flight {
    my ($self, $data) = @_;

    if (exists $data->{cargo}) {
        return Flight::Cargo->new($data);
    }
    elsif (exists $data->{passengers}) {
        return Flight::Holiday->new($data);
    }
    else {
        die "I don't know how to create this type of Flight";
    }
}

1;
