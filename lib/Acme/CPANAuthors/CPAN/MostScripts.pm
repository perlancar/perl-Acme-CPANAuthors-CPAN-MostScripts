package Acme::CPANAuthors::CPAN::MostScripts;

# DATE
# VERSION

use strict;
use warnings;

use Acme::CPANAuthors::Register (
# CODE: require App::lcpan::Call; require Data::Dmp; $main::res = App::lcpan::Call::call_lcpan_script(argv => ['authors-by-script-count']); die "$main::res->[0] - $main::res->[1]" unless $main::res->[0] == 200; unshift @{ $main::res->[3]{'table.fields'} }, 'rank'; splice @{$main::res->[2]}, 50; my $i = 0; for my $row (@{ $main::res->[2] }) { $row->{rank} = ++$i; delete $row->{script_count_pct}; printf qq{   %-11s => %-40s # %6d\n}, Data::Dmp::dmp($row->{id}), Data::Dmp::dmp($row->{name}) . ",", $row->{script_count} }
);

1;
# ABSTRACT: Authors with the most scripts on CPAN

=head1 SYNOPSIS

   use Acme::CPANAuthors;
   use Acme::CPANAuthors::CPAN::MostScripts;

   my $authors = Acme::CPANAuthors->new('CPAN::MostScripts');

   my $number   = $authors->count;
   my @ids      = $authors->id;
   my @distros  = $authors->distributions('PERLANCAR');
   my $url      = $authors->avatar_url('PERLANCAR');
   my $kwalitee = $authors->kwalitee('PERLANCAR');


=head1 DESCRIPTION

This module lists 50 CPAN authors with the most scripts on CPAN. This list is
produced by querying a local mini CPAN mirror using this command:

 % lcpan authors-by-script-count | head -n 50

Statistics of the CPAN mirror:

# COMMAND: lcpan stats-last-index-time --format text-pretty

Current ranking:

# CODE: require Perinci::Result::Format::Lite; print Perinci::Result::Format::Lite::format($main::res, 'text-pretty');


=head1 SEE ALSO

L<Acme::CPANAuthors>

=cut
