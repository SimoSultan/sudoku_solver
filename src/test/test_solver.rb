# frozen_string_literal: true

# given a text file

#   if not string err
#
#   if string less than 81 chars return err
#
#   if string more than 81 chars return err
#
#   if string contains non numbers return err
#
#   else display formated string

require 'rspec/autorun'
require_relative '../classes/ParseSudoku'

describe ParseSudoku do
  before(:each) do
    puzzle = ParseSudoku.new
  end
  context 'Input is not a valid Sudoku String.' do
    it 'input is nothing' do
      expect(puzzle.parse_sudoku).to raise_error(NotStringError)
    end
    it 'input is nil' do
      expect(puzzle.parse_sudoku(nil)).to raise_error(NotStringError)
    end
    it 'input is integer' do
      expect(puzzle.parse_sudoku(123)).to raise_error(NotStringError)
    end
    it 'input is float' do
      expect(puzzle.parse_sudoku(12.3)).to raise_error(NotStringError)
    end
    it 'input is boolean, true' do
      expect(puzzle.parse_sudoku).to raise_error(NotStringError)
    end
    it 'input is boolean, false' do
      expect(puzzle.parse_sudoku).to raise_error(NotStringError)
    end
  end
end
