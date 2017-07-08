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
It looks like:

   key1
     value line1
     value line2
   key2
     value line1
   ...

=head1 MOTIVATION

TBD

=head1 AUTHOR

Shoichi Kaji <skaji@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2017 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
