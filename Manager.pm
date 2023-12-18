package Plack::App::Tree::Manager;

use base qw(Plack::Component::Tags::HTML);
use strict;
use warnings;

use Tags::HTML::Tree::Manager;

our $VERSION = 0.01;

sub _cleanup {
	my $self = shift;

	# TODO add page
	$self->{'_tags_html_tree_oracle'}->cleanup;

	return;
}

sub _prepare_app {
	my $self = shift;

	$self->{'_tags_html_tree_oracle'} = Tags::HTML::Tree::Manager->new;

	return;
}

sub _process_actions {
	my ($self, $env) = @_;

	# TODO
}

sub _tags_middle {
	my $self = shift;

	# TODO add page
	$self->{'_tags_html_tree_oracle'}->process;

	return;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Plack::App::Tree::Manager - Plack Manager Tree Manager application.

=head1 SYNOPSIS

 use Plack::App::Tree::Manager;

 my $obj = Plack::App::Tree::Manager->new(%parameters);
 my $psgi_ar = $obj->call($env);
 my $app = $obj->to_app;

=head1 METHODS

=head2 C<new>

 my $obj = Plack::App::Tree::Manager->new(%parameters);

Constructor.

Returns instance of object.

=head2 C<call>

 my $psgi_ar = $obj->call($env);

Implementation of env dump.

Returns reference to array (PSGI structure).

=head2 C<to_app>

 my $app = $obj->to_app;

Creates Plack application.

Returns Plack::Component object.

=head1 EXAMPLE

=for comment filename=plack_app_tree_oracle.pl

 use strict;
 use warnings;

 use Plack::App::Tree::Manager;
 use Plack::Runner;

 # Run application.
 my $app = Plack::App::Tree::Manager->new->to_app;
 Plack::Runner->new->run($app);

 # Output:
 # HTTP::Server::PSGI: Accepting connections at http://0:5000/

 # > curl http://localhost:5000/
 # TODO

=head1 DEPENDENCIES

L<Plack::Component>.

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/Plack-App-Tree-Manager>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

© 2023 Michal Josef Špaček

BSD 2-Clause License

=head1 VERSION

0.01

=cut
