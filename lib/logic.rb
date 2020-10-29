class Strings 

    def rules
        "
    Rules

1. The game shows a grid of 3 x 3 spaces with a number for every single available space.
2. Players take turns to choose between 1...9 options. There are 2 marks, X for player 1 and O for player 2.
3. When a player gets 3 marks in one line (row, column or diagonall), He is the WINNER.
4. The game ends with a DRAW when the whole grid is full and none players has a 3 marks in one line.
        "
    end
end

class Players

    def check_answer(user_answer)
        if %w[Y y].include?(user_answer) == true
            $game_on = true
        end
    end

    def check_input(user_input)
        true if user_input.between?(1,9)
    end
end

class Grid

    def initialize
        @grid = ["1", "2", "3", "4", "5", "6", "7", "8" , "9"]
    end

    def display_grid
        "
         #{@grid[0]} | #{@grid[1]} | #{@grid[2]} 
        -----------
         #{@grid[3]} | #{@grid[4]} | #{@grid[5]} 
        -----------
         #{@grid[6]} | #{@grid[7]} | #{@grid[8]}
        " 
    end
    
    def assigning_marks(user_input, n)
        user_input -= 1
        if n == 1
            @grid[user_input] = "X"
        else 
            @grid[user_input] = "O"
        end
    end

    def position_chosen(user_input)
        user_input -= 1
        if @grid[user_input] == "X" || @grid[user_input] == "O"
            false
        else true
        end
    end

    def draw
        @grid.all? {|item| %w[X O].include? item}
    end
    
end