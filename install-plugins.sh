#!/bin/bash

while read plugin version; do
  echo "Installing '${plugin}' (${version})"
  /venv/bin/pip install git+https://github.com/zhangyufei2008/alerta-contrib.git.git@${version}#subdirectory=${plugin}
done </app/plugins.txt
