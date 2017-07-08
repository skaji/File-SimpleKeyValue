package Text::SimpleKeyValue;
use strict;
use warnings;

our $VERSION = '0.001';

1;
__END__

=encoding utf-8

=head1 NAME

Text::SimpleKeyValue - text based simple key value format

=head1 SYNOPSIS

  use Text::SimpleKeyValue::Writer;
  use Text::SimpleKeyValue::Reader;

  my $writer = Text::SimpleKeyValue::Writer->new(file => "kv.txt");
  my $command = "perl -V";
  my $stdout  = `$command`;
  $writer->write(command => $command);
  $writer->write(stdout  => $stdout);

  my $reader = Text::SimpleKeyValue::Reader->new(file => "kv.txt");
  my @key = $reader->keys; # ('command', 'stdout')
  $reader->get("command"); # $command
  $reader->get("stdout");  # $stdout

=head1 DESCRIPTION

Text::SimpleKeyValue is a text based simple key value format.
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
