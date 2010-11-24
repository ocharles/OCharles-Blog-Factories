package FlightFactory;

use strict;
use warnings;

use Flight::Cargo;
use Flight::Holiday;

sub new_flight {
    my ($self, $data) = @_;

    my @subclasses = qw(
        Flight::Cargo
        Flight::Holiday
    );
    for my $subclass (@subclasses) {
        return $subclass->new($data)
            if $subclass->understands($data);
    }

    die "I don't know how to create this type of Flight";
}

1;
