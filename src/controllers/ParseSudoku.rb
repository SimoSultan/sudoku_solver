# frozen_string_literal: true

# Sudoku String Parser
class ParseSudoku
  # require_relative '../mods/services.rb'
  # @format = Services.new
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
    raise StringHasInvalidCharacters unless puzzle_string.match(/[^0-9]+/).nil?

    generate_grid(puzzle_string)
  end


  def generate_grid(sudoku_str)
    # splits string into array of lines, each line is an array of nine chars
    lines = sudoku_str.scan(/.{9}/).map(&:chars)

    lines.each do |line|
      line.insert(6, '|')
      line.insert(3, '|')
      line.insert(-1, '-')
      line.insert(0, '-')
      line.each_index { |i| line.insert(i, ' ') if i.odd? }
    end

    lines.map!(&:join)
    lines.insert(6, '-------------------------')
    lines.insert(3, '-------------------------')
    lines.insert(-1, '-------------------------')
    lines.insert(0, '-------------------------')
    lines.join("\n")

  end
end
