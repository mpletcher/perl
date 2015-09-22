#!/usr/local/bin/perl
# Marcos Pletcher
# Common Gateway Interface (CGI) - standard environment for web servers to interface with executable programs installed on a server that generate web pages dynamically (wikis)

use CGI ':standard'; # handles the CGI protocol

print header();
print start_html();

for $marcos (param()) {
    print "<b>", $marcos, "</b>: ", param($marcos), "<br>\n";
}

print end_html();