#!/bin/bash

export XCODE_IOS_SCHEME="DoNotTranslateRedPost (iOS)"
export XCODE_MAC_SCHEME="DoNotTranslateRedPost (macOS)"
export XCODE_PROJECT="DoNotTranslateRedPost.xcodeproj"

xcodebuild -project "${XCODE_PROJECT}" \
    -scheme "${XCODE_IOS_SCHEME}" \
    -configuration Release \
    -destination 'platform=iOS Simulator,name=iPhone 16' \
    -derivedDataPath "ios_build" \
    clean build
    # CODE_SIGNING_REQUIRED=NO \
xcodebuild -project "${XCODE_PROJECT}" \
    -scheme "${XCODE_MAC_SCHEME}" \
    -configuration Release \
    -destination 'platform=macOS' \
    -derivedDataPath "macos_build" \
    clean build
    # CODE_SIGNING_REQUIRED=NO \