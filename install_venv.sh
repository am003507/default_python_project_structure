#!/bin/bash

VENV_DIR=$(pwd)
echo ''
echo '################################################################'
echo 'Current Directory  : $VENV_DIR'

if [ -d ./venv ]; then
	echo 'exist venv dir'
	echo 'delete venv directory...'
	rm -rf ./venv
	echo 'complete venv directory...'
fi


echo 'set virtualenv'
echo 'python version  : 3.6.4'
echo '##################################################################'
echo ''
virtualenv -p python3 venv


EXPORT_STR='export PYTHONPATH="'$VENV_DIR'"'
echo $EXPORT_STR
echo $EXPORT_STR >> ./venv/bin/activate


#cat ./venv/bin/activate



