#!/bin/bash

if [[ ! -d ${HOME}/.pse ]]; then
  echo "[*] - copying default services to ${HOME}/.pse"
  mkdir -p ${HOME}/.pse 2>/dev/null
  cp -r ${PWD}/services/* ${HOME}/.pse || echo "Unable to copy services to ${HOME}/.pse"
else
  echo "[*] - Default services directory found at ${HOME}/.pse"
  cp -r ${PWD}/services/* ${HOME}/.pse
fi



if [ ! -L /usr/local/bin/pse ]; then
  echo "[*] - Attempting to symlink ${PWD}/pse to /usr/local/bin/pse"
  sudo ln -s ${PWD}/pse /usr/local/bin/pse || echo "please run again with sudo to symlink pse"
else
  echo "[*] - Found symlink for pse at /usr/local/bin/pse"
fi
echo "-----------------------------"
echo "[*] - Install complete!"
echo "-----------------------------"
echo " "

pse
