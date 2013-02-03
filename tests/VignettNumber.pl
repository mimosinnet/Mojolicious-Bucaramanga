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

use File::Glob ':bsd_glob';
use feature 'say';

my @files = </home/mimosinnet/*>;
my $number = scalar @files;

say $number;
