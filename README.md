[![Build Status](https://travis-ci.org/skaji/File-SimpleKeyValue.svg?branch=master)](https://travis-ci.org/skaji/File-SimpleKeyValue)
[![AppVeyor Status](https://ci.appveyor.com/api/projects/status/github/skaji/File-SimpleKeyValue?branch=master&svg=true)](https://ci.appveyor.com/project/skaji/File-SimpleKeyValue)

# NAME

File::SimpleKeyValue - plain file based simple key value format

# SYNOPSIS

    use File::SimpleKeyValue::Writer;
    use File::SimpleKeyValue::Reader;

    my $writer = File::SimpleKeyValue::Writer->new(file => "kv.txt");
    $writer->write(key1 => "value1");
    $writer->write(key2 => "value2");

    my $reader = File::SimpleKeyValue::Reader->new(file => "kv.txt");
    my @key = $reader->keys;           # ("key1", "key2")
    my $value1 = $reader->get("key1"); # "value1"
    my $value2 = $reader->get("key2"); # "value2"

# DESCRIPTION

File::SimpleKeyValue is a plain file based simple key value format.
An example is here [sample-kv.txt](https://gist.github.com/skaji/c0bf8f83eb50bb1e63bb426b7ae98885).

# MOTIVATION

TBD

# AUTHOR

Shoichi Kaji <skaji@cpan.org>

# COPYRIGHT AND LICENSE

Copyright 2017 Shoichi Kaji <skaji@cpan.org>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
