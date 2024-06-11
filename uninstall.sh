#!/bin/sh

# TODO - make sure this works and gets everything right
for i in _*
do
  rm -fr "${HOME}/${i/_/.}"
done
