# frozen_string_literal: true
# Sudoku String Parser
class ParseSudoku
  # Custom Errors
  class NotStringError < StandardError
    def message
      'Input was not a string.'
    end
  end
  class StringTooLong < StandardError
    def message
      'String is longer than 81 chracters.'
    end
  end
  class StringTooShort < StandardError
    def message
      'String is shorter than 81 chracters.'
    end
  end
  class StringHasInvalidCharacters < StandardError
    def message
      'String contains non numeric characters.'
    end
  end

  # Class Methods
  def parse_sudoku(puzzle_string)
    puzzle_string
    # puzzle_string.insert(3,"|")
    # puzzle_string.insert(-4,"|")
    # puzzle_string.insert(0,"-")
    # puzzle_string.insert(-1,"-")
    # puzzle_string.split(//).join(' ')
  end
end
