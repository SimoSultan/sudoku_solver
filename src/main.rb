require_relative "./controllers/SudokuController.rb"

# clear the screen
system 'clear'

# turn text document into an array of strings that are 81 chars long
sudokus = []
File.open(ARGV[0]).each do |line|
  if line.include?("\r\n")
    line = line.delete_suffix("\r\n")
  end
  sudokus << line
end

@sudoku_controller = SudokuController.new()
@sudoku_controller.run(sudokus)








