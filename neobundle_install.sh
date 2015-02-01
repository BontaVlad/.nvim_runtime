#!/bin/sh
# Standalone installer for Unixs
# Original version is created by shoma2da
# https://github.com/shoma2da/neobundle_installer

# Installation directory
BUNDLE_DIR=~/.nvim_runtime/plugins
INSTALL_DIR=$BUNDLE_DIR/neobundle.vim

# check git command
if type git; then
  : # You have git command. No Problem.
else
  echo 'Please install git or update your path to include the git executable!'
  exit 1;
fi

# make bundle dir and fetch neobundle
echo "Begin fetching NeoBundle..."
mkdir -p $BUNDLE_DIR
git clone https://github.com/Shougo/neobundle.vim $BUNDLE_DIR/neobundle.vim
exit 0
