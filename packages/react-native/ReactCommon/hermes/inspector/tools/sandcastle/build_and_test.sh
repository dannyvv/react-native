#!/bin/bash
# Copyright (c) Meta Platforms, Inc. and affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

THIS_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
source "$THIS_DIR/setup.sh"

buck test //xplat/js/react-native-github/packages/react-native/ReactCommon/hermes/inspector:chrome &&
  buck test //xplat/js/react-native-github/packages/react-native/ReactCommon/hermes/inspector:detail &&
  buck test //xplat/js/react-native-github/packages/react-native/ReactCommon/hermes/inspector:inspectorlib &&
  buck build //xplat/js/react-native-github/packages/react-native/ReactCommon/hermes/inspector:hermes-chrome-debug-server
