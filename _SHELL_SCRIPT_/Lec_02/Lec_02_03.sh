#!/bin/bash

[ $(( 3 * (2 + 10) )) -gt $(( 5 * 7 )) ] # 36 > 35
echo $? # 0

test $(( (2 + 10) / 3 )) -le $(( 1 + 2 )) # 4 <= 3
echo $? # 1
