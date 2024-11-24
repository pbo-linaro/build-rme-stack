#!/usr/bin/env bash

set -euo pipefail

mkdir -p cca-v3
cd cca-v3
repo init -u https://git.codelinaro.org/linaro/dcap/op-tee-4.2.0/manifest.git -b cca/v3 -m qemu_v8_cca.xml
repo sync -j$(nproc) --no-clone-bundle
cd build
make -j$(nproc) toolchains
make -j$(nproc)
