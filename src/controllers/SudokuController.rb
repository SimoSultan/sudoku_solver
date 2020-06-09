require_relative "../models/solver.rb"
require_relative "../views/view.rb"
require_relative "ParseSudoku.rb"
require_relative "Player.rb"
require "tty-prompt"


class SudokuController

  def initialize()
    # instatiate the classes
    @solver = Solver.new()
    @view = SudokuView.new()
    @parse_sudoku = ParseSudoku.new()
  end

  def run(sudokus)
    # MAIN PROGRAM LOOP
    prompt = TTY::Prompt.new

    loop do
      @view.show_header()
      puts
      # generate a prompt for the user to select which sudoku they would like to see solved
      # selects the string
      sudoku_str = prompt.select("Choose your sudoku?", sudokus, per_page: 4)
 
      puts
      puts "Here is your printed sudoku!"
      puts

      # generate the grid
      grid_arr = @parse_sudoku.generate_grid(sudoku_str)
      # print the sudoku grid
      @view.print_sudoku(grid_arr)
      answer = @view.solve_this_sudoku?()
      # restart game loop if this isn't the sudoku they want to solve
      next if answer == false
      # else solve the sudoku
      puts 
      puts "Solving your sudoku..."
      solved_sudoku_grid_arr = @solver.solve_sudoku(grid_arr)
      sleep 2
      puts
      puts "Here is your solved sudoku!"
      puts

      # generate the solved grid
      @view.print_sudoku(solved_sudoku_grid_arr)
      puts
      if @view.continue_loop? == false
        puts
        puts "Thank you for using our solver."
        break
      end
    end
  end

end