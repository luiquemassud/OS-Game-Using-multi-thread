make:	cube

cube:	cube.c
	gcc	-g	cube.c	wizard.c	-lreadline	-lhistory	-lncurses	-lpthread	-lrt	-o	cube