# 'teensy_loader_cli' has to be an alias in your ~/.bashrc
# If it's not, please run
# echo 'alias teensy_loader_cli=$HOME/teensy_loader_cli/teensy_loader_cli' >> ~/.bashrc

# Teensy model being programmed is Teensy 4.1
# Example code being uploaded is a simple blink code
# -s flag performs a soft reboot if Teensy is not available
# -v shows verbose output

teensy_loader_cli --mcu=TEENSY41 -s hex_files/Blink.pde.hex -v