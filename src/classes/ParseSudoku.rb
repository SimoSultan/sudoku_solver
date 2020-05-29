class ParseSudoku
  def parse_sudoku(puzzle_string)
    puzzle_string.insert(3,"|")
    puzzle_string.insert(-4,"|")
    puzzle_string.insert(0,"-")
    puzzle_string.insert(-1,"-")
    puzzle_string.split(//).join(' ')
    
  end
end