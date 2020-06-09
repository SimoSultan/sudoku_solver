
class Solver
  # given a string, turn it into the sudoku grid
  # return the grid (which is an array of strings again, with formatting)
  # def generate_grid(sudoku_str)
  #   arr = sudoku_str.chars
  #   formatted_arr= []
  #   row1 = "-"; row2 = "-"; row3 = "-"; row4 = "-"; row5 = "-";
  #   row6 = "-"; row7 = "-"; row8 = "-"; row9= "-";

  #   arr.each.with_index do |num,i|
  #     if i < 9 
  #       row1 += " #{num} " if i < 9 
  #       row1 += "-" if i == 8
  #       row1 += " | " if i == 2 or i == 5
  #     elsif i < 18
  #       row2 += " #{num} "
  #       row2 += "-" if i == 17 
  #       row2 += " | " if i == 11 or i == 14
  #     elsif i < 27
  #       row3 += " #{num} "
  #       row3 += "-" if i ==26
  #       row3 += " | " if i == 20 or i == 23
  #     elsif i < 36
  #       row4 += " #{num} "
  #       row4 += "-" if i == 35 
  #       row4 += " | " if i == 29 or i == 32
  #     elsif i < 45
  #       row5 += " #{num} "
  #       row5 += "-" if i == 44
  #       row5 += " | " if i == 38 or i == 41
  #     elsif i < 54
  #       row6 += " #{num} "
  #       row6 += "-" if i == 53
  #       row6 += " | " if i == 47 or i == 50
  #     elsif i < 63
  #       row7 += " #{num} "
  #       row7 += "-" if i == 62
  #       row7 += " | " if i == 56 or i == 59
  #     elsif i < 72
  #       row8 += " #{num} "
  #       row8 += "-" if i == 71
  #       row8 += " | " if i == 65 or i == 68
  #     elsif i < 81
  #       row9 += " #{num} "
  #       row9 += "-" if i == 80
  #       row9 += " | " if i == 74 or i == 77
  #     end
  #   end

  #   return formatted_arr.push(row1, row2, row3, row4, row5, row6, row7, row8, row9)
  # end

  def solve_sudoku(grid_arr)
    solved_sudoku_grid_arr = grid_arr
    return solved_sudoku_grid_arr
  end
end

