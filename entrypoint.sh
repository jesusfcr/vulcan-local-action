#!/bin/sh
set -e

ARGS=""
if [ -n "$INPUT_CONFIG" ];then
    ARGS="$ARGS -c $INPUT_CONFIG"
fi
if [ -n "$INPUT_CHECKTYPES" ];then
    ARGS="$ARGS -checktypes $INPUT_CHECKTYPES"
fi
if [ -n "$INPUT_INCLUDE" ];then
    ARGS="$ARGS -i $INPUT_INCLUDE"
fi
if [ -n "$INPUT_EXCLUDE" ];then
    ARGS="$ARGS -e $INPUT_EXCLUDE"
fi
if [ -n "$INPUT_POLICY" ];then
    ARGS="$ARGS -p $INPUT_POLICY"
fi
if [ -n "$INPUT_TARGET" ];then
    ARGS="$ARGS -t $INPUT_TARGET"
fi
if [ -n "$INPUT_ASSETTYPE" ];then
    ARGS="$ARGS -a $INPUT_ASSETTYPE"
fi
if [ -n "$INPUT_SEVERITY" ];then
    ARGS="$ARGS -s $INPUT_SEVERITY"
fi
if [ -n "$INPUT_LOGLEVEL" ];then
    ARGS="$ARGS -l $LOGLEVEL"
fi

echo "Running vulcan-local with options: ${ARGS}"
/app/vulcan-local $ARGS
returnCode=$?

echo "Exit with $returnCode"
exit $returnCode
