import sys
import getopt
import json
import _jsonnet

import sys, getopt

fnm_in = sys.argv[1] # expects fnms as command line argument!
fnm_out = sys.argv[2]

jsonnet_out = _jsonnet.evaluate_file(fnm_in)

sys.stdout = open(fnm_out, "w")

print(jsonnet_out)

sys.stdout.close()