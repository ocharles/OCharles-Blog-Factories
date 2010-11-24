package Flight::Holiday;
use Moose;
use namespace::autoclean;

with 'Flight';

has 'passengers' => (
    is => 'ro',
    required => 1,
    isa => 'ArrayRef',
);

sub understands {
    my ($class, $data) = @_;
    return exists $data->{passengers};
}

1;
