use strict;
use warnings;
use Test::More;
use File::Temp ();

use File::SimpleKeyValue::Writer;
use File::SimpleKeyValue::Reader;

(undef, my $file) = File::Temp::tempfile UNLINK => 0, OPEN => 0, EXLOCK => 0;
END { unlink $file }

{
    my $writer = File::SimpleKeyValue::Writer->new(file => $file);
    $writer->write(key1 => "aaa\nbbb\n");
    $writer->write('key2 xxx yyy'  => "ccc\nddd\n\neee");
}
{
    my $reader = File::SimpleKeyValue::Reader->new(file => $file);
    my @key = $reader->keys;
    is @key, 2;
    is $key[0], "key1";
    is $key[1], "key2 xxx yyy";

    my $value1 = $reader->get("key1");
    my $value2 = $reader->get("key2 xxx yyy");

    is $value1, "aaa\nbbb"; # NOTE: \n is removed
    is $value2, "ccc\nddd\n\neee";
}

done_testing;
