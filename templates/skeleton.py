#!/usr/bin/env python3
# coding: utf-8
# Created: [:VIM_EVAL:]strftime('%Y-%m-%d')[:END_EVAL:]
# [:VIM_EVAL:]expand("<afile>:t")[:END_EVAL:]

import re
import os
import sys
import shutil
import inspect
import datetime
import subprocess
from collections import defaultdict, Counter
from pprint import pprint

HERE = os.path.dirname(os.path.abspath(__file__))

def p_source(obj):
    for line in inspect.getsource(obj).splitlines():
        print(line)

def bash(command):
    p = subprocess.Popen(
            command,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,  # 2>&1
            shell=True,
    )
    for line in iter(p.stdout.readline, b""): 
        sys.stdout.write(line.decode())

def walk_down(root, filter_func=None):
    for entry in os.listdir(root):
        path = os.path.join(root, entry)
        if os.path.isdir(path):
            yield from walk_down(path, filter_func=filter_func)
        elif os.path.isfile(path):
            if filter_func is None or filter_func(path):
                yield path
        else:
            print(path)
            raise NotImplementedError("Hey Myles you need to follow symlinks")

def walk_up(start, anchor):
    if os.path.exists(os.path.join(start, anchor)):
        return start
    elif os.path.samefile(start, os.path.dirname(start)):
        # Hit the root
        return None
    else:
        return walk_up(os.path.dirname(start), anchor)


if __name__ == "__main__":
    pass
