package File::SimpleKeyValue::Writer;
use strict;
use warnings;

our $VERSION = '0.001';

sub new {
    my ($class, %option) = @_;
    my $fh = $option{fh} || do {
        open my $fh, ">:unix", $option{file} or die "$option{file}: $!";
        $fh;
    };
    bless { fh => $fh }, $class;
}

sub write {
    my ($self, $key, $value) = @_;
    my $fh = $self->{fh};
    my $v = join '', "$key\n", map { "  $_\n" } split /\n/, $value;
    print {$fh} $v;
}

1;
