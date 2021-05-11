# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Clang doesn't support combination of sancov + CFI
USER_CFI_ENABLED := false
KERNEL_CFI_ENABLED := false
CFI_DIAGNOSTICS := false

USER_COVERAGE_ENABLED := true

# Reduce amount logs to speed up fuzzing
GLOBAL_SHARED_COMPILEFLAGS += -Wno-macro-redefined
GLOBAL_DEFINES += TLOG_LVL=1 # TLOG_LVL_CRIT

include project/generic-arm64-test-debug-inc.mk
