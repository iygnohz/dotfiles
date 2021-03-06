#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys
import logging


logging.basicConfig(
    format="%(asctime)s - %(levelname)s: %(message)s",
    level=logging.INFO
)


def link(source, target):
    if not os.path.exists(source):
        logging.error("Source file %s not exist." % source)
        sys.exit(1)

    if os.path.isfile(target):
        logging.warn("Source file %s exist." % target)
    else:
        logging.info("ln -s %s %s" % (source, target))
        os.symlink(source, target)


def main():
    ignores = [".DS_Store", "README.md", "init.py", ".git"]
    dotfiles = [f for f in os.listdir(".") if os.path.isfile(f) and f not in ignores]
    logging.info("dotfiles: %s" % dotfiles)
    home_dir = os.path.expanduser("~")
    logging.info("$HOME: %s" % home_dir)
    current_dir = os.path.dirname(os.path.abspath(__file__))
    logging.info("Current dir: %s" % current_dir)

    for dotfile in dotfiles:
        source = current_dir + "/" + dotfile
        target = home_dir + "/" + dotfile
        link(source, target)


if __name__ == "__main__":
    main()
