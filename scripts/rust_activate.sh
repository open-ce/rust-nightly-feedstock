#!/bin/bash

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

# Fun times -- by default, Rust/Cargo tries to link executables on Linux by
# invoking `cc`. An executable of this name is not necessarily available. By
# setting a magic environment variable, we can override this default.

ARCH=`uname -p`
if [[ "${ARCH}" == 'ppc64le' ]]; then
    rust_env_arch=POWERPC64LE_UNKNOWN_LINUX_GNU
else
    rust_env_arch=X86_64_UNKNOWN_LINUX_GNU
fi

export CARGO_TARGET_${rust_env_arch}_LINKER=$CC
