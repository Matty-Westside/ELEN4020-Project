#!/bin/bash
FILE1 = $1
FILE2 = $2
COLUMN = $3
cp $FILE1 input1.txt

cp $FILE2 input2.txt

cp input1.txt input11.txt

cp input2.txt input22.txt

g++-5 -g -O2 -Wall -D_LINUX_ equi_join.cpp -fstrict-aliasing -Wstrict-aliasing -lpthread -lrt -fpermissive -L./ -lphoenix -I./ -o equi_join

MR_NUMTHREADS=4 ./equi_join input1.txt input2.txt input11.txt input22.txt $COLUMN

rm input1.txt
rm input11.txt
rm input2.txt
rm input22.txt