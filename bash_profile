if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/y/.sdkman"
[[ -s "/home/y/.sdkman/bin/sdkman-init.sh" ]] && source "/home/y/.sdkman/bin/sdkman-init.sh"
