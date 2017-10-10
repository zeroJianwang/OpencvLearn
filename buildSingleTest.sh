#!/bin/sh
echo "***********************************************************"
echo "*                                                        	*"
echo "*								*"
echo "*		Build test cpp file 				*"
echo "*								*"
echo "*								*"
echo "***********************************************************"

g++ test.cpp -o test `pkg-config --cflag --libs opencv`
