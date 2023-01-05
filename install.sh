run(){
    if [ $option == "no" ]; then # 'no' means 'dont run the commands with sudo'
        new_cmd=$(echo $@ | sed 's/sudo //') # remove 'sudo' from the command
    else
	new_cmd=$@ # dont change the command
    fi
    echo -e $GREEN  # turn the colors to green
    # print the command:
    echo "---------------------------------------------------------------------------------"
    echo "-->" $new_cmd
    echo "---------------------------------------------------------------------------------"
    echo -e $NC     # turn the colors to 'no color'
    $new_cmd              # execute the given command passed to run()
}


######################## Configure teensy_loader_cli ###########################
#
cmd="sudo apt-get install -y libusb-dev"
run $cmd

cmd="git clone https://github.com/PaulStoffregen/teensy_loader_cli.git $HOME/teensy_loader_cli"
run $cmd

cmd="cd $HOME/teensy_loader_cli"
run $cmd

cmd="make"
run $cmd

cmd="echo 'alias teensy_loader_cli=$HOME/teensy_loader_cli/teensy_loader_cli' >> ~/.bashrc" # create a command called 'teensy_loader_cli'
run $cmd