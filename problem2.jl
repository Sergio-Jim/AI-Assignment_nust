#Install Games.jl package
# using Pkg; Pkg.add("https://github.com/QuantEcon/Games.jl")
using Games
using Printf

g_Player = NormalFormGame((2, 2))
g_Player[1, 1] = [3, -2]#Both Confess
g_Player[1, 2] = [2, 3]#Player 1 confesses player 2 lies
g_Player[2, 1] = [2, 2]#Player 1 lies, player 2 confesses
g_Player[2, 2] = [5, 0]#Both lie

#g_Player #2×2 NormalFormGame{2,Float64}


g_Player.players[1].payoff_array
g_Player.players[2].payoff_array

#player1 = Player([3 2; 2 5])
#player2 = Player([-2 3; 2 0]);
player1 = Player(g_Player.players[1])
player2 = Player(g_Player.players[2])



println("player 1: ", player1)
println("player 2: ", player2)

#equilibrium
function printNash(g:: NormalFormGame)
    NEs = pure_nash(g)
    num_NEs = length(NEs)
    if num_NEs == 0
        msg = "no pure Nash equilibrium"#add code to show dominated strategy
    elseif num_NEs == 1
        msg = "1 pure Nash equilibrium:\n$(NEs[1])"
    else
        msg = "$num_NEs pure Nash equilibria:\n"
        for (i, NE) in enumerate(NEs)
            i < num_NEs ? msg *= "$NE, " : msg *= "$NE"
        end
    end
    println(join(["The game has ", msg]))
end



printNash(g_Player)
println(best_response(g_Player.players[1], [0.5, 0.5], tie_breaking=:random))
println(is_best_response(g_Player.players[1], [0.5, 0.5], tie_breaking=:random))
