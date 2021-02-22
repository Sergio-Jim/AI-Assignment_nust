# AI
Artificial Intelligence School Assignment based on 3 problems

PROBLEM 1:
Write a program in Julia that uses a combination of forward-checking and propagation to solve a
constraint satisfaction problem.
Your program will accept the following input:
• the variables in the constraint network and their domain;
• the constraints placed on those variables.
The program will display the reduced domains during the forward checking and propagation steps
as well as the successful assignment when there is one. In case there is no solution, the program
will display a text indicating that.

PROMBLEM 2:
nelow is an example of a simultaneous game with strategies a and b for Player1 and c and d for
Player2.
Table 1: Simultaneous Game
               Player2
              c        d
Player1
a         (3, −2)   (2, 3)
b           (2, 2)   (5, 0)

Write a program in Julia that accepts a simultaneous game as input and returns for each player:
• the strictly dominant strategies;
• the weakly dominant strategies;
• the dominated strategies.
The program will also display, when possible, the dominant equilibrium.

PROBLEM 3:
Consider the blocks world. The blocks can be on a table or in a box. Consider three generic actions:
a0, a1 and a2 described as follows:
a0 : when applied to a block, will keep it in the box;
a1 : when applied to a block, will move it on the table;
a2 : when applied to two blocks, will move the first one on top of the second one.
Consider the following four states in the system:
S0 : all blocks are in the box, no block is on the table;
S1 : only block B is on the table, all other blocks are in the box;
S2 : both blocks B and C are on the table, with C on top of B;
S3 : blocks B, C and D are on the table, with D on top of C and C on top of B.
Furthermore, additional information is provided in Table 2, where each state has a reward, possible
actions and a transition model for each action. Note that for a given action, the probability values
indicated in its transition model all sum up to 1.

Table 2: Additional information
VIEW IN REPOSITORY

We wish to model this problem as an MDP1 and consider a discount value σ. Write a program
in Julia that accepts as input the description of the MDP, including its parameters (e.g., reward
value for each state, discount and probability distribution for each transition model). The program
will return the optimal policy using the value iteration algorithm.
