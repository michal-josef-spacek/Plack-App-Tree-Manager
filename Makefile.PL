use lib '.';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Plack Oracle Tree Manager application.';
author 'Michal Josef Spacek <skim@cpan.org>';
author_requires 'English' => 0;
author_requires 'File::Object' => 0;
author_requires 'Test::More' => 0;
author_requires 'Test::NoWarnings' => 0;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
license 'bsd';
name 'Plack-App-Tree-Oracle';
perl_version 5.008;
readme_from 'Oracle.pm';
recursive_author_tests('xt');
requires 'Plack::Component::Tags::HTML' => 0;
requires 'Tags::HTML::Tree::Oracle' => 0;
resources 'bugtracker' => 'https://github.com/michal-josef-spacek/Plack-App-Tree-Oracle/issues';
resources 'homepage' => 'https://github.com/michal-josef-spacek/Plack-App-Tree-Oracle';
resources 'repository' => 'git://github.com/michal-josef-spacek/Plack-App-Tree-Oracle';
test_requires 'Error::Pure' => 0;
test_requires 'File::Object' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
