package Flight::Cargo;
use Moose;
use namespace::autoclean;

with 'Flight';

has 'cargo' => (
    is => 'ro',
    required => 1,
    isa => 'ArrayRef',
);

1;
