# Write a function done_or_not passing a board (list[list_lines]) as parameter. If the board is valid return 'Finished!', otherwise return 'Try again!'

# Sudoku rules:

# Complete the Sudoku puzzle so that each and every row, column, and region contains the numbers one through nine only once.

# Rows:



# There are 9 rows in a traditional Sudoku puzzle. Every row must contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. There may not be any duplicate numbers in any row. In other words, there can not be any rows that are identical.

# In the illustration the numbers 5, 3, 1, and 2 are the "givens". They can not be changed. The remaining numbers in black are the numbers that you fill in to complete the row.

# Columns:



# There are 9 columns in a traditional Sudoku puzzle. Like the Sudoku rule for rows, every column must also contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. Again, there may not be any duplicate numbers in any column. Each column will be unique as a result.

# In the illustration the numbers 7, 2, and 6 are the "givens". They can not be changed. You fill in the remaining numbers as shown in black to complete the column.

# Regions



# A region is a 3x3 box like the one shown to the left. There are 9 regions in a traditional Sudoku puzzle.

# Like the Sudoku requirements for rows and columns, every region must also contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. Duplicate numbers are not permitted in any region. Each region will differ from the other regions.

# In the illustration the numbers 1, 2, and 8 are the "givens". They can not be changed. Fill in the remaining numbers as shown in black to complete the region.



def done_or_not(board)
 validate = rows(board) && columns(board) && regions(board)
 if validate
   "Finished!"
 else
   "Try again!"
 end
end

def check_unique(block)
   check_array = block.uniq
   if check_array.count == 9
     result = true
   else
     result = false
   end
 return result
end

def rows(board)
 result = ''
 board.each do |int|
   check_unique(int)
   if check_unique(int) == false
     result = false
   end
 end
if result.nil?
 result = true
end
return result
end

def columns(board)
 for index_variable in 0..8
   column_array = board.map {|column| column[index_variable]}
   result = check_unique(column_array)
    if check_unique(column_array) == false
      result = false
    end
 end
if result.nil?
 result = true
end
return result
end

def regions(board)
 result = ''
region_loop = [[0,0], [0,3], [0,6],
              [3,0], [3,3], [3,6],
              [6,0], [6,3], [6,6]]

 region_loop.each do |x, y|
   regionx = []
   x_iter = 0
   3.times do
     y_iter = 0
     3.times do
       regionx << board[x + x_iter][y + y_iter]
       y_iter += 1
     end
     x_iter += 1
   end
   check_unique(regionx)
   if check_unique(regionx) == false
     result = false
   end
 end  # end for region_loop
 if result.nil?
   result = true
 end
 return result
end
