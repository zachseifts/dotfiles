#!/usr/bin/env python

"""
Converts a csv document of redirects into apache redirect statements.
"""

import csv
from urlparse import urlparse
from optparse import OptionParser


class Main(object):
    ''' Converts a csv file into apache redirects.
    '''

    def __init__(self, csv_file):
        self.csv_reader = csv.reader(open(csv_file, 'U'))
        self.rows = [(x,y) for x,y in self.csv_reader]
        self.redirect_list = [self.parse_row(row) for row in self.rows]
        self.redirects = '\n'.join(self.redirect_list)

    def parse_row(self, row):
        ''' Parses each tuple and turns in into a redirect.'''
        rule = str()
        orig_url = urlparse(row[0])
        orig = orig_url.path[1:].replace('.', '\.')
        if orig_url.fragment:
            orig += '#' + orig_url.fragment
        # Checks if the url is a directory
        if orig.endswith('/'):
            orig = orig[:len(orig)-1]
            orig += '(/)?'
        # Checks if the url has a querystring on the end
        if orig_url.query:
            rule += '\n  RewriteCond %%{QUERY_STRING} ^%s$\n' % (orig_url.query)
        new = urlparse(row[1]).path
        rule += '  RewriteRule ^%s$ %s [R=301,L]' % (orig, new)
        return rule


if __name__ == '__main__':
    parser = OptionParser()
    (options, args) = parser.parse_args()
    main = Main(args[0])
    print main.redirects

