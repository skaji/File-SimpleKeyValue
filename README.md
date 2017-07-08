[![Build Status](https://travis-ci.org/skaji/Text-SimpleKeyValue.svg?branch=master)](https://travis-ci.org/skaji/Text-SimpleKeyValue)

# NAME

Text::SimpleKeyValue - text based simple key value format

# SYNOPSIS

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

# DESCRIPTION

Text::SimpleKeyValue is a text based simple key value format.
It looks like:

    key1
      value line1
      value line2
    key2
      value line1
    ...

# MOTIVATION

TBD

# AUTHOR

Shoichi Kaji <skaji@cpan.org>

# COPYRIGHT AND LICENSE

Copyright 2017 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
