#!/bin/bash

export XCODE_IOS_SCHEME="Do not translate reddit (iOS)"
export XCODE_MAC_SCHEME="Do not translate reddit (macOS)"
export XCODE_PROJECT="Do not translate reddit.xcodeproj"

xcodebuild -project "${XCODE_PROJECT}" \
    -scheme "${XCODE_IOS_SCHEME}" \
    -configuration Release \
    -destination 'platform=iOS Simulator,name=iPhone 16' \
    -derivedDataPath "ios_build" \
    CODE_SIGN_IDENTITY="" \
    CODE_SIGN_ENTITLEMENTS="" \
    clean build
    # CODE_SIGNING_REQUIRED=NO \
xcodebuild -project "${XCODE_PROJECT}" \
    -scheme "${XCODE_MAC_SCHEME}" \
    -configuration Release \
    -destination 'platform=macOS' \
    -derivedDataPath "macos_build" \
    CODE_SIGNING_REQUIRED=NO \
    clean build
    # CODE_SIGNING_REQUIRED=NO \