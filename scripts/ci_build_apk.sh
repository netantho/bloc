#!/bin/bash

set -ex

source scripts/retry.sh

cd $1

if [[ -f "android/app/example_google-services.json" ]]; then
  cp android/app/example_google-services.json android/app/google-services.json
fi
flutter packages get
flutter build apk

cd -
