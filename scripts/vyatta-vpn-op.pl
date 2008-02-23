#!/usr/bin/perl -w

use strict;
use lib "/opt/vyatta/share/perl5/";

use Getopt::Long;
my $op;
GetOptions("op=s" => \$op);

if ($op eq 'show-vpn-debug') {
	system '/usr/sbin/ipsec auto --status';
}
if ($op eq 'show-vpn-debug-detail') {
	system '/usr/sbin/ipsec barf';
}

if ($op eq 'clear-vpn-ipsec-process') {
	system '/usr/sbin/ipsec setup restart';
}


