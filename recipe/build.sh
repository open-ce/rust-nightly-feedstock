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

set -ex

./install.sh --prefix=$PREFIX

if [ "$c_compiler" = gcc ] ; then
  mkdir -p $PREFIX/etc/conda/activate.d $PREFIX/etc/conda/deactivate.d
  cp $RECIPE_DIR/../scripts/rust_activate.sh $PREFIX/etc/conda/activate.d
  cp $RECIPE_DIR/../scripts/rust_deactivate.sh $PREFIX/etc/conda/deactivate.d
fi
