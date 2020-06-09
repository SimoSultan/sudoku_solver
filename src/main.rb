require "tty-prompt"
prompt = TTY::Prompt.new

# requrie the classes
require_relative "./mods/services"
require_relative "./mods/view"

# instatiate the class
view = View.new()
services = Services.new()

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

# generate a prompt for the user to select which sudoku they would like to see solved
# selects the string
sudoku_str = prompt.select("Choose your sudoku?", sudokus, per_page: 4)

puts
puts "Here is your sudoku!"
puts

# generate the grid
grid_arr = services.generate_grid(sudoku_str)
# print the sudoku grid
view.print_sudoku(grid_arr)

