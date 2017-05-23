#!/usr/bin/perl -w

use strict;
use TheSchwartz;
use TheSchwartz::Job;
use base qw( TheSchwartz::Worker );
use lib '/home/webdev20171/raphael/';
use blastSeq;

my $client = TheSchwartz->new(
	databases => [ {
		dsn  => "dbi:mysql:webdevqueue",
		user => "webdev",
		pass => "internet",
	} ],
	verbose => 1,
);
$client->can_do('blastSeq_rapha');
$client->work();

