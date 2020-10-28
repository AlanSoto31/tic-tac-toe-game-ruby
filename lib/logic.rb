class Game
    
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
end