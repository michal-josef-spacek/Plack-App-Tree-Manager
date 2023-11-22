use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Plack::App::Tree::Oracle', 'Plack::App::Tree::Oracle is covered.');
