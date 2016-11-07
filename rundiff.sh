#!/bin/sh
cp -f append.swift input.swift
/Users/ben/Documents/code/swift-sources/build/Ninja-DebugAssert/swift-macosx-x86_64/bin/swiftc\
	-frontend\
	-target x86_64-apple-macosx10.9\
	-sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk\
	-Onone\
	-emit-sil\
	-o /Users/ben/Documents/code/swiftc-redundant-array-init/out.sil\
	input.swift
cp -f out.sil append.sil

cp -f concat.swift input.swift
/Users/ben/Documents/code/swift-sources/build/Ninja-DebugAssert/swift-macosx-x86_64/bin/swiftc\
	-frontend\
	-target x86_64-apple-macosx10.9\
	-sdk /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.12.sdk\
	-Onone\
	-emit-sil\
	-o /Users/ben/Documents/code/swiftc-redundant-array-init/out.sil\
	input.swift
cp -f out.sil concat.sil

unlink out.sil
unlink input.swift
