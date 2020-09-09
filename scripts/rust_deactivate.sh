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

ARCH=`uname -p`
if [[ "${ARCH}" == 'ppc64le' ]]; then
    rust_env_arch=POWERPC64LE_UNKNOWN_LINUX_GNU
else
    rust_env_arch=X86_64_UNKNOWN_LINUX_GNU
fi

unset CARGO_TARGET_${rust_env_arch}_LINKER
