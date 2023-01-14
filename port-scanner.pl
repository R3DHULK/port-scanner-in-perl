#!/usr/bin/perl
use strict;
use warnings;
use IO::Socket;

my $host = shift;
my $start_port = shift;
my $end_port = shift;

for my $port ($start_port..$end_port) {
    my $socket = IO::Socket::INET->new(
        Proto    => "tcp",
        PeerAddr => $host,
        PeerPort => $port,
        Timeout  => 1,
    );

    if ($socket) {
        print "Port $port is open\n";
        close($socket);
    }
}
