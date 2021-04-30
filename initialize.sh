#!/bin/bash
gclonecd() {
  git clone "$1" && cd "$(basename "$1" .git)"
}
gclonecd $1
silence run
