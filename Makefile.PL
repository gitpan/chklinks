#! /usr/bin/perl -w
# Makefile.PL for the chklinks package
# 
# Copyright (c) 2003 imacat.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
# 
# First written 2003-05-25

use 5.005;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    AUTHOR		=> "imacat <imacat\@mail.imacat.idv.tw>",
    ABSTRACT		=> "A non-threaded perl link checker",
    NAME                => "chklinks",
    VERSION_FROM        => "bin/chklinks",
    PREREQ_PM		=> { "Net::HTTP" => 0,
                             "URI" => 0 },
    
    EXE_FILES		=> [ "bin/chklinks" ],
    dist		=> {
        COMPRESS	=> "gzip -9",
        SUFFIX		=> ".gz",
    },
);

__END__
