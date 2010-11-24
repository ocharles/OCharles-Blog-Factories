package FlightFactory;

use strict;
use warnings;

use Module::Pluggable search_path => 'Flight', sub_name => 'classes';
use Flight::Cargo;
use Flight::Holiday;

sub new_flight {
    my ($self, $data) = @_;

    for my $subclass ($self->classes) {
        return $subclass->new($data)
            if $subclass->understands($data);
    }

    die "I don't know how to create this type of Flight";
}

1;
