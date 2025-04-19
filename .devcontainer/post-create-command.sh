#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt update \
  && sudo apt -y install libgmp-dev \
  && cd $HOME \
  && cabal update \
  && cabal install pandoc hspec cabal-gild hspec-discover fourmolu
  && cabal install