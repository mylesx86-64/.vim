#!/usr/bin/env python3
# coding: utf-8
# FILENAME


import os
import sys
import pytest


class Test:

    def test(self):
        assert True


if __name__ ==  "__main__":
    args = [__file__]
    args.append("--capture=no")
    pytest.main(args)
