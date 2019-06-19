# OS-Game-Using-Multi-Thread
In this project I developed a multi-threaded game simulator, called The Cube, inspired by the "Cube" movie. (Original project specifications courtesy of Prof. Giovanni Vigna).

The cube is a structure of n by n rooms. Each room has four doors, each located on one of the walls (North, South, East, West). The rooms are bent in space so that they are structured in a toroidal fashion (that is, the rooms are "wrapped around").
The cube is inhabited by wizards, which can move from room to room in no particular order. This means that a particular wizard may be sometimes faster and perform a move before another wizard can make a move, i.e. wizards do not take turns when moving. Wizard can move to an adjacent room only, using any of the doors.
The doors of a room automatically lock (which means that other wizards will not be allowed to enter this room) when two people are in the room. The doors are unlocked otherwise.
A wizard can cast a spell on another wizard. If the spell is successful, the victim wizard freezes. A wizard can also cast a "wakeup" spell on a frozen wizard, which will bring the wizard back to life.
The wizards are organized in two competing teams. A team wins when all of the wizards of the opposing team are frozen. Once this happens, you must terminate all threads.

When two wizards are in a room at the same time many things may happen:
• If the two wizards are from opposite teams, they will engage in a magic fight, whose outcome is determined by a random function. Whoever loses the fight will freeze, possibly forever.
• If the two wizards are from the same team and they are both active, they will simply waste some (random) amount of time bragging about their adventures in the Cube. If one of the wizards is frozen, then his friend will try to unfreeze him using a wake up spell, whose outcome is determined by a random value.

I devoted a thread to interact with the user. The thread provides the user a prompt ("cube> ", to be precise), and the user can enter commands using that prompt. If the user types ‘s’, it will single-step through the game, only printing one move and then pausing for further input. If the user types ‘c’, it will continue to the end of the game only printing the resulting cube. In particular, once the cube is "initialized" with the players, the execution can be started using either the ‘s’ (single-step) or ‘c’ (continuous) command. When running in the single-step mode, the user can then interact with an ongoing game through the prompt by entering ‘show’: the user can request to print an ASCII representation of the game.

-size
The size of the cube
-seed
The seed used for random number generation
-teamA
The number of players for team A
-teamB
The number of players for team B

Sample of how a game could be started
$ ./cube –size 2 –seed 2 –teamA 1 –teamB 2
