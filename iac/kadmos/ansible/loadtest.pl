#!/usr/bin/perl

# test.pl: a small perl script that test's mod_dosevasive's effectiveness

use IO::Socket;
use strict;

for(0..100) {
  my($response);
  my($SOCKET) = new IO::Socket::INET( Proto   => "tcp",
                                      PeerAddr=> "34.159.243.38:8081");
  if (! defined $SOCKET) { die $!; }
  print $SOCKET "GET /?$_ HTTP/1.0\r\nHost: 34.159.243.38\r\n\r\n";
  $response = <$SOCKET>;
  print $response;
  close($SOCKET);
}
