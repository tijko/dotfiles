#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys

from pathlib import Path


def sanitize_input(raw_input):
    if not isinstance(raw_input, list):
        print('Error input arguments')
        sys.exit(0)
    args = raw_input[1]
    if 'f' in args:
        args = args.replace('f', '')
    cwd = os.getcwd()
    filepath = Path(raw_input[2])
    if not filepath.exists():
        print('Error input arguments')
        sys.exit(0)
    remove_cmd(filepath, args)

def remove_cmd(fp, args):
    ps_cmd = 'rm --interactive=always --verbose' + ' ' + args + ' ' + str(fp.absolute())
    os.system(ps_cmd)

if __name__ == '__main__':
    args = sys.argv
    if len(args) < 3:
        print('Error input arguments')
        sys.exit(0)
    sanitize_input(args)
