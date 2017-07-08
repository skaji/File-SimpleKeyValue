package Text::SimpleKeyValue::Reader;
use strict;
use warnings;

our $VERSION = '0.001';

sub new {
    my ($class, %option) = @_;
    my $fh = $option{fh} || do {
        open my $fh, "<", $option{file} or die "$option{file}: $!";
        $fh;
    };
    bless { fh => $fh }, $class;
}

sub keys {
    my $self = shift;
    my $fh = $self->{fh};
    seek $fh, 0, 0;
    my %key;
    my $i = 0;
    while (my $line = <$fh>) {
        if (my ($key) = $line =~ /^(\S.*)/) {
            if (exists $key{$key}) {
                warn "WARN: found duplicated key '$key'";
            } else {
                $key{$key} = $i++;
            }
        }
    }
    sort { $key{$a} <=> $key{$b} } keys %key;
}

sub get {
    my ($self, $want) = @_;
    my $fh = $self->{fh};
    seek $fh, 0, 0;
    while (my $line = <$fh>) {
        if (my ($key) = $line =~ /^(\S.*)/) {
            if ($key eq $want) {
                my @value;
                VALUE_LINE:
                while (my $line = <$fh>) {
                    if ($line =~ /^  (.*)/) {
                        push @value, $1;
                    } else {
                        last VALUE_LINE;
                    }
                }
                return join "\n", @value;
            }
        }
    }
    return;
}

1;
