package Flight::Cargo;
use Moose;
use namespace::autoclean;

with 'Flight';

has 'cargo' => (
    is => 'ro',
    required => 1,
    isa => 'ArrayRef',
);

sub understands {
    my ($class, $data) = @_;
    return exists $data->{cargo};
}

1;
