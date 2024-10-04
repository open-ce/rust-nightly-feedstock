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
#!/bin/bash

set -ex

# windows shell doesn't start here
cd $SRC_DIR

DESTDIR=$PWD/destdir/

# we want to install only a portion of the full installation.
# To do that, let's use destdir and then use the manifest-rust-std-* file
# to install the files corresponding to rust-std
./install.sh --prefix=$PREFIX --destdir=$DESTDIR

# install.log is large because it records full paths for each file.
# => conda-build is slow to parse ripgrep's output for prefix replacement.
# => replace path records beforehand:
install_log="${DESTDIR}${PREFIX}/lib/rustlib/install.log"
sed \
  -e "s|${PREFIX}|/prefix|g" \
  -e "s|${DESTDIR}|/destdir|g" \
  -e "s|${PWD}|/source|g" \
  -i.bak "${install_log}"
rm "${install_log}.bak"
