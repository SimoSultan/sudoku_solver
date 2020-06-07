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


  
  def parse_sudoku(puzzle_string)
    raise NotStringError if puzzle_string.class != String
    raise StringTooLong if puzzle_string.length > 81
    raise StringTooShort if puzzle_string.length < 81
    raise StringHasInvalidCharacters if !puzzle_string.match(/[^0-9]+/).nil?
    
    puzzle_string
  end
end

