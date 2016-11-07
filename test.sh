#!/bin/sh

set -e

SOURCE_ROOT=~/Documents/code/swift-sources
SWIFT_SOURCE_ROOT=${SOURCE_ROOT}/swift
SWIFT_BUILD_ROOT=${SOURCE_ROOT}/build/Ninja-ReleaseAssert/swift-macosx-x86_64
LLVM_SOURCE_ROOT=${SOURCE_ROOT}/llvm

# Build Swift
time ${SWIFT_SOURCE_ROOT}/utils/build-script -R

# Run only the SILOptimizer test
time ${LLVM_SOURCE_ROOT}/utils/lit/lit.py -sv \
  --param swift_site_config=${SWIFT_BUILD_ROOT}/test-macosx-x86_64/lit.site.cfg \
  ${SWIFT_SOURCE_ROOT}/test/SILOptimizer/redundant_array_init_removal.sil
