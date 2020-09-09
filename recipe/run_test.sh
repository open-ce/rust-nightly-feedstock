#!/usr/bin/env bash
# *****************************************************************
#
# Licensed Materials - Property of IBM
#
# (C) Copyright IBM Corp. 2020. All Rights Reserved.
#
# US Government Users Restricted Rights - Use, duplication or
# disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
#
# *****************************************************************

## TODO: remove the following `unset` lines, once the following issue in `conda-build` is resolved:
##       <https://github.com/conda/conda-build/issues/2255>

unset REQUESTS_CA_BUNDLE
unset SSL_CERT_FILE

rustc --help
rustdoc --help
cargo --help
cargo install --force xsv
