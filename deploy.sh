#!/bin/bash
# @Author: guiguan
# @Date:   2020-08-12T15:54:01+10:00
# @Last modified by:   guiguan
# @Last modified time: 2020-08-14T10:07:10+10:00

set -e

CC_NAME="guy1"
CC_SRC_LANGUAGE="javascript"
CC_SRC_PATH="$PWD"
CC_VERSION="1"


pushd ~/git/provendb-hyperledger/test-network
# ./network.sh createChannel -c guy1 
 ./network.sh deployCC -c guy1 -ccn guy1 -ccp $CC_SRC_PATH -ccl javascript -ccv 2
popd
