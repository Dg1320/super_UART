cmd_/home/uta/C/gpio/gpio_isr.mod := printf '%s\n'   gpio_isr.o | awk '!x[$$0]++ { print("/home/uta/C/gpio/"$$0) }' > /home/uta/C/gpio/gpio_isr.mod
