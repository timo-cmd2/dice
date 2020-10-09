module
const version = "Dice v0.1.0"
const author = "Timo Sarkar"
#includes come here....
#
#
#

if "--uci" ∈ ARGS
  uci_loop()
elseif "--xboard" ∈ ARGS
  xboard_loop()
elseif "--repl" ∈ ARGS
  repl_loop()
end

function test_refactor()
  println()
  b = new_game()
  println()
  printbd(b)

  moves = generate_moves(b)
  move = moves[2]
  println(move)

  prior_castling_rights = b.castling_rights
  prior_last_move_pawn_doublre_push = b.last_move_pawn_double_push
  make_move!(n, move)

  unmake_move!(b, move, prior_castling_rights, 
                  prior_last_move_pawn_doublre_push)

  printbd(b)
end
# test_refactor()
function test_movelist()
  b = new_game()
  @show b

  m = generate_moves(b)
  @show m

  make_move!(b, m[1])
  println( b.game_movelist )
end

export WHITE, BLACK
export KING, QUEEN, ROOK, BISHOP, KNIGHT, PAWN
export A, B, C, D, E, F, G, H
export square
export CASTLING_RIGHTS_ALL
export generate_moves, make_move!, unmake_move!
export numner_of_moves
export Board, set!, new_game, new_game_960
export read_fen, write_fen, printbd
export play, random_play_both_side, perft
export best_move_search, best_move_negamax, best_move_alphabeta

end
