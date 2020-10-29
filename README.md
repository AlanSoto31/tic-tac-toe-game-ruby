# tic-tac-toe-game-ruby

<h1 align="center">Tic-Tac-Toe Game</h1>

<p align="center">
  <strong>Project created by Alan Soto Valle and Mir Rawshan Ali </strong>
  <br>
  It was based on the project in the Ruby Module in Microverse
</p>

## Table of Contents
- [❌About Tic-Tac-Toe⭕](#about-tic-tac-toe)
- [📐 About The Project](#about-the-project)
- [📋 Game Rules](#game-rules)
- [📝 Game Instructions](#game-instructions)
- [![Ruby](Built With Ruby](#built-with)
- [🖥️ Setup for starting Tic Tac Toe](#setup-for-starting-tic-tac-toe)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [💻 Run Tic-Tac-Toe](#run-tic-tac-toe)
  - [Windows](#windows)
  - [Mac and Linux](#mac-and-linux)
- [👥 Authors](#authors)
- [🤝 Contributing](#-contributing)
- [⭐ Show your support](#show-your-support)

## about tic-tac-toe 
Tic-tac-toe is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner.



<hr>

## about the project
We created the game Tic Tac Toe using Ruby.

The game has a basic interface that runs in the terminal.

The goals of this project are:

- Practice with OOP (Object Oriented Programming) using Ruby.
- Learn how to create and structure a Ruby project.
- Learn to manage the files with correct usage to make code maintainable.
- Practice Git Flow and Github Flow creating branches for different features and for version control.
- This is part of the Odin project curriculum https://www.theodinproject.com/courses/ruby-programming/lessons/oop

## game-rules

- Two player game
- Player will have tokens or symbols (X or O)
- Players take turns choosing a cell of the board to mark their symbol.
- A player can only choose an empty cell if not will return an error until input is in an empty cell.
- The first player to complete a succession of 3 of their assigned symbol (O's or X's) in a row, column or diagonal wins!
- If all of the cells are filled with a symbol and no player matched 3 symbols, the game ends in a tie.

## game-instructions

Once you run the game on the terminal, follow the instructions and prompts on screen.
- Both players should enter their preferable name or nickname
- Then it will display your tokens (X or O) and the turns will go accordingly to first and second player
- After the board is displayed the player should input their token accordingly to the empty slot (1 to 9).

For example:
```
Figure 1.                   Figure 2.
[ ]  [ ]  [ ]               [X]  [ ]  [ ]
 1    2    3                 1    2    3
[ ]  [ ]  [ ]      -->      [ ]  [ ]  [ ]
 4    5    6                 4    5    6
[ ]  [ ]  [ ]               [ ]  [ ]  [ ]
 7    8    9                 7    8    9

Play starts with the player one and he has 9 options to put his  token.