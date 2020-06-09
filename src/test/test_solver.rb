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
  let(:puzzle) { ParseSudoku.new }

  describe '#parse_sudoku' do
    context 'when input not a string, ' do
      it 'recieves no input.' do
        expect { puzzle.parse_sudoku }.to raise_error(ArgumentError)
      end
      it 'input is nil.' do
        expect { puzzle.parse_sudoku(nil) }.to raise_error(ParseSudoku::NotStringError)
      end
      it 'input is integer.' do
        expect { puzzle.parse_sudoku(123) }.to raise_error(ParseSudoku::NotStringError)
      end
      it 'input is float.' do
        expect { puzzle.parse_sudoku(12.3) }.to raise_error(ParseSudoku::NotStringError)
      end
      it 'input is boolean, true.' do
        expect { puzzle.parse_sudoku(true) }.to raise_error(ParseSudoku::NotStringError)
      end
      it 'input is boolean, false.' do
        expect { puzzle.parse_sudoku(false) }.to raise_error(ParseSudoku::NotStringError)
      end
    end

    context 'when passed an invalid string, ' do
      it 'longer than 81 characters.' do
        expect { puzzle.parse_sudoku('123456789123456789123456789123456789123456789123456789123456789123456789123456789000') }
          .to raise_error(ParseSudoku::StringTooLong)
      end
      it 'shorter than 81 characters.' do
        expect { puzzle.parse_sudoku('123456789123456789123456789123456789123456789123456789123456789123456789123456') }
          .to raise_error(ParseSudoku::StringTooShort)
      end
      it 'contains non-numeric characters.' do
        expect { puzzle.parse_sudoku('wrong6789123456789123456789123456789123456789123456789123456789123456789123456789') }
          .to raise_error(ParseSudoku::StringHasInvalidCharacters)
      end
    end

    context 'when passed a valid string,' do
      it 'returns valid.' do
        expect(puzzle.parse_sudoku('123456789456789123789123456234567891567891234891234567678912345345678912912345678'))
          .to eq(
            "-------------------------\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            "- 4 5 6 | 7 8 9 | 1 2 3 -\n" \
            "- 7 8 9 | 1 2 3 | 4 5 6 -\n" \
            "-------------------------\n" \
            "- 2 3 4 | 5 6 7 | 8 9 1 -\n" \
            "- 5 6 7 | 8 9 1 | 2 3 4 -\n" \
            "- 8 9 1 | 2 3 4 | 5 6 7 -\n" \
            "-------------------------\n" \
            "- 6 7 8 | 9 1 2 | 3 4 5 -\n" \
            "- 3 4 5 | 6 7 8 | 9 1 2 -\n" \
            "- 9 1 2 | 3 4 5 | 6 7 8 -\n" \
            '-------------------------'
          )
      end
    end

    context 'when string not compliant with standard sudoku rules, ' do
      it 'rejects if a line has duplicates' do
        expect(puzzle.parse_sudoku('113456879456789123789123456234567891567891234891234567678912345345678912912345678'))
          .to raise_error(ParseSudoku::NotSudokuDuplicateInLine)
      end

      it 'rejects if a column has duplicates' do
        expect(puzzle.parse_sudoku('123456879156789123789123456234567891567891234891234567678912345345678912912345678'))
          .to raise_error(ParseSudoku::NotSudokuDuplicateInColumn)
      end

      it 'rejects if a column has duplicates' do
        expect(puzzle.parse_sudoku('123456879234567891345678912456789123567891234678912345789123456891234567912345678'))
          .to raise_error(ParseSudoku::NotSudokuDuplicateInBox)
      end
    end
  end
end
