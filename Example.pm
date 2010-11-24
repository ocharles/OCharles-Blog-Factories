use strict;
use warnings;

use FlightFactory;

my $cargo_flight = FlightFactory->new_flight({ cargo => [ 'Jelly beans' ] });
my $holiday_flight = FlightFactory->new_flight({ cargo => [qw( Bob Tom )] });

use Data::Dumper;
print "Cargo flight:\n";
print Dumper($cargo_flight), "\n\n";

print "Holiday flight:\n";
print Dumper($holiday_flight), "\n";
