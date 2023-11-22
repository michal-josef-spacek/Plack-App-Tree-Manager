use strict;
use warnings;

use Plack::App::Tree::Oracle;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Plack::App::Tree::Oracle::VERSION, 0.01, 'Version.');
