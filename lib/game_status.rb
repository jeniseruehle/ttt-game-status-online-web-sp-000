# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    if (board[win_combo[0]]) == "X" && (board[win_combo[1]]) == "X" && (board[win_combo[2]]) == "X"
      return win_combo
    elsif (board[win_combo[0]]) == "O" && (board[win_combo[1]]) == "O" && (board[win_combo[2]]) == "O"
      return win_combo
   end
  end
  false
end   

def full?(board)
  board.all? do |index| index == "X" || index == "O"
  end 
end 
  
def draw?(board)
  if !won?(board) && full?(board)
    return true 
  else
    return false 
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true 
  else 
    return false 
  end
end

def winner(board)
  index = won?(board)
  if index == false
    return nil
  elsif (board[index[0]]) == "X"
    return "X"
  else
    return "O"
  end
end  
    
    
    
  