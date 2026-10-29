#!/bin/bash

ng () {
    echo ${1}行目のテスト失敗
    res=1
}

res=0

### NORMAL INPUT ###
out=$(seq 5 | ./plus)
[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = 15 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

