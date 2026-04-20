#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys

from pathlib import Path


class RemovalError(Exception):

    def __init__(self, errno, strerror):
        super().__init__(errno, strerror)
        self.errno = errno
        self.strerror = strerror


def sanitize_input(raw_input):
    try:
        args = raw_input[1]
        if 'f' in args:
            args = args.replace('f', '')
        cwd = os.getcwd()
        filepath = Path(raw_input[1])
        remove_cmd(filepath, args)
    except:
        raise RemovalError("Invalid Input", -1)
    

def remove_cmd(fp, args):
    ps_cmd = 'rm --interactive=always --verbose' + ' ' + args + ' ' + str(fp.absolute())
    os.system(ps_cmd)

if __name__ == '__main__':
    args = sys.argv
    sanitize_input(args)
