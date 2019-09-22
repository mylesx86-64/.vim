#!/usr/bin/env bash
# Created [:VIM_EVAL:]strftime('%Y-%m-%d')[:END_EVAL:]

set -e # Exit script on non-zero return value from any command
set -u # References to undefined variables are errors
set -o pipefail # Exit script on non-zero return value from a pipeline

IFS=$'\n\t'  # Internal Field Separator will split on newlines or tabs. Default is IFS=$'\s\n\t' for spaces as well

# Absolute path to the directory of this script
HERE="$(dirname "$(readlink -f "$0")")"


# === Cheat sheet references === #
# array_of_names=(
#     "John Smith"
#     "Example"
#     "Jill Appleton"
# )
# for name in ${names[@]}; do
#     echo "$name"
# done
## With default IFS, this will split into John, Smith, Example, Jill, Appleton.
## With new IFS, this will split into John Smith, Example, Jill Appleton

 




