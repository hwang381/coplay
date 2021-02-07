#!/bin/bash

EXTENSION_RESOURCES="./src/safari/Coplay-forked/Coplay-forked Extension/Resources"
rm -rf "${EXTENSION_RESOURCES}"
cp -R ./extensions/chrome "${EXTENSION_RESOURCES}"
