cmd_/home/uta/C/combo_driver/comboDriver.mod := printf '%s\n'   comboDriver.o | awk '!x[$$0]++ { print("/home/uta/C/combo_driver/"$$0) }' > /home/uta/C/combo_driver/comboDriver.mod
