****READ ME****

To compile: gcc -g cube.c wizard.c -lreadline -lhistory -lncurses -lpthread -o cube


To run: ./cube –size 2 –seed 2 –teamA 1 –teamB 2 // variables for size, seed, teamA, teamB can be changed



when in the program:
	- User MUST enter 'start' as a cube command BEFORE choosing 's' for single-step or 'c' for continuous.
	- User may enter 'show' before 'start'

The above is because the correct way to start the program was not specified. The skeleton code had 'start' yet the sample
output in the assignment PDF did not have 'start'.