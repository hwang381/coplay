#!/bin/bash

SAFARI_APP=./extensions/safari

rm -rf "$SAFARI_APP"
echo yes | xcrun safari-web-extension-converter --bundle-identifier com.github.coplay --project-location "$SAFARI_APP" --no-open ./extensions/chrome
pushd "$SAFARI_APP/Coplay-forked" || exit 1
xcodebuild
open ./build/Release/Coplay-forked.app
popd || exit 1
