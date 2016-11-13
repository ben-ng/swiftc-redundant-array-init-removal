#!/bin/sh
set -e 
set -o pipefail

swift_to_sil () {
	cp -f "$1" input.swift
	~/Documents/code/swift-sources/build/Ninja-ReleaseAssert/swift-macosx-x86_64/bin/swiftc\
		-frontend\
		-target x86_64-apple-macosx10.9\
		-sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk\
		-Onone\
		-emit-sil\
		-o out.sil\
		input.swift
	cp -f out.sil "$2"
	unlink out.sil
	unlink input.swift
}

sil_to_silopt () {
	cp -f "$1" input.swift
	~/Documents/code/swift-sources/build/Ninja-ReleaseAssert/swift-macosx-x86_64/bin/sil-opt\
		-redundant-array-init-removal\
		-assume-parsing-unqualified-ownership-sil\
		-enable-sil-verify-all\
		-o out.sil\
		input.swift
	cp -f out.sil "$2"
	unlink out.sil
	unlink input.swift
}

swift_to_sil append.swift append.sil
swift_to_sil concat.swift concat.sil
swift_to_sil ../swift/test/SILOptimizer/redundant_array_init_removal.swift redundant_array_init_removal_unoptimized.sil
sil_to_silopt redundant_array_init_removal_unoptimized.sil redundant_array_init_removal_test_optimized.sil
