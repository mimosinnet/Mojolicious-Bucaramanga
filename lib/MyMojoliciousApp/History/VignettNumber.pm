#
#===============================================================================
#
#         FILE: VignettNumber.pm
#
#  DESCRIPTION: Define how many vinyets there are in the history
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: mimosinnet (), mimosinnet@ningunlugar.org
# ORGANIZATION: Associació Cultural Ningún Lugar
#      VERSION: 1.0
#      CREATED: 13/09/12 14:04:34
#     REVISION: ---
#===============================================================================

package MyMojoliciousApp::History::VignettNumber;
use Mojo::Base -base;
use File::Glob ':bsd_glob';

has 'hist';

sub number_vignetts {
	my $self = shift;
	my $frame = $self->hist;
	my $h_number = substr $frame, -2;
	my @files = <public/img/$h_number/bcm??.jpg>;
	my $number = scalar @files;
	return $number;
}


1;
