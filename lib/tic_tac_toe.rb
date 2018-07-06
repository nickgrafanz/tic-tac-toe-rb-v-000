WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
end

def move(board, index, value)
  board[index] = value
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
false
  else board[index] == "X" || board[index] == "O"
true
  end
end

def valid_move?(board,index)
  if index.between?(0,8) && (board[index] == " " || board[index] == "")
    true
  else 
    false
  end
end

def turn(board)
  puts "Where do you want to go? 1-9"
  user_input = gets.strip
  input_to_index(user_input)
  return = index
  if position_taken?(board,index) && valid_move?(board,index) == true
    move(board,index,value)
  else turn(board)
  end
end
    