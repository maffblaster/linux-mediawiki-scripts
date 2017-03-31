#!/usr/bin/env python3

"""Usage:
  gwiki [-h | --help] | [--version]

Options:
  -h --help            show this help message and exit
  --version            show version and exit
"""

import sys
import docopt

__version__ = '0.0.1'
__license__ = 'GPL-2'
__author__ = u'matthew marchese'
__email__ = 'maffblaster@gentoo.org'
__maintainer__ = u'matthew marchese'
__contributors__ = ''
__copyright__ = '2017'
__description__ = 'gentoo wiki helper script'
__url__ = 'https://github.com/maffblaster/wiki-scripts'
__source__ = 'https://github.com/maffblaster/wiki-scripts'

# Python 3 validator
if sys.version_info < (3, 0):
    print(__name__ + " requires Python 3.0 and up. Exiting...\n")
    sys.exit(1)

if __name__ == '__main__':
    arguments = docopt(__doc__, version=__version__)

