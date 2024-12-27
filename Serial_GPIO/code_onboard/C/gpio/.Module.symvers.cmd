cmd_/home/uta/C/gpio/Module.symvers :=  sed 's/ko$$/o/'  /home/uta/C/gpio/modules.order | scripts/mod/modpost -m     -o /home/uta/C/gpio/Module.symvers -e -i Module.symvers -T - 
