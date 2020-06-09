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
require_relative '../controllers/ParseSudoku'

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
        expect(puzzle.parse_sudoku('123456789123456789123456789123456789123456789123456789123456789123456789123456789'))
          .to eq(
            "-------------------------\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            "-------------------------\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            "-------------------------\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            "- 1 2 3 | 4 5 6 | 7 8 9 -\n" \
            '-------------------------'
          )
      end
    end
  end
end
