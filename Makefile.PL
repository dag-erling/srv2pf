#!/usr/bin/env -S perl -w

use utf8;
use strict;
use warnings;
use open qw(:locale);

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME		=> 'UiO::SRV2PF',
    VERSION		=> 20151101,
    ABSTRACT		=> 'Create and update PF tables from DNS records',
    AUTHOR		=> [ 'Dag-Erling Smørgrav <d.e.smorgrav@usit.uio.no>' ],
    MIN_PERL_VERSION	=> v5.14,
    PREREQ_PM		=> {
	'Net::DNS'		=> 0,
	'Regexp::Common'	=> 0,
    },
    PREREQ_FATAL	=> 1,
    EXE_FILES		=> [
	'scripts/srv2pf'
    ],
);
