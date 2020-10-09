module Chess
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

