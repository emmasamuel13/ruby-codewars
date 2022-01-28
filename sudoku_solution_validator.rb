#Write a function that accepts a 2D array representing a Sudoku board, and returns true if it is a valid solution, or false otherwise.
#The cells of the sudoku board may also contain 0's, which will represent empty cells. Boards containing one or more zeroes are considered to be invalid solutions.
#The board is always 9 cells by 9 cells, and every cell only contains integers from 0 to 9.

def validSolution(board)
    ordered = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    line_0 = []
    line_1 = []
    line_2 = []
    line_3 = []
    line_4 = []
    line_5 = []
    line_6 = []
    line_7 = []
    line_8 = []

    square_0 = []
    square_1 = []
    square_2 = []
    square_3 = []
    square_4 = []
    square_5 = []
    square_6 = []
    square_7 = []
    square_8 = []

    board.each do |line|
        unless line.sort == ordered
            return false
        end
        line.each_with_index do |number, ind|
            if ind == 0
                line_0 << number
            elsif ind == 1
                line_1 << number
            elsif ind == 2
                line_2 << number
            elsif ind == 3
                line_3 << number
            elsif ind == 4
                line_4 << number
            elsif ind == 5
                line_5 << number
            elsif ind == 6
                line_6 << number
            elsif ind == 7
                line_7 << number
            else
                line_8 << number
            end
        end
    end
    unless line_0.sort == ordered && line_1.sort == ordered && line_2.sort == ordered && line_3.sort == ordered && line_4.sort == ordered && line_5.sort == ordered && line_6.sort == ordered && line_7.sort == ordered && line_8.sort == ordered
        return false
    end
    
    board.each_with_index do |row, ind|
        if ind == 0 || ind == 1 || ind == 2
            row.each_with_index do |number, index|
                if index == 0 || index == 1 || index == 2
                    square_0 << number
                elsif index == 3 || index == 4 || index == 5
                    square_1 << number
                else
                    square_2 << number
                end
            end
        elsif ind == 3 || ind == 4 || ind == 5
            row.each_with_index do |number, index|
                if index == 0 || index == 1 || index == 2
                    square_3 << number
                elsif index == 3 || index == 4 || index == 5
                    square_4 << number
                else
                    square_5 << number
                end
            end
        else
            row.each_with_index do |number, index|
                if index == 0 || index == 1 || index == 2
                    square_6 << number
                elsif index == 3 || index == 4 || index == 5
                    square_7 << number
                else
                    square_8 << number
                end
            end
        end
    end
    
    if square_0.sort == ordered && square_1.sort == ordered && square_2.sort == ordered && square_3.sort == ordered && square_4.sort == ordered && square_5.sort == ordered && square_6.sort == ordered && square_7.sort == ordered && square_8.sort == ordered
        return true
    else
        return false
    end
end

puts validSolution([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
       [6, 7, 2, 1, 9, 5, 3, 4, 8],
       [1, 9, 8, 3, 4, 2, 5, 6, 7],
       [8, 5, 9, 7, 6, 1, 4, 2, 3],
       [4, 2, 6, 8, 5, 3, 7, 9, 1],
       [7, 1, 3, 9, 2, 4, 8, 5, 6],
       [9, 6, 1, 5, 3, 7, 2, 8, 4],
       [2, 8, 7, 4, 1, 9, 6, 3, 5],
       [3, 4, 5, 2, 8, 6, 1, 7, 9]])
              
puts validSolution([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
       [6, 7, 2, 1, 9, 0, 3, 4, 9],
       [1, 0, 0, 3, 4, 2, 5, 6, 0],
       [8, 5, 9, 7, 6, 1, 0, 2, 0],
       [4, 2, 6, 8, 5, 3, 7, 9, 1],
       [7, 1, 3, 9, 2, 4, 8, 5, 6],
       [9, 0, 1, 5, 3, 7, 2, 1, 4],
       [2, 8, 7, 4, 1, 9, 6, 3, 5],
       [3, 0, 0, 4, 8, 1, 1, 7, 9]])
