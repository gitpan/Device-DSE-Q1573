#!/usr/bin/perl

use Device::DSE::Q1573;

my $meter = Device::DSE::Q1573->new( "/dev/ttyS0" );

while(1) {
	my $data = $meter->rawread();
	print $data . "\n";
	sleep(1);
}
