# create a new board
# board = makeBoard(10, 10, 0)
function makeBoard(height, width, default_value)
  fill!(zeros(typeof(default_value), height, width), default_value)
end

# move pieces around
# movePiece(board, 3, 5, 8, 8)
