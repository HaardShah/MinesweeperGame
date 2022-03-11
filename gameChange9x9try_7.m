% 1. A board of zeros, which is 9 rows by 9 columns will be displayed to
%    the user.

% 2. Next, the will be asked if they are ready and will be asked to type
%    yes if ready. If they press ready, the game will start. If the user
%    types in no, the program will stop running and will display a short
%    message saying thanks for coming! This will be done using conditional
%    loop.

% 3. The game will then generate a random board in the background, which
%    will not be displayed. In the generated board, "0" will be safe, "1"
%    act like a "mine". This number 1 will be randomly placed within the
%    9x9 game board using a for loop. There will be a selected number of
%    "1" in the board, lets say 4 of them.

% 4. The user will then be asked to select a row and a column to place
%    their "bet" on what specific place in the 9x9 board is safe, hence
%    they would want to select that. If their bet lands on a "0", they will
%    be displayed with a message saying "nice shot" or "safe". This can
%    also be randomised???

% 5. BUT, if their bet lands on "1", they will be displayed with a message
%    saying "oh no, mine detected!", or something like that. The game will
%    then end and another message will also be displayed again saying
%    "thank you for playing Minesweeper!"

% Hopeful creator of this game: Haard Shah :-)

clear;
clc;

% First the user will be asked whether they are ready to play Minesweeper.
disp("Now you will be asked if you would like to play the game,");
disp("please type in yes to continue, or no to end the game.");

askUser = input("Are you ready to play Minesweeper?: ",'s');
if askUser == "no"
    clc;
    disp("Thanks for considering coming here!");
elseif askUser == "yes"
    clc;
    disp("You will now be presented with your inital Minesweeper game board!");
    disp("The value of 0 represents safe.")
    gameBoard = zeros(9);
    disp(gameBoard);
end

clc

% Now the game board will be randomised, and an example will be shown to
% the user. This will give them an idea of the difficulty, and at the same
% time, the rules will be explained with visual representations.
randomisedGameBoardEg = randi([0 1],9,9);
disp(randomisedGameBoardEg);
fprintf('\n');
disp("Above you can see a randomised game board, you can expect a similar game board with");
disp("similar difficulty. The '1' acts as mines, and the '0' acts as safe.");
disp("You want to guess where the 0's are located. You will be given 3 shots!");

% Now the user will be asked if they are ready to play the game again.
ready = input("Are you ready to play?: ", 's');

if ready == "no"
    clc;
    disp("Thanks for coming so far!");
elseif ready == "yes"
    clc;
    disp("Great, lets go!");
end
    
clc;

disp("You will now be asked to enter your guess, remember, 3 shots.");
realGameBoard = randi([0 1], 9,9);

count = 3;
%realGameBoardArray = [];
disp("First you will be asked to enter the row, then the column.");
for i = 1:3
    sr = input("Please enter the row: ");
    sc = input("Please enter the column: ");
    %realGameBoardArray = [sr sc];
    
    %if realGameBoard(sr,sc) == '1'
    %    disp("You hit a mine! Game over.");
    %elseif realGameBoard(sr,sc) == '0'
    %    disp("Safe!");
    %end
    
    shot = realGameBoard(sr,sc);
    disp(shot);
    if shot == 1
        disp("You hit a mine!");
        disp("GAME OVER.");
        break
    elseif shot == 0
        count = count - 1;
        if count == 0
            disp("You won!");
            break
        end
        
        disp("You are safe, continue on your next turn!");
    end
    
    % use a while loop instead. 
    %while shot == 1
    %   disp("You hit a mine!");
    %    disp("GAME OVER.");
    %end
end
