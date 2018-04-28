package File::SimpleKeyValue;
use strict;
use warnings;

our $VERSION = '0.001';

1;
__END__

=encoding utf-8

=head1 NAME

File::SimpleKeyValue - plain file based simple key value format

=head1 SYNOPSIS

  use File::SimpleKeyValue::Writer;
  use File::SimpleKeyValue::Reader;

  my $writer = File::SimpleKeyValue::Writer->new(file => "kv.txt");
  $writer->write(key1 => "value1");
  $writer->write(key2 => "value2");

  my $reader = File::SimpleKeyValue::Reader->new(file => "kv.txt");
  my @key = $reader->keys;           # ("key1", "key2")
  my $value1 = $reader->get("key1"); # "value1"
  my $value2 = $reader->get("key2"); # "value2"

=head1 DESCRIPTION

File::SimpleKeyValue is a plain file based simple key value format.
An example is here L<sample-kv.txt|https://gist.github.com/skaji/c0bf8f83eb50bb1e63bb426b7ae98885>.

=head1 MOTIVATION

TBD

=head1 AUTHOR

Shoichi Kaji <skaji@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2017 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
