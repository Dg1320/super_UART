cmd_/home/uta/C/qe/qe_driver.mod := printf '%s\n'   qe_driver.o | awk '!x[$$0]++ { print("/home/uta/C/qe/"$$0) }' > /home/uta/C/qe/qe_driver.mod
