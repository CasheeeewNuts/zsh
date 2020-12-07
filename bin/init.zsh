#!/usr/bin/env bash

ENTRYPOINT_FILE=$HOME/.zsh/files/entrypoint.zsh

echo "source ${ENTRYPOINT_FILE}" >> "$HOME"/.zshrc
