#!/bin/env bash
FILE = ./slurp.py
PYTHON = `which python`
if [ `PYTHON -v` == '3' ]; then
	if --f $FILE ; then
	  PYTHON $FILE;
  fi
else
  echo 'This is not python 3, exiting, sorry!';
  exit 0;
fi

