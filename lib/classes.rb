# rubocop:disable Metrics/CyclomaticComplexity,Metrics/PerceivedComplexity
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
    true if %w[Y].include?(user_answer) == true
  end

  def check_input(user_input)
    true if user_input.between?(1, 9)
  end
end

class Grid
  def initialize
    @grid = %w[1 2 3 4 5 6 7 8 9]
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

  def assigning_marks(user_input, player_number)
    user_input -= 1
    @grid[user_input] = if player_number == 1
                          'X'
                        else
                          'O'
                        end
  end

  def position_chosen(user_input)
    user_input -= 1
    if @grid[user_input] == 'X' || @grid[user_input] == 'O'
      false
    else true
    end
  end

  def draw
    @grid.all? { |item| %w[X O].include? item }
  end

  def winning
    # Rows
    @winn1 = @grid[0] == @grid[1] && @grid[1] == @grid[2]
    @winn2 = @grid[3] == @grid[4] && @grid[4] == @grid[5]
    @winn3 = @grid[6] == @grid[7] && @grid[7] == @grid[8]
    # Collumns
    @winn4 = @grid[0] == @grid[3] && @grid[3] == @grid[6]
    @winn5 = @grid[1] == @grid[4] && @grid[4] == @grid[7]
    @winn6 = @grid[2] == @grid[5] && @grid[5] == @grid[8]
    # Crosses
    @winn7 = @grid[0] == @grid[4] && @grid[4] == @grid[8]
    @winn8 = @grid[2] == @grid[4] && @grid[4] == @grid[6]

    true if @winn1 || @winn2 || @winn3 || @winn4 || @winn5 || @winn6 || @winn7 || @winn8
  end
end

# rubocop:enable Metrics/CyclomaticComplexity,Metrics/PerceivedComplexity
