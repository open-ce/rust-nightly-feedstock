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

## TODO: remove the following `unset` lines, once the following issue in `conda-build` is resolved:
##       <https://github.com/conda/conda-build/issues/2255>

unset REQUESTS_CA_BUNDLE
unset SSL_CERT_FILE

rustc --help
rustdoc --help
cargo --help
cargo install --force xsv
