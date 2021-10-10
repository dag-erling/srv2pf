#!/usr/bin/env -S perl -w

use utf8;
use strict;
use warnings;
use open qw(:locale);

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME		=> 'DES::SRV2PF',
    VERSION_FROM	=> 'scripts/srv2pf',
    ABSTRACT		=> 'Create and update PF tables from DNS records',
    AUTHOR		=> [ 'Dag-Erling Smørgrav <des@des.no>' ],
    MIN_PERL_VERSION	=> '5.014',
    PREREQ_PM		=> {
	'Net::DNS'		=> 0,
	'Regexp::Common'	=> 0,
	'Try::Tiny'		=> 0,
    },
    PREREQ_FATAL	=> 1,
    EXE_FILES		=> [
	'scripts/srv2pf'
    ],
);
