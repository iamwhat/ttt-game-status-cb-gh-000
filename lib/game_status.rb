# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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

def won?(board)
  WIN_COMBINATIONS.each do |item|
    if board[item[0]] == board[item[1]] == board[item[2]]
      return true
    end
  end
  false
end

def full?(board)
  board.all? do |number|
    number=="X" or number=="O"
  end
end

def draw?(board)
  full?(board) and !won?(board)
end

def over?(board)
  won?(board) or full?(board) or draw?(board)
end
