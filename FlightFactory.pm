package FlightFactory;

use strict;
use warnings;

use Module::PluginFinder;
use Flight::Cargo;
use Flight::Holiday;

my $finder = Module::PluginFinder->new(
    search_path => 'Flight',
    filter => sub { 
        my ($class, $data) = @_;
        $class->understands($data)
    }
);

sub new_flight {
    my ($self, $data) = @_;

    return $finder->construct($data, $data)
        or die "I don't know how to create this type of Flight";
}

1;
