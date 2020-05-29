# given a text file


=begin
  if not string err

  if string less than 81 chars return err

  if string more than 81 chars return err

  if string contains non numbers return err

  else display formated string
=end

require 'rspec/autorun'
require_relative '../classes/ParseSudoku'

describe ParseSudoku do
  it 'recieves a valid string' do
    puzzle = ParseSudoku.new

    expect(puzzle.parse_sudoku("123456789")).to eq("- 1 2 3 | 4 5 6 | 7 8 9 -")
  end
end
