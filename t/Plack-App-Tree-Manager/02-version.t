use strict;
use warnings;

use Plack::App::Tree::Manager;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Plack::App::Tree::Manager::VERSION, 0.01, 'Version.');
