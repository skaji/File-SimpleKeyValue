package Text::SimpleKeyValue::Writer;
use strict;
use warnings;

our $VERSION = '0.001';

sub new {
    my ($class, %option) = @_;
    my $fh = $option{fh} || do {
        open my $fh, ">", $option{file} or die "$option{file}: $!";
        $fh;
    };
    bless { fh => $fh }, $class;
}

sub write {
    my ($self, $key, $value) = @_;
    syswrite $self->{fh}, join '', "$key\n", map { "  $_\n" } split /\n/, $value;
}

1;
