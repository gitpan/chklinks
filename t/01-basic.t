#! /usr/bin/perl -w
# Test suite on the chklinks script
# 
# Copyright (c) 2003 imacat
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
use Test;

BEGIN { plan tests => 4 }

use FindBin;
use File::Spec qw();
use lib $FindBin::Bin;
use vars qw($chklinks);
$chklinks = File::Spec->catfile($FindBin::Bin, File::Spec->updir, "blib", "script", "chklinks");

# The chklinks script
# Help
eval {
    $_ = "";
    $_ = join "", `$chklinks -h`;
};
# 1
ok($@, "");
# 2
ok($_, qr/Display this help./);

# Version
eval {
    $_ = "";
    $_ = join "", `$chklinks -v`;
};
# 3
ok($@, "");
# 4
ok($_, qr/by imacat <imacat\@mail.imacat.idv.tw>/);
