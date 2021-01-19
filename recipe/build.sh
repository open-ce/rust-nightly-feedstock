#!/usr/bin/env bash
# *****************************************************************
# (C) Copyright IBM Corp. 2020, 2021. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# *****************************************************************
set -ex

./install.sh --prefix=$PREFIX

if [ "$c_compiler" = gcc ] ; then
  mkdir -p $PREFIX/etc/conda/activate.d $PREFIX/etc/conda/deactivate.d
  cp $RECIPE_DIR/../scripts/rust_activate.sh $PREFIX/etc/conda/activate.d
  cp $RECIPE_DIR/../scripts/rust_deactivate.sh $PREFIX/etc/conda/deactivate.d
fi
