#!/usr/bin/perl

use strict;
use warnings;

my $inFile = shift @ARGV;
if ( ! defined $inFile ) {
	print "\n";
	print "Das Script muss mit einer Tex-Datei als Argument aufgerufen werden:\n\n";
	print '$ perl ' . $0 . ' <datei>.tex' . "\n\n";
	print 'Das Ergebins wird in <datei>_compact.tex ausgegeben.' . "\n";
	print "\n";
	exit 0;
}

open(my $in, "<", $inFile) or die "Kann Datei ${inFile} nicht zum Lesen öffnen: $!";
my $compact = "";
my $prev = "";
my $version = "";
my $website = "";
while (<$in>) {
	# Alle Zeilen ausschließen, die nur einen Kommentar enthalten:
	unless (/^\s*%/) {
		# Alle Leerzeilen ausschließen, die nach \usepackage, oder einer Leerzeile folgen:
		unless (($prev =~ m/\\usepackage/ or $prev =~ m/^\s$/) and /^\s+$/) {
			$prev = $_;
			# Kommentare am Ende einer Zeile entfernen:
			$_ =~ s/(.*)\s+%.*/$1/;
			$compact .= $_;
		}
	} elsif ($version eq "" and /Version:\s*\d+\.\d+\.\d+/) {
		$version = $_;
		$version =~ s/^.*(\d+.\d+\.\d+).*$/$1/s; # s steht für single-line: . gilt auch für \n
	}
}
close($in);

$compact =~ s/^\n(.*)/$1/;

my $outFile = $inFile;
$outFile =~ s/(.+)(\.tex)/$1_compact$2/ or die "Fehler beim Bennen der Zieldatei: $!";
open(my $out, ">", $outFile) or die "Kann Datei ${outFile} nicht zum Schreiben öffnen: $!";
print $out '% Version: ' . $version . "\n";
print $out '% Anleitung: https://github.com/m-entrup/LaTeX-Vorlagen/tree/master/Protokoll' . "\n";
print $out $compact;
close($out);
exit 0;
