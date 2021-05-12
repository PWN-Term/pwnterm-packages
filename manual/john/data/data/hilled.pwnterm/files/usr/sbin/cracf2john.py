#!/data/data/hilled.pwnterm/files/usr/bin/env python

# The cracf2john.py utility processes CRACF.TXT files (generated by CRACF
# program) into a format suitable for use with JtR.
#
# This software is Copyright (c) 2012, Dhiru Kholia <dhiru at openwall.com> and
# it is hereby released to the general public under the following terms:
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted.

import sys


def process_file(filename):
    with open(filename, "r") as f:
        for line in f.readlines():
            data = line.split()
            sys.stdout.write("%s:$racf$*%s*%s*%s\n" % \
                     (data[0], data[0], data[-1], data[-2]))

if __name__ == "__main__":
    if len(sys.argv) < 2:
        sys.stderr.write("Usage: %s <CRACF.TXT>\n" % sys.argv[0])
        sys.exit(-1)

    for i in range(1, len(sys.argv)):
        process_file(sys.argv[i])
