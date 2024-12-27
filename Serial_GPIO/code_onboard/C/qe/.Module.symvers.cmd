cmd_/home/uta/C/qe/Module.symvers :=  sed 's/ko$$/o/'  /home/uta/C/qe/modules.order | scripts/mod/modpost -m     -o /home/uta/C/qe/Module.symvers -e -i Module.symvers -T - 
