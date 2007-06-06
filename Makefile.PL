#! /usr/bin/perl -w
use 5.006;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME            => "chklinks",
    VERSION_FROM    => "chklinks",
    ABSTRACT        => "A non-threaded perl link checker",
    AUTHOR          => "imacat <imacat\@mail.imacat.idv.tw>",
    LICENSE         => "gpl",
    PREREQ_PM       => { "URI" => 0,
                         "LWP::RobotUA" => 0,
                         "HTTP::Cookies" => 0,
                         "HTTP::Request" => 0,
                         "HTML::LinkExtor" => 0 },
    SIGN            => 1,
    
    EXE_FILES		=> [ "chklinks" ],
    dist		=> {
        COMPRESS	=> "gzip -9",
        SUFFIX		=> ".gz",
    },
);

__END__
