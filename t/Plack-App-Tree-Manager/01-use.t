use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Plack::App::Tree::Manager');
}

# Test.
require_ok('Plack::App::Tree::Manager');
