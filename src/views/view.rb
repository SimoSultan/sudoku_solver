require 'io/console'
$terminal_width = IO.console.winsize[1] ## this gets the width of the terminal
$terminal_height = IO.console.winsize[0] ## this gets the height of the terminal

class SudokuView

  def show_header()
    system 'clear'
    title = 'WELCOME TO THE SUDOKU SOLVER OF'
    authors = 'xxKeefer & simo_sultan'
    puts '-' * $terminal_width
    puts
    puts ' ' * (($terminal_width-title.length)/2) + title
    puts ' ' * (($terminal_width-authors.length)/2) + authors
    puts
    puts '-' * $terminal_width
  end

  # print the grid, given an array of strings
  def print_sudoku(grid_arr)
    puts grid_arr
  end

  def continue_loop?

    puts "Do you want to play again? y/n (this text will change)"
    print "=> "; resp = gets.strip.downcase[0]
    return false if resp == 'n'
    return true
  end

  def solve_this_sudoku?
    puts
    puts "Is this the Sudoku you wish to solve? y/n"
    # print "=> "; resp = gets.strip.downcase[0]
    print "=> "; resp = gets.strip
    # print "=> "; name = gets.strip
    return false if resp == 'n'
    return true
  end

  # def press_any_key
  #   puts
  #   puts "Press any key to continue"
  #   gets
  # end

end


# ---------------------------------------||
# || 1 | 2 | 1 || 2 | 1 | 2 || 1 | 2 | 1 ||
# || 1 | 2 | 1 || 2 | 1 | 2 || 1 | 2 | 1 ||
# || 1 | 2 | 1 || 2 | 1 | 2 || 1 | 2 | 1 ||
# ---------------------------------------||
# || 1 | 2 | 1 || 2 | 1 | 2 || 1 | 2 | 1 ||
# || 1 | 2 | 1 || 2 | 1 | 2 || 1 | 2 | 1 ||
# || 1 | 2 | 1 || 2 | 1 | 2 || 1 | 2 | 1 ||
# ---------------------------------------||
# || 1 | 2 | 1 || 2 | 1 | 2 || 1 | 2 | 1 ||
# || 1 | 2 | 1 || 2 | 1 | 2 || 1 | 2 | 1 ||
# || 1 | 2 | 1 || 2 | 1 | 2 || 1 | 2 | 1 ||
# ---------------------------------------||




# -------------------------
# - 1 2 3 | 4 5 6 | 7 8 9 -
# - 1 2 3 | 4 5 6 | 7 8 9 -
# - 1 2 3 | 4 5 6 | 7 8 9 -
# -------------------------
# - 1 2 3 | 4 5 6 | 7 8 9 -
# - 1 2 3 | 4 5 6 | 7 8 9 -
# - 1 2 3 | 4 5 6 | 7 8 9 -
# -------------------------
# - 1 2 3 | 4 5 6 | 7 8 9 -
# - 1 2 3 | 4 5 6 | 7 8 9 -
# - 1 2 3 | 4 5 6 | 7 8 9 -
# -------------------------


# ---------------------------------
# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# ---------------------------------
# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# ---------------------------------
# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# ---------------------------------




# _________________________________

# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# _________________________________

# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# _________________________________

# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# 1  2  3  |  4  5  6 |  7  8  9  |
# _________________________________