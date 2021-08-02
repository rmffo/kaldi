#!/bin/bash

# sed -i "s/\r//g" ./parenv.sh

# Change this location to somewhere where you want to put the data.
# Specifiy where you want to store audio and language model data.
data=./corpus/

# Specify the url for downloading audio data.
data_url=

# Specify the url for downloading vocabulary, lexicon and pre-trained language model (trained on LibriSpeech).
lm_url=

# Run script cmd.sh, you need to change queue.pl to run.pl if GridEngine is not installed.
cd /content/kaldi/egs/mini_librispeech/s5/
. /content/kaldi/egs/mini_librispeech/s5/cmd.sh
cd /content/

# Run script path.sh which adds all kaldi executable dependencies to your environment path. This is required every time you start a new terminal, and it can avoided by adding all paths in your .bashrc.
cd /content/kaldi/egs/mini_librispeech/s5/
. /content/kaldi/egs/mini_librispeech/s5/path.sh
cd /content/

# Set which stage this script is on, you can set it to the stage number that has already been executed to avoid running the same command repeatedly.
stage=0

# Enable argument parsing to kaldi scripts (e.g. ./run.sh --stage 2 sets variable stageto 2).
cd /content/kaldi/egs/mini_librispeech/s5/
. /content/kaldi/egs/mini_librispeech/s5/utils/parse_options.sh
cd /content/

# Make the scripts exit safely when encountering an error.
set -euo pipefail

# Create the data folder (./corpus/ in this case) if it doesn’t exist already.
mkdir -p $data
