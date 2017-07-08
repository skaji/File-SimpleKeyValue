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
An example is here [sample-kv.txt](https://gist.github.com/skaji/c0bf8f83eb50bb1e63bb426b7ae98885).

# MOTIVATION

TBD

# AUTHOR

Shoichi Kaji <skaji@cpan.org>

# COPYRIGHT AND LICENSE

Copyright 2017 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
