#! /bin/sh
DIR=`dirname $0`
OPPMAKEPATH=$(opp_configfilepath)
OMNETPATH=${OPPMAKEPATH%/bin/../Makefile*}
echo OMNETPATH=$OMNETPATH
opp_run -l$OMNETPATH/lib/oppcmdenv -l$DIR/../../base/miximbase -l$DIR/../../modules/miximmodules -n $DIR/../../examples:$DIR/../../base:$DIR/../../modules $*

